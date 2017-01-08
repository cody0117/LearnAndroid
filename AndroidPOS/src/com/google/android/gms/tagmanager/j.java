// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

// Referenced classes of package com.google.android.gms.tagmanager:
//            k, b, be, bm, 
//            m, x, l, bo, 
//            az, bk, ay, ai, 
//            n, aj, o

public class j
{

    private static j g;
    private final o a;
    private final Context b;
    private final b c;
    private final ay d;
    private final ConcurrentMap e = new ConcurrentHashMap();
    private final bm f = new bm();

    private j(Context context, o o, b b1, ay ay1)
    {
        if (context == null)
        {
            throw new NullPointerException("context cannot be null");
        }
        b = context.getApplicationContext();
        d = ay1;
        a = o;
        c = b1;
        c.a(new k(this));
        c.a(new be(b));
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            b.registerComponentCallbacks(new m(this));
        }
    }

    public static j a(Context context)
    {
        com/google/android/gms/tagmanager/j;
        JVM INSTR monitorenter ;
        if (g != null)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        x.a();
        throw new NullPointerException();
        Exception exception;
        exception;
        com/google/android/gms/tagmanager/j;
        JVM INSTR monitorexit ;
        throw exception;
        g = new j(context, new l(), new b(new bo(context)), az.b());
        j j1 = g;
        com/google/android/gms/tagmanager/j;
        JVM INSTR monitorexit ;
        return j1;
    }

    static void a(j j1, String s)
    {
        for (Iterator iterator = j1.e.keySet().iterator(); iterator.hasNext(); ((bk)iterator.next()).a(s)) { }
    }

    public final void a()
    {
        d.a();
    }

    final boolean a(Uri uri)
    {
        this;
        JVM INSTR monitorenter ;
        ai ai1 = ai.a();
        if (!ai1.a(uri)) goto _L2; else goto _L1
_L1:
        String s;
        int i;
        s = ai1.d();
        i = n.a[ai1.b().ordinal()];
        i;
        JVM INSTR tableswitch 1 3: default 60
    //                   1 68
    //                   2 137
    //                   3 137;
           goto _L3 _L4 _L5 _L5
_L3:
        boolean flag = true;
_L9:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L4:
        Iterator iterator1 = e.keySet().iterator();
        while (iterator1.hasNext()) 
        {
            bk bk2 = (bk)iterator1.next();
            if (bk2.b().equals(s))
            {
                bk2.c();
                bk2.a();
            }
        }
          goto _L3
        Exception exception;
        exception;
        throw exception;
_L5:
        Iterator iterator = e.keySet().iterator();
_L7:
        bk bk1;
        while (iterator.hasNext()) 
        {
            bk1 = (bk)iterator.next();
            if (!bk1.b().equals(s))
            {
                continue; /* Loop/switch isn't completed */
            }
            ai1.c();
            bk1.c();
            bk1.a();
        }
          goto _L3
        if (bk1.d() == null) goto _L7; else goto _L6
_L6:
        bk1.c();
        bk1.a();
        if (true) goto _L7; else goto _L8
_L8:
          goto _L3
_L2:
        flag = false;
          goto _L9
    }
}
