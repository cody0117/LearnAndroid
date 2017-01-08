// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            jc, fj, mg, mi, 
//            lq

final class jf
    implements Runnable
{

    final jc a;

    jf(jc jc1)
    {
        a = jc1;
        super();
    }

    public final void run()
    {
label0:
        {
            synchronized (jc.a(a))
            {
                if (jc.c(a).e == -2)
                {
                    break label0;
                }
            }
            return;
        }
        jc.d(a).f().a(a);
        if (jc.c(a).e != -3)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        (new StringBuilder("Loading URL in WebView: ")).append(jc.c(a).b);
        jc.d(a).loadUrl(jc.c(a).b);
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        jc.d(a).loadDataWithBaseURL(lq.a(jc.c(a).b), jc.c(a).c, "text/html", "UTF-8", null);
          goto _L1
    }
}
