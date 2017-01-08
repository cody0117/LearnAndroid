// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import java.math.BigInteger;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.internal:
//            lq

public final class lj
{

    private static final Object a = new Object();
    private static String b;

    public static String a()
    {
        String s;
        synchronized (a)
        {
            s = b;
        }
        return s;
    }

    public static String a(Context context, String s, String s1)
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        if (b != null) goto _L2; else goto _L1
_L1:
        boolean flag = TextUtils.isEmpty(s);
        if (flag) goto _L2; else goto _L3
_L3:
        ClassLoader classloader;
        Class class1;
        classloader = context.createPackageContext(s1, 3).getClassLoader();
        class1 = Class.forName("com.google.ads.mediation.MediationAdapter", false, classloader);
        BigInteger biginteger;
        String as[];
        biginteger = new BigInteger(new byte[1]);
        as = s.split(",");
        BigInteger biginteger1;
        int i;
        biginteger1 = biginteger;
        i = 0;
_L8:
        if (i >= as.length) goto _L5; else goto _L4
_L4:
        if (lq.a(classloader, class1, as[i]))
        {
            biginteger1 = biginteger1.setBit(i);
        }
          goto _L6
        Throwable throwable;
        throwable;
        b = "err";
_L2:
        String s2 = b;
        obj;
        JVM INSTR monitorexit ;
        return s2;
_L5:
        b = String.format(Locale.US, "%X", new Object[] {
            biginteger1
        });
          goto _L2
        Exception exception;
        exception;
        throw exception;
_L6:
        i++;
        if (true) goto _L8; else goto _L7
_L7:
    }

}
