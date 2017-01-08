// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import android.os.Handler;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.soundcloud.android.crop:
//            CropImageActivity, f, i, j

final class e
    implements Runnable
{

    final CropImageActivity a;

    e(CropImageActivity cropimageactivity)
    {
        a = cropimageactivity;
        super();
    }

    public final void run()
    {
        CountDownLatch countdownlatch = new CountDownLatch(1);
        CropImageActivity.e(a).post(new f(this, countdownlatch));
        i k;
        try
        {
            countdownlatch.await();
        }
        catch (InterruptedException interruptedexception)
        {
            throw new RuntimeException(interruptedexception);
        }
        k = new i(a, (byte)0);
        CropImageActivity.e(k.a).post(new j(k));
    }
}
