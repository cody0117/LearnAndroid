// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.android.gms.tagmanager:
//            bc

class w
{

    static Map a = new HashMap();
    private static String b;

    w()
    {
    }

    static void a(Context context, String s)
    {
        bc.a(context, "gtm_install_referrer", "referrer", s);
        b(context, s);
    }

    static void a(String s)
    {
        com/google/android/gms/tagmanager/w;
        JVM INSTR monitorenter ;
        b = s;
        com/google/android/gms/tagmanager/w;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        com/google/android/gms/tagmanager/w;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static void b(Context context, String s)
    {
        String s1 = Uri.parse((new StringBuilder("http://hostname/?")).append(s).toString()).getQueryParameter("conv");
        if (s1 != null && s1.length() > 0)
        {
            a.put(s1, s);
            bc.a(context, "gtm_click_referrers", s1, s);
        }
    }

}
