// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.wifidirect;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.p2p.WifiP2pDevice;
import android.net.wifi.p2p.WifiP2pManager;
import com.aadhk.restpos.WiFiDirectActivity;

public class WiFiDirectBroadcastReceiver extends BroadcastReceiver
{

    private static WiFiDirectActivity c;
    private WifiP2pManager a;
    private android.net.wifi.p2p.WifiP2pManager.Channel b;

    public WiFiDirectBroadcastReceiver(WifiP2pManager wifip2pmanager, android.net.wifi.p2p.WifiP2pManager.Channel channel, WiFiDirectActivity wifidirectactivity)
    {
        a = wifip2pmanager;
        b = channel;
        c = wifidirectactivity;
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if (!"android.net.wifi.p2p.STATE_CHANGED".equals(s)) goto _L2; else goto _L1
_L1:
        int i = intent.getIntExtra("wifi_p2p_state", -1);
        if (i == 2)
        {
            c.b(true);
        } else
        {
            c.b(false);
        }
        (new StringBuilder("P2P state changed - ")).append(i);
_L4:
        return;
_L2:
        if (!"android.net.wifi.p2p.PEERS_CHANGED".equals(s))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (a == null) goto _L4; else goto _L3
_L3:
        a.requestPeers(b, c);
        return;
        if (!"android.net.wifi.p2p.THIS_DEVICE_CHANGED".equals(s)) goto _L4; else goto _L5
_L5:
        c.b((WifiP2pDevice)intent.getParcelableExtra("wifiP2pDevice"));
        return;
    }
}
