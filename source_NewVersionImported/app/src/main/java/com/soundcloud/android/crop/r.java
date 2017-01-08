// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import android.os.Handler;

// Referenced classes of package com.soundcloud.android.crop:
//            ImageViewTouchBase

final class r
    implements Runnable
{

    final ImageViewTouchBase a;
    private final float b = 300F;
    private final long c;
    private final float d;
    private final float e;
    private final float f;
    private final float g;

    r(ImageViewTouchBase imageviewtouchbase, long l, float f1, float f2, float f3, float f4)
    {
        a = imageviewtouchbase;
        c = l;
        d = f1;
        e = f2;
        f = f3;
        g = f4;
        super();
    }

    public final void run()
    {
        long l = System.currentTimeMillis();
        float f1 = Math.min(b, l - c);
        float f2 = d + f1 * e;
        a.a(f2, f, g);
        if (f1 < b)
        {
            a.j.post(this);
        }
    }
}
