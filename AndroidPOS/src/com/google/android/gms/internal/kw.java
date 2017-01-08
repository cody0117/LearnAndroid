// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.internal:
//            me, lq

public final class kw
{

    public final int a;
    public final boolean b;
    public final boolean c;
    public final String d;
    public final String e;
    public final boolean f = me.a();
    public final boolean g;
    public final boolean h;
    public final String i;
    public final String j;
    public final int k;
    public final int l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public final float q;
    public final int r;
    public final int s;
    public final double t;
    public final boolean u;
    public final boolean v;
    public final int w;

    public kw(Context context)
    {
        boolean flag = true;
        super();
        AudioManager audiomanager = (AudioManager)context.getSystemService("audio");
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        Locale locale = Locale.getDefault();
        PackageManager packagemanager = context.getPackageManager();
        TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
        Intent intent = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        a = audiomanager.getMode();
        boolean flag1;
        boolean flag2;
        int i1;
        if (a(packagemanager, "geo:0,0?q=donuts") != null)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        b = flag1;
        if (a(packagemanager, "http://www.google.com") != null)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        c = flag2;
        d = telephonymanager.getNetworkOperator();
        e = locale.getCountry();
        g = audiomanager.isMusicActive();
        h = audiomanager.isSpeakerphoneOn();
        i = locale.getLanguage();
        j = a(packagemanager);
        k = audiomanager.getStreamVolume(3);
        i1 = -2;
        if (lq.a(packagemanager, context.getPackageName(), "android.permission.ACCESS_NETWORK_STATE"))
        {
            NetworkInfo networkinfo = connectivitymanager.getActiveNetworkInfo();
            int j1;
            int k1;
            int l1;
            if (networkinfo != null)
            {
                i1 = networkinfo.getType();
            } else
            {
                i1 = -1;
            }
        }
        l = i1;
        m = telephonymanager.getNetworkType();
        n = telephonymanager.getPhoneType();
        o = audiomanager.getRingerMode();
        p = audiomanager.getStreamVolume(2);
        q = displaymetrics.density;
        r = displaymetrics.widthPixels;
        s = displaymetrics.heightPixels;
        if (intent != null)
        {
            j1 = intent.getIntExtra("status", -1);
            k1 = intent.getIntExtra("level", -1);
            l1 = intent.getIntExtra("scale", -1);
            t = (float)k1 / (float)l1;
            if (j1 != 2 && j1 != 5)
            {
                flag = false;
            }
            u = flag;
        } else
        {
            t = -1D;
            u = false;
        }
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            v = connectivitymanager.isActiveNetworkMetered();
            if (connectivitymanager.getActiveNetworkInfo() != null)
            {
                w = connectivitymanager.getActiveNetworkInfo().getDetailedState().ordinal();
                return;
            } else
            {
                w = -1;
                return;
            }
        } else
        {
            v = false;
            w = -1;
            return;
        }
    }

    private static ResolveInfo a(PackageManager packagemanager, String s1)
    {
        return packagemanager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(s1)), 0x10000);
    }

    private static String a(PackageManager packagemanager)
    {
        ResolveInfo resolveinfo = a(packagemanager, "market://details?id=com.google.android.gms.ads");
        if (resolveinfo != null) goto _L2; else goto _L1
_L1:
        ActivityInfo activityinfo;
        return null;
_L2:
        if ((activityinfo = resolveinfo.activityInfo) == null) goto _L1; else goto _L3
_L3:
        PackageInfo packageinfo;
        String s1;
        try
        {
            packageinfo = packagemanager.getPackageInfo(activityinfo.packageName, 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return null;
        }
        if (packageinfo == null) goto _L1; else goto _L4
_L4:
        s1 = (new StringBuilder()).append(packageinfo.versionCode).append(".").append(activityinfo.packageName).toString();
        return s1;
    }
}
