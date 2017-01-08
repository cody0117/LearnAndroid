// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

// Referenced classes of package com.google.android.gms.internal:
//            fq, fr

final class fs
    implements Runnable
{

    final fq a;
    final fr b;
    private final WeakReference c;

    fs(fr fr1, fq fq1)
    {
        b = fr1;
        a = fq1;
        super();
        c = new WeakReference(a);
    }

    public final void run()
    {
        fq fq1 = (fq)c.get();
        if (!fr.a(b) && fq1 != null)
        {
            fq1.e();
            b.b();
        }
    }
}
