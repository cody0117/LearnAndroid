// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.analytics.tracking.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

// Referenced classes of package com.google.analytics.tracking.android:
//            ServiceManager

class GANetworkReceiver extends BroadcastReceiver
{

    private final ServiceManager mManager;

    GANetworkReceiver(ServiceManager servicemanager)
    {
        mManager = servicemanager;
    }

    public void onReceive(Context context, Intent intent)
    {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()))
        {
            Bundle bundle = intent.getExtras();
            Boolean boolean1 = Boolean.FALSE;
            if (bundle != null)
            {
                boolean1 = Boolean.valueOf(intent.getExtras().getBoolean("noConnectivity"));
            }
            ServiceManager servicemanager = mManager;
            boolean flag;
            if (!boolean1.booleanValue())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            servicemanager.updateConnectivityStatus(flag);
        }
    }
}
