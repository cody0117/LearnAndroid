// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.c;

import android.app.Activity;
import android.net.DhcpInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.format.Formatter;
import java.net.InetAddress;

public final class m
{

    public static boolean a(Activity activity, String s)
    {
        WifiManager wifimanager = (WifiManager)activity.getSystemService("wifi");
        WifiInfo wifiinfo = wifimanager.getConnectionInfo();
        DhcpInfo dhcpinfo = wifimanager.getDhcpInfo();
        String s1 = Formatter.formatIpAddress(wifiinfo.getIpAddress());
        String s2 = Formatter.formatIpAddress(dhcpinfo.netmask);
        InetAddress inetaddress = InetAddress.getByName(s1);
        InetAddress inetaddress1 = InetAddress.getByName(s);
        InetAddress inetaddress2 = InetAddress.getByName(s2);
        byte abyte0[] = inetaddress.getAddress();
        byte abyte1[] = inetaddress1.getAddress();
        byte abyte2[] = inetaddress2.getAddress();
        for (int i = 0; i < abyte0.length; i++)
        {
            if ((abyte0[i] & abyte2[i]) != (abyte1[i] & abyte2[i]))
            {
                return false;
            }
        }

        return true;
    }
}
