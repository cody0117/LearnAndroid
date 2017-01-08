// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.wifidirect;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.net.wifi.p2p.WifiP2pManager;
import com.aadhk.restpos.KitchenActivity;

public class KitchenWiFiDirectBroadcastReceiver extends BroadcastReceiver
{

    private static KitchenActivity c;
    private WifiP2pManager a;
    private android.net.wifi.p2p.WifiP2pManager.Channel b;

    public KitchenWiFiDirectBroadcastReceiver(WifiP2pManager wifip2pmanager, android.net.wifi.p2p.WifiP2pManager.Channel channel, KitchenActivity kitchenactivity)
    {
        a = wifip2pmanager;
        b = channel;
        c = kitchenactivity;
    }

    public void onReceive(Context context, Intent intent)
    {
        while (!"android.net.wifi.p2p.CONNECTION_STATE_CHANGE".equals(intent.getAction()) || a == null || !((NetworkInfo)intent.getParcelableExtra("networkInfo")).isConnected()) 
        {
            return;
        }
        a.requestConnectionInfo(b, c);
    }
}
