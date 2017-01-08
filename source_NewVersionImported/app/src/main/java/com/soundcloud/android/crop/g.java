// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import android.graphics.Bitmap;

// Referenced classes of package com.soundcloud.android.crop:
//            CropImageActivity

final class g
    implements Runnable
{

    final CropImageActivity a;
    private final Bitmap b;

    g(CropImageActivity cropimageactivity, Bitmap bitmap)
    {
        a = cropimageactivity;
        b = bitmap;
        super();
    }

    public final void run()
    {
        CropImageActivity.a(a, b);
    }
}
