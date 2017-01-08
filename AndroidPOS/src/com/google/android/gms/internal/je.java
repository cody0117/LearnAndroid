// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            jc, jb, la

final class je
    implements Runnable
{

    final la a;
    final jc b;

    je(jc jc1, la la)
    {
        b = jc1;
        a = la;
        super();
    }

    public final void run()
    {
        synchronized (jc.a(b))
        {
            jc.b(b).a(a);
        }
    }
}
