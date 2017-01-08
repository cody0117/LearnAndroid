// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;


// Referenced classes of package com.soundcloud.android.crop:
//            ImageViewTouchBase, ac

final class q
    implements Runnable
{

    final ImageViewTouchBase a;
    private final ac b;
    private final boolean c;

    q(ImageViewTouchBase imageviewtouchbase, ac ac, boolean flag)
    {
        a = imageviewtouchbase;
        b = ac;
        c = flag;
        super();
    }

    public final void run()
    {
        a.a(b, c);
    }
}
