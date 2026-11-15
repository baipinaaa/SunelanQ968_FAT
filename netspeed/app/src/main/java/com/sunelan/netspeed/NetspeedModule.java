package com.sunelan.netspeed;

import android.content.Context;
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
 */
public class NetspeedModule extends XposedModule {

    static final String TAG = "NetSpeed";
    private static final String SYSTEMUI_PKG = "com.android.systemui";
    private static final String BATTERY_CLASS = "com.android.systemui.battery.BatteryMeterView";

    @Override
    public void onPackageLoaded(XposedModuleInterface.PackageLoadedParam param) {
        if (!SYSTEMUI_PKG.equals(param.getPackageName())) {
            return;
        }
        ClassLoader cl = param.getDefaultClassLoader();
        try {
            Class<?> battery = Class.forName(BATTERY_CLASS, false, cl);
            if (hookAttachCallback(battery)) {
                return;
            }
            hookConstructors(battery);
        } catch (Throwable t) {
            log(Log.ERROR, TAG, "failed to hook " + BATTERY_CLASS, t);
        }
    }

    private boolean hookAttachCallback(Class<?> battery) {
        final Method attach;
        try {
            attach = battery.getDeclaredMethod("onAttachedToWindow");
        } catch (NoSuchMethodException e) {
            return false;
        }
        hook(attach).intercept(chain -> {
            Object result = chain.proceed();
            try {
                SpeedBar.attach((View) chain.getThisObject());
            } catch (Throwable t) {
                log(Log.WARN, TAG, "attach failed", t);
            }
            return result;
        });
        log(Log.INFO, TAG, "hooked " + BATTERY_CLASS + ".onAttachedToWindow()");
        return true;
    }

    private void hookConstructors(Class<?> battery) {
        try {
            Constructor<?> ctor = battery.getDeclaredConstructor(Context.class, AttributeSet.class);
            hook(ctor).intercept(chain -> {
                Object created = chain.proceed();
                postAttach(created);
                return created;
            });
            log(Log.INFO, TAG, "hooked " + BATTERY_CLASS + " constructor (context, attrs)");
            return;
        } catch (NoSuchMethodException ignored) {
            // fall through
        }
        try {
            Constructor<?> ctor = battery.getDeclaredConstructor(Context.class, AttributeSet.class, int.class);
            hook(ctor).intercept(chain -> {
                Object created = chain.proceed();
                postAttach(created);
                return created;
            });
            log(Log.INFO, TAG, "hooked " + BATTERY_CLASS + " constructor (context, attrs, style)");
        } catch (Throwable t) {
            log(Log.ERROR, TAG, "no usable BatteryMeterView constructor", t);
        }
    }

    private void postAttach(Object created) {
        if (!(created instanceof View)) {
            return;
        }
        final View view = (View) created;
        view.post(() -> {
            try {
                SpeedBar.attach(view);
            } catch (Throwable t) {
                log(Log.WARN, TAG, "attach failed", t);
            }
        });
    }
}
