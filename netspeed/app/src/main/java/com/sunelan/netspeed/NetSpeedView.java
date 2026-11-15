package com.sunelan.netspeed;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Typeface;
import android.net.TrafficStats;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.TypedValue;
import android.view.View;

import java.util.Locale;

/**
 * Two line network speed indicator: upload on top with an up arrow right next to the number,
 * download below with a down arrow shifted a bit further right (so both arrows are staggered).
 */
public class NetSpeedView extends View {

    private static final int TEXT_COLOR = 0xE6FFFFFF;

    private final Paint textPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint arrowPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path arrowPath = new Path();
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final float density;
    private final float lineHeight;
    private final float arrowWidth;
    private final float textSize;

    private String upText = "0 kB/s";
    private String downText = "0 kB/s";
    private float upTextWidth;
    private float downTextWidth;
    private double rxBytesPerSecond;
    private double txBytesPerSecond;
    private long lastRx = -1L;
    private long lastTx = -1L;
    private long lastSampleAt;
    private int ticks;

    public NetSpeedView(Context context) {
        super(context);
        density = context.getResources().getDisplayMetrics().density;
        textSize = TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_SP, 9f,
                context.getResources().getDisplayMetrics());
        lineHeight = textSize * 1.18f;
        arrowWidth = textSize * 0.72f;

        textPaint.setColor(TEXT_COLOR);
        textPaint.setTextSize(textSize);
        textPaint.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));

        arrowPaint.setColor(TEXT_COLOR);
        arrowPaint.setStyle(Paint.Style.STROKE);
        arrowPaint.setStrokeWidth(Math.max(1f, textSize * 0.12f));
        arrowPaint.setStrokeCap(Paint.Cap.ROUND);
        arrowPaint.setStrokeJoin(Paint.Join.ROUND);

        setWillNotDraw(false);
    }

    private final Runnable ticker = new Runnable() {
        @Override
        public void run() {
            sample();
            invalidate();
            handler.postDelayed(this, 1000L);
        }
    };

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        handler.removeCallbacks(ticker);
        handler.post(ticker);
    }

    @Override
    protected void onDetachedFromWindow() {
        handler.removeCallbacks(ticker);
        super.onDetachedFromWindow();
    }

    private static final String WIDEST_TEXT = "1024 MB/s";

    private void sample() {
        long rx = TrafficStats.getTotalRxBytes();
        long tx = TrafficStats.getTotalTxBytes();
        long now = SystemClock.elapsedRealtime();
        if (lastRx >= 0 && now > lastSampleAt) {
            double seconds = (now - lastSampleAt) / 1000d;
            double rxNow = Math.max(0d, (rx - lastRx) / seconds);
            double txNow = Math.max(0d, (tx - lastTx) / seconds);
            rxBytesPerSecond = rxBytesPerSecond <= 0d ? rxNow : rxBytesPerSecond * 0.45d + rxNow * 0.55d;
            txBytesPerSecond = txBytesPerSecond <= 0d ? txNow : txBytesPerSecond * 0.45d + txNow * 0.55d;
            if (rxNow == 0d && rxBytesPerSecond < 256d) {
                rxBytesPerSecond = 0d;
            }
            if (txNow == 0d && txBytesPerSecond < 256d) {
                txBytesPerSecond = 0d;
            }
        }
        lastRx = rx;
        lastTx = tx;
        lastSampleAt = now;
        upText = formatSpeed(txBytesPerSecond);
        downText = formatSpeed(rxBytesPerSecond);
        upTextWidth = textPaint.measureText(upText);
        downTextWidth = textPaint.measureText(downText);
        if ((++ticks % 30) == 0) {
            StatsCollector.collectAsync(getContext());
        }
    }

    static String formatSpeed(double bytesPerSecond) {
        double kb = bytesPerSecond / 1024d;
        if (kb < 1000d) {
            return String.format(Locale.US, "%.0f kB/s", kb);
        }
        return String.format(Locale.US, "%.1f MB/s", kb / 1024d);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        upTextWidth = textPaint.measureText(upText);
        downTextWidth = textPaint.measureText(downText);
        // Reserve room for the widest possible value so the view never gets clipped and the
        // battery / other icons do not shift when the speed changes.
        float maxText = Math.max(textPaint.measureText(WIDEST_TEXT),
                Math.max(upTextWidth, downTextWidth));
        int desiredWidth = (int) Math.ceil(maxText + arrowWidth * 2.2f + density * 2f)
                + getPaddingLeft() + getPaddingRight();
        int desiredHeight = (int) Math.ceil(lineHeight * 2f) + getPaddingTop() + getPaddingBottom();
        if (MeasureSpec.getMode(heightMeasureSpec) == MeasureSpec.AT_MOST) {
            desiredHeight = Math.min(desiredHeight, MeasureSpec.getSize(heightMeasureSpec));
        }
        setMeasuredDimension(resolveSize(desiredWidth, widthMeasureSpec),
                resolveSize(desiredHeight, heightMeasureSpec));
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float left = getPaddingLeft();
        float top = getPaddingTop();
        float centerUp = top + lineHeight * 0.5f;
        float centerDown = top + lineHeight * 1.5f;
        float baseUp = centerUp - (textPaint.descent() + textPaint.ascent()) / 2f;
        float baseDown = centerDown - (textPaint.descent() + textPaint.ascent()) / 2f;

        canvas.drawText(upText, left, baseUp, textPaint);
        float upArrowX = left + upTextWidth + density * 1.0f;
        drawArrow(canvas, upArrowX, centerUp, true);

        canvas.drawText(downText, left, baseDown, textPaint);
        // Staggered: the down arrow sits a little to the right of the up arrow.
        float downArrowX = left + downTextWidth + density * 1.0f + arrowWidth * 0.85f;
        drawArrow(canvas, downArrowX, centerDown, false);
    }

    private void drawArrow(Canvas canvas, float x, float centerY, boolean up) {
        float height = lineHeight * 0.8f;
        float centerX = x + arrowWidth * 0.5f;
        float top = centerY - height * 0.5f;
        float bottom = centerY + height * 0.5f;
        float wing = arrowWidth * 0.34f;
        float head = height * 0.36f;
        arrowPath.reset();
        if (up) {
            arrowPath.moveTo(centerX, bottom);
            arrowPath.lineTo(centerX, top);
            arrowPath.moveTo(centerX - wing, top + head);
            arrowPath.lineTo(centerX, top);
            arrowPath.lineTo(centerX + wing, top + head);
        } else {
            arrowPath.moveTo(centerX, top);
            arrowPath.lineTo(centerX, bottom);
            arrowPath.moveTo(centerX - wing, bottom - head);
            arrowPath.lineTo(centerX, bottom);
            arrowPath.lineTo(centerX + wing, bottom - head);
        }
        canvas.drawPath(arrowPath, arrowPaint);
    }
}
