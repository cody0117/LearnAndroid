// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import android.graphics.Bitmap;

// Referenced classes of package com.soundcloud.android.crop:
//            CropImageActivity, CropImageView

final class h
    implements Runnable
{

    final CropImageActivity a;
    private final Bitmap b;

    h(CropImageActivity cropimageactivity, Bitmap bitmap)
    {
        a = cropimageactivity;
        b = bitmap;
        super();
    }

    public final void run()
    {
        CropImageActivity.b(a).a();
        b.recycle();
    }
}
