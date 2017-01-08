// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;

public final class ol
{

    public static Bitmap a(Bitmap bitmap)
    {
        int i = 0;
        if (bitmap == null)
        {
            return null;
        }
        int j = bitmap.getWidth();
        int k = bitmap.getHeight();
        int i1;
        Bitmap bitmap1;
        Canvas canvas;
        Paint paint;
        if (j >= k)
        {
            i1 = j / 2 - k / 2;
        } else
        {
            int l = k / 2 - j / 2;
            k = j;
            i = l;
            i1 = 0;
        }
        bitmap1 = Bitmap.createBitmap(k, k, android.graphics.Bitmap.Config.ARGB_8888);
        canvas = new Canvas(bitmap1);
        paint = new Paint(1);
        paint.setColor(0xff000000);
        canvas.drawCircle(k / 2, k / 2, k / 2, paint);
        paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, i1, i, paint);
        return bitmap1;
    }
}
