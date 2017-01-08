// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.soundcloud.android.crop:
//            e, CropImageActivity, CropImageView

final class f
    implements Runnable
{

    final e a;
    private final CountDownLatch b;

    f(e e1, CountDownLatch countdownlatch)
    {
        a = e1;
        b = countdownlatch;
        super();
    }

    public final void run()
    {
        if (CropImageActivity.b(a.a).d() == 1.0F)
        {
            CropImageActivity.b(a.a).c();
        }
        b.countDown();
    }
}
