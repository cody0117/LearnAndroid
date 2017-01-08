// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            iu, ic, lb

final class iw
    implements Runnable
{

    final lb a;
    final iu b;

    iw(iu iu1, lb lb)
    {
        b = iu1;
        a = lb;
        super();
    }

    public final void run()
    {
        synchronized (iu.a(b))
        {
            iu.b(b).a(a);
        }
    }
}
