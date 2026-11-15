package com.sunelan.netspeed;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

/**
 * Attaches the speed view to the status bar icon container, before the battery view.
 * <p>
 * The battery view lives in {@code res/layout/system_icons.xml}, whose root LinearLayout is
 * included from {@code res/layout/status_bar.xml} in the right side container. Inserting the
 * speed view into that same LinearLayout means it automatically follows the battery when the
 * battery percentage setting changes the battery width.
 */
final class SpeedBar {

    private static final String ICON_CONTAINER_ID = "system_icons";

    private SpeedBar() {
    }

    static void attach(View battery) {
        if (battery == null) {
            return;
        }
        ViewParent rawParent = battery.getParent();
        if (!(rawParent instanceof ViewGroup)) {
            Log.i(NetspeedModule.TAG, "attach skipped: parent=" + rawParent);
            return;
        }
        ViewGroup group = (ViewGroup) rawParent;

        int containerId = group.getResources()
                .getIdentifier(ICON_CONTAINER_ID, "id", "com.android.systemui");
        if (containerId == 0 || group.getId() != containerId) {
            // Not the status bar icon container (keyguard, quick settings, ...): ignore.
            Log.i(NetspeedModule.TAG, "attach skipped: group id 0x"
                    + Integer.toHexString(group.getId())
                    + " != system_icons 0x" + Integer.toHexString(containerId));
            return;
        }
        for (int i = 0; i < group.getChildCount(); i++) {
            if (group.getChildAt(i) instanceof NetSpeedView) {
                return;
            }
        }

        NetSpeedView speedView = new NetSpeedView(battery.getContext());
        int index = group.indexOfChild(battery);
        if (index < 0) {
            index = group.getChildCount();
        }
        group.addView(speedView, index,
                new ViewGroup.LayoutParams(
                        ViewGroup.LayoutParams.WRAP_CONTENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT));
        Log.i(NetspeedModule.TAG, "speed view inserted at index " + index + " of " + group);
    }
}
