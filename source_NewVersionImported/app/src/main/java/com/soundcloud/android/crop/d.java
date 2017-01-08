// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import android.view.View;

// Referenced classes of package com.soundcloud.android.crop:
//            CropImageActivity

final class d
    implements android.view.View.OnClickListener
{

    final CropImageActivity a;

    d(CropImageActivity cropimageactivity)
    {
        a = cropimageactivity;
        super();
    }

    public final void onClick(View view)
    {
        CropImageActivity.g(a);
    }
}
