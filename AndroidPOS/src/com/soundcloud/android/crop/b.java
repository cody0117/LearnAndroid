// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import android.graphics.Bitmap;

// Referenced classes of package com.soundcloud.android.crop:
//            s, CropImageActivity

final class b
    implements s
{

    final CropImageActivity a;

    b(CropImageActivity cropimageactivity)
    {
        a = cropimageactivity;
        super();
    }

    public final void a(Bitmap bitmap)
    {
        bitmap.recycle();
        System.gc();
    }
}
