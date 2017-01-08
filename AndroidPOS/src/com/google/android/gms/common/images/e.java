// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.images;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.google.android.gms.internal.ol;
import com.google.android.gms.internal.om;
import com.google.android.gms.internal.on;
import com.google.android.gms.internal.oo;

// Referenced classes of package com.google.android.gms.common.images:
//            f, a

public abstract class e
{

    final f a;
    protected int b;
    protected a c;
    protected int d;

    protected abstract void a();

    final void a(Context context, Bitmap bitmap)
    {
        oo.a(bitmap);
        if ((1 & d) != 0)
        {
            bitmap = ol.a(bitmap);
        }
        new BitmapDrawable(context.getResources(), bitmap);
        if (c != null)
        {
            a _tmp = c;
            android.net.Uri _tmp1 = a.a;
        }
        a();
    }

    final void a(Context context, om om1)
    {
        if (b != 0)
        {
            int i = b;
            Resources resources = context.getResources();
            if (d > 0)
            {
                on on1 = new on(i, d);
                if ((Drawable)om1.b(on1) == null)
                {
                    Object obj = resources.getDrawable(i);
                    if ((1 & d) != 0)
                    {
                        Bitmap bitmap1;
                        if (obj == null)
                        {
                            bitmap1 = null;
                        } else
                        if (obj instanceof BitmapDrawable)
                        {
                            bitmap1 = ((BitmapDrawable)obj).getBitmap();
                        } else
                        {
                            Bitmap bitmap = Bitmap.createBitmap(((Drawable) (obj)).getIntrinsicWidth(), ((Drawable) (obj)).getIntrinsicHeight(), android.graphics.Bitmap.Config.ARGB_8888);
                            Canvas canvas = new Canvas(bitmap);
                            ((Drawable) (obj)).setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                            ((Drawable) (obj)).draw(canvas);
                            bitmap1 = bitmap;
                        }
                        obj = new BitmapDrawable(resources, ol.a(bitmap1));
                    }
                    om1.a(on1, obj);
                }
            } else
            {
                resources.getDrawable(i);
            }
        }
        if (c != null)
        {
            a _tmp = c;
            android.net.Uri _tmp1 = a.a;
        }
        a();
    }
}
