// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.images;

import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.google.android.gms.common.images:
//            ImageManager, d

final class c
    implements Runnable
{

    final ImageManager a;
    private final Uri b;
    private final ParcelFileDescriptor c;

    public c(ImageManager imagemanager, Uri uri, ParcelFileDescriptor parcelfiledescriptor)
    {
        a = imagemanager;
        super();
        b = uri;
        c = parcelfiledescriptor;
    }

    public final void run()
    {
        ParcelFileDescriptor parcelfiledescriptor;
        android.graphics.Bitmap bitmap;
        boolean flag;
        if (Looper.getMainLooper().getThread() == Thread.currentThread())
        {
            (new StringBuilder("checkNotMainThread: current thread ")).append(Thread.currentThread()).append(" IS the main thread ").append(Looper.getMainLooper().getThread()).append("!");
            throw new IllegalStateException("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        }
        parcelfiledescriptor = c;
        bitmap = null;
        flag = false;
        if (parcelfiledescriptor == null) goto _L2; else goto _L1
_L1:
        android.graphics.Bitmap bitmap1 = BitmapFactory.decodeFileDescriptor(c.getFileDescriptor());
        bitmap = bitmap1;
_L3:
        CountDownLatch countdownlatch;
        OutOfMemoryError outofmemoryerror;
        try
        {
            c.close();
        }
        catch (IOException ioexception) { }
_L2:
        countdownlatch = new CountDownLatch(1);
        ImageManager.g(a).post(new d(a, b, bitmap, flag, countdownlatch));
        try
        {
            countdownlatch.await();
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            (new StringBuilder("Latch interrupted while posting ")).append(b);
        }
        break MISSING_BLOCK_LABEL_183;
        outofmemoryerror;
        (new StringBuilder("OOM while loading bitmap for uri: ")).append(b);
        flag = true;
        bitmap = null;
          goto _L3
    }
}
