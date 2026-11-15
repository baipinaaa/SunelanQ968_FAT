package com.sunelan.netspeed;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

import io.github.libxposed.api.XposedModule;
import io.github.libxposed.api.XposedModuleInterface;

/**
 * Entry point of the module. Runs inside com.android.systemui and inserts the network speed
 * view right before the BatteryMeterView in the status bar icon container.
 * <p>
 * BatteryMeterView does not override {@code onAttachedToWindow}, so the parent FrameLayout method
 * is hooked instead: at that point the view is really attached and {@code getParent()} is valid.
 */
public class NetspeedModule extends XposedModule {

    static final String TAG = "NetSpeed";
    static final String ACTION_REFRESH = "com.sunelan.netspeed.ACTION_REFRESH";

    private static Context appContext;
    private static BroadcastReceiver refreshReceiver;
    private static final String SYSTEMUI_PKG = "com.android.systemui";
    private static final String BATTERY_CLASS = "com.android.systemui.battery.BatteryMeterView";

    @Override
    public void onPackageLoaded(XposedModuleInterface.PackageLoadedParam param) {
        if (!SYSTEMUI_PKG.equals(param.getPackageName())) {
            return;
        }
        ClassLoader cl = param.getDefaultClassLoader();
        // BatteryMeterView and FrameLayout both inherit onAttachedToWindow from View without
        // overriding it, so the declaring class is View: hook it and filter by class name.
        hookViewAttach(cl);
        hookBatteryConstructors(cl);
    }

    /**
     * SystemUI cannot be started by the module's own activity, so the activity broadcasts a refresh
     * request and this receiver answers it by collecting the statistics right away.
     */
    static void ensureRefreshReceiver(Context context) {
        if (refreshReceiver != null || context == null) {
            return;
        }
        Context app = context.getApplicationContext();
        appContext = app != null ? app : context;
        refreshReceiver = new BroadcastReceiver() {
            @Override
            public void onReceive(Context ctx, Intent intent) {
                StatsCollector.collectAsync(appContext);
            }
        };
        try {
            IntentFilter filter = new IntentFilter(ACTION_REFRESH);
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                appContext.registerReceiver(refreshReceiver, filter, Context.RECEIVER_EXPORTED);
            } else {
                appContext.registerReceiver(refreshReceiver, filter);
            }
            Log.i(TAG, "refresh receiver registered");
        } catch (Throwable t) {
            Log.w(TAG, "cannot register refresh receiver", t);
        }
    }

    private boolean hookViewAttach(ClassLoader cl) {
        final Method attach;
        try {
            Class<?> viewClass = Class.forName("android.view.View", false, cl);
            attach = viewClass.getDeclaredMethod("onAttachedToWindow");
        } catch (Throwable t) {
            log(Log.WARN, TAG, "View.onAttachedToWindow not hookable", t);
            return false;
        }
        hook(attach).intercept(chain -> {
            Object result = chain.proceed();
            Object self = chain.getThisObject();
            if (self instanceof View && isBatteryView((View) self)) {
                try {
                    SpeedBar.attach((View) self);
                } catch (Throwable t) {
                    log(Log.WARN, TAG, "attach failed", t);
                }
            }
            return result;
        });
        log(Log.INFO, TAG, "hooked View.onAttachedToWindow for " + BATTERY_CLASS);
        return true;
    }

    private static boolean isBatteryView(View view) {
        String name = view.getClass().getName();
        return BATTERY_CLASS.equals(name) || name.endsWith(".BatteryMeterView");
    }

    private void hookBatteryConstructors(ClassLoader cl) {
        try {
            Class<?> battery = Class.forName(BATTERY_CLASS, false, cl);
            Constructor<?> ctor = battery.getDeclaredConstructor(Context.class, AttributeSet.class);
            hook(ctor).intercept(chain -> {
                Object created = chain.proceed();
                postAttach(created);
                return created;
            });
            log(Log.INFO, TAG, "hooked " + BATTERY_CLASS + " constructor (context, attrs)");
        } catch (Throwable t) {
            log(Log.ERROR, TAG, "failed to hook " + BATTERY_CLASS, t);
        }
    }

    private void postAttach(Object created) {
        if (!(created instanceof View)) {
            return;
        }
        final View view = (View) created;
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() {
            @Override
            public void onViewAttachedToWindow(View v) {
                try {
                    SpeedBar.attach(v);
                } catch (Throwable t) {
                    log(Log.WARN, TAG, "attach failed", t);
                }
            }

            @Override
            public void onViewDetachedFromWindow(View v) {
                // nothing to do
            }
        });
    }
}
