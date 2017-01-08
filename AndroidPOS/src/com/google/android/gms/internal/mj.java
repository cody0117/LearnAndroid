// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            fi, mi

final class mj
    implements Runnable
{

    final fi a;
    final mi b;

    mj(mi mi, fi fi1)
    {
        b = mi;
        a = fi1;
        super();
    }

    public final void run()
    {
        a.k();
    }
}
