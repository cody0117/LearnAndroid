// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.ImageView;

// Referenced classes of package com.soundcloud.android.crop:
//            ac, s, q, r

abstract class ImageViewTouchBase extends ImageView
{

    private final Matrix a;
    private final float b[];
    private Runnable c;
    protected Matrix d;
    protected Matrix e;
    protected final ac f;
    int g;
    int h;
    float i;
    protected Handler j;
    private s k;

    public ImageViewTouchBase(Context context)
    {
        super(context);
        d = new Matrix();
        e = new Matrix();
        a = new Matrix();
        b = new float[9];
        f = new ac(null, 0);
        g = -1;
        h = -1;
        j = new Handler();
        setScaleType(android.widget.ImageView.ScaleType.MATRIX);
    }

    public ImageViewTouchBase(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = new Matrix();
        e = new Matrix();
        a = new Matrix();
        b = new float[9];
        f = new ac(null, 0);
        g = -1;
        h = -1;
        j = new Handler();
        setScaleType(android.widget.ImageView.ScaleType.MATRIX);
    }

    public ImageViewTouchBase(Context context, AttributeSet attributeset, int l)
    {
        super(context, attributeset, l);
        d = new Matrix();
        e = new Matrix();
        a = new Matrix();
        b = new float[9];
        f = new ac(null, 0);
        g = -1;
        h = -1;
        j = new Handler();
        setScaleType(android.widget.ImageView.ScaleType.MATRIX);
    }

    private void a(Bitmap bitmap, int l)
    {
        super.setImageBitmap(bitmap);
        Drawable drawable = getDrawable();
        if (drawable != null)
        {
            drawable.setDither(true);
        }
        Bitmap bitmap1 = f.b();
        f.a(bitmap);
        f.a(l);
        if (bitmap1 != null && bitmap1 != bitmap && k != null)
        {
            k.a(bitmap1);
        }
    }

    private void a(ac ac1, Matrix matrix, boolean flag)
    {
        float f1 = getWidth();
        float f2 = getHeight();
        float f3 = ac1.e();
        float f4 = ac1.d();
        matrix.reset();
        float f5 = Math.min(Math.min(f1 / f3, 3F), Math.min(f2 / f4, 3F));
        if (flag)
        {
            matrix.postConcat(ac1.c());
        }
        matrix.postScale(f5, f5);
        matrix.postTranslate((f1 - f3 * f5) / 2.0F, (f2 - f4 * f5) / 2.0F);
    }

    private Matrix e()
    {
        a.set(d);
        a.postConcat(e);
        return a;
    }

    public void a()
    {
        a(((Bitmap) (null)), true);
    }

    protected void a(float f1, float f2)
    {
        e.postTranslate(f1, f2);
    }

    protected void a(float f1, float f2, float f3)
    {
        if (f1 > i)
        {
            f1 = i;
        }
        float f4 = f1 / d();
        e.postScale(f4, f4, f2, f3);
        setImageMatrix(e());
        c();
    }

    public void a(Bitmap bitmap, boolean flag)
    {
        a(new ac(bitmap, 0), flag);
    }

    public void a(ac ac1, boolean flag)
    {
        if (getWidth() <= 0)
        {
            c = new q(this, ac1, flag);
            return;
        }
        float f1;
        if (ac1.b() != null)
        {
            a(ac1, d, true);
            a(ac1.b(), ac1.a());
        } else
        {
            d.reset();
            setImageBitmap(null);
        }
        if (flag)
        {
            e.reset();
        }
        setImageMatrix(e());
        if (f.b() == null)
        {
            f1 = 1.0F;
        } else
        {
            f1 = 4F * Math.max((float)f.e() / (float)g, (float)f.d() / (float)h);
        }
        i = f1;
    }

    public void a(s s1)
    {
        k = s1;
    }

    public Matrix b()
    {
        Matrix matrix = new Matrix();
        a(f, matrix, false);
        matrix.postConcat(e);
        return matrix;
    }

    protected final void b(float f1, float f2)
    {
        a(f1, f2);
        setImageMatrix(e());
    }

    protected final void b(float f1, float f2, float f3)
    {
        float f4 = (f1 - d()) / 300F;
        float f5 = d();
        long l = System.currentTimeMillis();
        j.post(new r(this, l, f5, f4, f2, f3));
    }

    protected final void c()
    {
        Bitmap bitmap = f.b();
        if (bitmap == null)
        {
            return;
        }
        Matrix matrix = e();
        RectF rectf = new RectF(0.0F, 0.0F, bitmap.getWidth(), bitmap.getHeight());
        matrix.mapRect(rectf);
        float f1 = rectf.height();
        float f2 = rectf.width();
        int l = getHeight();
        float f3;
        int i1;
        int j1;
        float f4;
        if (f1 < (float)l)
        {
            f3 = ((float)l - f1) / 2.0F - rectf.top;
        } else
        if (rectf.top > 0.0F)
        {
            f3 = -rectf.top;
        } else
        if (rectf.bottom < (float)l)
        {
            f3 = (float)getHeight() - rectf.bottom;
        } else
        {
            f3 = 0.0F;
        }
        i1 = getWidth();
        if (f2 >= (float)i1) goto _L2; else goto _L1
_L1:
        f4 = ((float)i1 - f2) / 2.0F - rectf.left;
_L4:
        a(f4, f3);
        setImageMatrix(e());
        return;
_L2:
        if (rectf.left > 0.0F)
        {
            f4 = -rectf.left;
        } else
        {
            j1 = rectf.right != (float)i1;
            f4 = 0.0F;
            if (j1 < 0)
            {
                f4 = (float)i1 - rectf.right;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected final float d()
    {
        e.getValues(b);
        return b[0];
    }

    public boolean onKeyDown(int l, KeyEvent keyevent)
    {
        if (l == 4 && keyevent.getRepeatCount() == 0)
        {
            keyevent.startTracking();
            return true;
        } else
        {
            return super.onKeyDown(l, keyevent);
        }
    }

    public boolean onKeyUp(int l, KeyEvent keyevent)
    {
        if (l == 4 && keyevent.isTracking() && !keyevent.isCanceled() && d() > 1.0F)
        {
            a(1.0F, (float)getWidth() / 2.0F, (float)getHeight() / 2.0F);
            return true;
        } else
        {
            return super.onKeyUp(l, keyevent);
        }
    }

    protected void onLayout(boolean flag, int l, int i1, int j1, int k1)
    {
        super.onLayout(flag, l, i1, j1, k1);
        g = j1 - l;
        h = k1 - i1;
        Runnable runnable = c;
        if (runnable != null)
        {
            c = null;
            runnable.run();
        }
        if (f.b() != null)
        {
            a(f, d, true);
            setImageMatrix(e());
        }
    }

    public void setImageBitmap(Bitmap bitmap)
    {
        a(bitmap, 0);
    }
}
