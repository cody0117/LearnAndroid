// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.internal.op;
import com.google.android.gms.internal.ph;
import com.google.android.gms.internal.qq;
import java.util.Arrays;
import java.util.Set;

// Referenced classes of package com.google.android.gms.common:
//            i, d, e

public final class f
{

    public static boolean a = false;
    public static boolean b = false;
    private static int c = -1;
    private static final Object d = new Object();

    public static int a(Context context)
    {
        boolean flag1;
        PackageManager packagemanager = context.getPackageManager();
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        PackageInfo packageinfo;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception1;
        PackageInfo packageinfo1;
        byte abyte0[];
        int j;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception2;
        ApplicationInfo applicationinfo;
        int k;
        byte abyte1[][];
        String s;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception3;
        PackageInfo packageinfo2;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception4;
        ApplicationInfo applicationinfo1;
        Bundle bundle;
        int l;
        ApplicationInfo applicationinfo2;
        if (!op.a)
        {
            try
            {
                context.getResources().getString(com.google.android.gms.R.string.common_google_play_services_unknown_issue);
            }
            catch (Throwable throwable) { }
        }
        if (op.a) goto _L2; else goto _L1
_L1:
        applicationinfo2 = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        applicationinfo1 = applicationinfo2;
_L10:
        bundle = applicationinfo1.metaData;
        if (bundle != null)
        {
            l = bundle.getInt("com.google.android.gms.version");
            if (l != 0x648278)
            {
                throw new IllegalStateException((new StringBuilder("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected 6587000 but found ")).append(l).append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />").toString());
            }
        } else
        {
            throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
        }
_L2:
        try
        {
            packageinfo = packagemanager.getPackageInfo("com.google.android.gms", 64);
        }
        // Misplaced declaration of an exception variable
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return 1;
        }
        if (!qq.b(packageinfo.versionCode)) goto _L4; else goto _L3
_L3:
        if (a())
        {
            k = 0;
        } else
        {
            k = 1;
        }
        abyte1 = new byte[3][];
        abyte1[0] = i.a[k];
        abyte1[1] = i.g[k];
        abyte1[2] = i.f[k];
        if (a(packageinfo, abyte1) == null)
        {
            return 9;
        }
        s = context.getPackageName();
        try
        {
            packageinfo2 = packagemanager.getPackageInfo(s, 64);
        }
        // Misplaced declaration of an exception variable
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception3)
        {
            (new StringBuilder("Could not get info for calling package: ")).append(s);
            return 9;
        }
        if (packageinfo2 != null) goto _L6; else goto _L5
_L5:
        flag1 = false;
_L8:
        if (flag1)
        {
            break; /* Loop/switch isn't completed */
        }
        (new StringBuilder("Calling package ")).append(packageinfo2.packageName).append(" signature invalid on Glass.");
        return 9;
_L6:
        boolean flag;
        if (a(packagemanager) || !a())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_289;
        }
        if (a(packageinfo2, true) != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        continue; /* Loop/switch isn't completed */
        if (a(packageinfo2, false) != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            continue; /* Loop/switch isn't completed */
        }
        a(packageinfo2, true);
        if (true) goto _L8; else goto _L7
_L4:
        if (qq.a(context))
        {
            if (a(packageinfo, i.a) == null)
            {
                return 9;
            }
        } else
        {
            try
            {
                packageinfo1 = packagemanager.getPackageInfo("com.android.vending", 64);
            }
            // Misplaced declaration of an exception variable
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception1)
            {
                return 9;
            }
            abyte0 = a(packageinfo1, i.a);
            if (abyte0 == null)
            {
                return 9;
            }
            if (a(packageinfo, new byte[][] {
    abyte0
}) == null)
            {
                return 9;
            }
        }
_L7:
        j = qq.a(0x648278);
        if (qq.a(packageinfo.versionCode) < j)
        {
            (new StringBuilder("Google Play services out of date.  Requires 6587000 but found ")).append(packageinfo.versionCode);
            return 2;
        }
        try
        {
            applicationinfo = packagemanager.getApplicationInfo("com.google.android.gms", 0);
        }
        // Misplaced declaration of an exception variable
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception2)
        {
            namenotfoundexception2.printStackTrace();
            return 1;
        }
        return applicationinfo.enabled ? 0 : 3;
        namenotfoundexception4;
        applicationinfo1 = null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    private static boolean a()
    {
        if (a)
        {
            return b;
        } else
        {
            return "user".equals(Build.TYPE);
        }
    }

    private static boolean a(PackageManager packagemanager)
    {
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        int j = c;
        if (j != -1) goto _L2; else goto _L1
_L1:
        PackageInfo packageinfo;
        byte abyte0[][];
        packageinfo = packagemanager.getPackageInfo("com.google.android.gms", 64);
        abyte0 = new byte[1][];
        abyte0[0] = i.E[1];
        if (a(packageinfo, abyte0) == null) goto _L4; else goto _L3
_L3:
        c = 1;
_L2:
        obj;
        JVM INSTR monitorexit ;
        Exception exception;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        return c != 0;
_L4:
        c = 0;
          goto _L2
        namenotfoundexception;
        c = 0;
          goto _L2
        exception;
        throw exception;
    }

    private static byte[] a(PackageInfo packageinfo, boolean flag)
    {
        if (packageinfo.signatures.length != 1)
        {
            return null;
        }
        byte abyte0[] = packageinfo.signatures[0].toByteArray();
        Set set;
        if (flag)
        {
            set = i.a();
        } else
        {
            set = i.b();
        }
        if (set.contains(abyte0))
        {
            return abyte0;
        }
        if (Log.isLoggable("GooglePlayServicesUtil", 2))
        {
            (new StringBuilder("Signature not valid.  Found: \n")).append(Base64.encodeToString(abyte0, 0));
        }
        return null;
    }

    private static transient byte[] a(PackageInfo packageinfo, byte abyte0[][])
    {
        if (packageinfo.signatures.length != 1)
        {
            return null;
        }
        byte abyte1[] = packageinfo.signatures[0].toByteArray();
        for (int j = 0; j < abyte0.length; j++)
        {
            byte abyte2[] = abyte0[j];
            if (Arrays.equals(abyte2, abyte1))
            {
                return abyte2;
            }
        }

        if (Log.isLoggable("GooglePlayServicesUtil", 2))
        {
            (new StringBuilder("Signature not valid.  Found: \n")).append(Base64.encodeToString(abyte1, 0));
        }
        return null;
    }

    public static void b(Context context)
    {
        int j;
        j = a(context);
        if (j == 0)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        j;
        JVM INSTR lookupswitch 4: default 52
    //                   1: 81
    //                   2: 81
    //                   3: 97
    //                   42: 90;
           goto _L1 _L2 _L2 _L3 _L4
_L3:
        break MISSING_BLOCK_LABEL_97;
_L1:
        android.content.Intent intent = null;
_L5:
        (new StringBuilder("GooglePlayServices not available due to error ")).append(j);
        if (intent == null)
        {
            throw new d(j);
        } else
        {
            throw new e(j, "Google Play Services not available", intent);
        }
_L2:
        intent = ph.b("com.google.android.gms");
          goto _L5
_L4:
        intent = ph.a();
          goto _L5
        intent = ph.a("com.google.android.gms");
          goto _L5
    }

    public static Resources c(Context context)
    {
        Resources resources;
        try
        {
            resources = context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return null;
        }
        return resources;
    }

    public static Context d(Context context)
    {
        Context context1;
        try
        {
            context1 = context.createPackageContext("com.google.android.gms", 3);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return null;
        }
        return context1;
    }

}
