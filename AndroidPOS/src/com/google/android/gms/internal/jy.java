// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            jx, jb, la

final class jy
    implements Runnable
{

    final la a;
    final jx b;

    jy(jx jx1, la la)
    {
        b = jx1;
        a = la;
        super();
    }

    public final void run()
    {
        jx.a(b).a(a);
    }
}
