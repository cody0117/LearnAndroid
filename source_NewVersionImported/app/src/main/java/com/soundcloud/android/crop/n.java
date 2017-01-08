// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;

// Referenced classes of package com.soundcloud.android.crop:
//            p, o, x, ab

final class n
{

    RectF a;
    Rect b;
    Matrix c;
    private RectF d;
    private final Paint e;
    private final Paint f;
    private final Paint g;
    private View h;
    private boolean i;
    private int j;
    private p k;
    private o l;
    private boolean m;
    private float n;
    private float o;
    private float p;
    private boolean q;

    public n(View view)
    {
        TypedArray typedarray;
        e = new Paint();
        f = new Paint();
        g = new Paint();
        k = p.a;
        l = o.a;
        h = view;
        Context context = view.getContext();
        TypedValue typedvalue = new TypedValue();
        context.getTheme().resolveAttribute(x.a, typedvalue, true);
        typedarray = context.obtainStyledAttributes(typedvalue.resourceId, ab.a);
        i = typedarray.getBoolean(1, false);
        j = typedarray.getColor(0, 0xff33b5e5);
        l = com.soundcloud.android.crop.o.values()[typedarray.getInt(2, 0)];
        typedarray.recycle();
        return;
        Exception exception;
        exception;
        typedarray.recycle();
        throw exception;
    }

    private float a(float f1)
    {
        return f1 * h.getResources().getDisplayMetrics().density;
    }

    private Rect d()
    {
        RectF rectf = new RectF(a.left, a.top, a.right, a.bottom);
        c.mapRect(rectf);
        return new Rect(Math.round(rectf.left), Math.round(rectf.top), Math.round(rectf.right), Math.round(rectf.bottom));
    }

    public final int a(float f1, float f2)
    {
        Rect rect = d();
        boolean flag;
        int i1;
        boolean flag1;
        int j1;
        int k1;
        if (f2 >= (float)rect.top - 20F && f2 < 20F + (float)rect.bottom)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i1 = f1 != (float)rect.left - 20F;
        flag1 = false;
        if (i1 >= 0)
        {
            int l1 = f1 != 20F + (float)rect.right;
            flag1 = false;
            if (l1 < 0)
            {
                flag1 = true;
            }
        }
        if (Math.abs((float)rect.left - f1) < 20F && flag)
        {
            j1 = 3;
        } else
        {
            j1 = 1;
        }
        if (Math.abs((float)rect.right - f1) < 20F && flag)
        {
            j1 |= 4;
        }
        if (Math.abs((float)rect.top - f2) < 20F && flag1)
        {
            j1 |= 8;
        }
        if (Math.abs((float)rect.bottom - f2) < 20F && flag1)
        {
            k1 = j1 | 0x10;
        } else
        {
            k1 = j1;
        }
        if (k1 == 1 && rect.contains((int)f1, (int)f2))
        {
            k1 = 32;
        }
        return k1;
    }

    public final void a()
    {
        b = d();
    }

    final void a(int i1, float f1, float f2)
    {
        float f5;
        float f6;
        float f7;
        int j1 = -1;
        Rect rect = d();
        if (i1 == 32)
        {
            float f9 = f1 * (a.width() / (float)rect.width());
            float f10 = f2 * (a.height() / (float)rect.height());
            Rect rect1 = new Rect(b);
            a.offset(f9, f10);
            a.offset(Math.max(0.0F, d.left - a.left), Math.max(0.0F, d.top - a.top));
            a.offset(Math.min(0.0F, d.right - a.right), Math.min(0.0F, d.bottom - a.bottom));
            b = d();
            rect1.union(b);
            rect1.inset(-(int)o, -(int)o);
            h.invalidate(rect1);
            return;
        }
        if ((i1 & 6) == 0)
        {
            f1 = 0.0F;
        }
        if ((i1 & 0x18) == 0)
        {
            f2 = 0.0F;
        }
        float f3 = f1 * (a.width() / (float)rect.width());
        float f4 = f2 * (a.height() / (float)rect.height());
        int k1;
        if ((i1 & 2) != 0)
        {
            k1 = j1;
        } else
        {
            k1 = 1;
        }
        f5 = f3 * (float)k1;
        if ((i1 & 8) == 0)
        {
            j1 = 1;
        }
        f6 = f4 * (float)j1;
        if (!m) goto _L2; else goto _L1
_L1:
        if (f5 == 0.0F) goto _L4; else goto _L3
_L3:
        f6 = f5 / n;
        f7 = f5;
_L6:
        RectF rectf = new RectF(a);
        if (f7 > 0.0F && rectf.width() + 2.0F * f7 > d.width())
        {
            f7 = (d.width() - rectf.width()) / 2.0F;
            if (m)
            {
                f6 = f7 / n;
            }
        }
        if (f6 > 0.0F && rectf.height() + 2.0F * f6 > d.height())
        {
            f6 = (d.height() - rectf.height()) / 2.0F;
            if (m)
            {
                f7 = f6 * n;
            }
        }
        rectf.inset(-f7, -f6);
        if (rectf.width() < 25F)
        {
            rectf.inset(-(25F - rectf.width()) / 2.0F, 0.0F);
        }
        float f8;
        if (m)
        {
            f8 = 25F / n;
        } else
        {
            f8 = 25F;
        }
        if (rectf.height() < f8)
        {
            rectf.inset(0.0F, -(f8 - rectf.height()) / 2.0F);
        }
        if (rectf.left < d.left)
        {
            rectf.offset(d.left - rectf.left, 0.0F);
        } else
        if (rectf.right > d.right)
        {
            rectf.offset(-(rectf.right - d.right), 0.0F);
        }
        if (rectf.top < d.top)
        {
            rectf.offset(0.0F, d.top - rectf.top);
        } else
        if (rectf.bottom > d.bottom)
        {
            rectf.offset(0.0F, -(rectf.bottom - d.bottom));
        }
        a.set(rectf);
        b = d();
        h.invalidate();
        return;
_L4:
        if (f6 != 0.0F)
        {
            f7 = f6 * n;
            continue; /* Loop/switch isn't completed */
        }
_L2:
        f7 = f5;
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected final void a(Canvas canvas)
    {
        Path path;
        canvas.save();
        path = new Path();
        f.setStrokeWidth(p);
        if (q) goto _L2; else goto _L1
_L1:
        f.setColor(0xff000000);
        canvas.drawRect(b, f);
_L5:
        return;
_L2:
        Rect rect;
        int i1;
        boolean flag;
        rect = new Rect();
        h.getDrawingRect(rect);
        path.addRect(new RectF(b), android.graphics.Path.Direction.CW);
        f.setColor(j);
        i1 = android.os.Build.VERSION.SDK_INT;
        flag = false;
        if (i1 != 17) goto _L4; else goto _L3
_L3:
        boolean flag1;
        if (flag)
        {
            canvas.clipPath(path, android.graphics.Region.Op.DIFFERENCE);
            canvas.drawRect(rect, e);
        } else
        {
            canvas.drawRect(0.0F, 0.0F, canvas.getWidth(), b.top, e);
            canvas.drawRect(0.0F, b.bottom, canvas.getWidth(), canvas.getHeight(), e);
            canvas.drawRect(0.0F, b.top, b.left, b.bottom, e);
            canvas.drawRect(b.right, b.top, canvas.getWidth(), b.bottom, e);
        }
        canvas.restore();
        canvas.drawPath(path, f);
        if (i)
        {
            f.setStrokeWidth(1.0F);
            float f1 = (b.right - b.left) / 3;
            float f2 = (b.bottom - b.top) / 3;
            canvas.drawLine(f1 + (float)b.left, b.top, f1 + (float)b.left, b.bottom, f);
            canvas.drawLine((float)b.left + f1 * 2.0F, b.top, (float)b.left + f1 * 2.0F, b.bottom, f);
            canvas.drawLine(b.left, f2 + (float)b.top, b.right, f2 + (float)b.top, f);
            canvas.drawLine(b.left, (float)b.top + f2 * 2.0F, b.right, (float)b.top + f2 * 2.0F, f);
        }
        if (l == o.b || l == o.a && k == p.c)
        {
            int j1 = b.left + (b.right - b.left) / 2;
            int k1 = b.top + (b.bottom - b.top) / 2;
            canvas.drawCircle(b.left, k1, o, g);
            canvas.drawCircle(j1, b.top, o, g);
            canvas.drawCircle(b.right, k1, o, g);
            canvas.drawCircle(j1, b.bottom, o, g);
            return;
        }
        if (true) goto _L5; else goto _L4
_L4:
        if (android.os.Build.VERSION.SDK_INT < 14 || android.os.Build.VERSION.SDK_INT > 15)
        {
            flag = true;
        } else
        {
            flag1 = canvas.isHardwareAccelerated();
            flag = false;
            if (!flag1)
            {
                flag = true;
            }
        }
          goto _L3
    }

    public final void a(Matrix matrix, Rect rect, RectF rectf, boolean flag)
    {
        c = new Matrix(matrix);
        a = rectf;
        d = new RectF(rect);
        m = flag;
        n = a.width() / a.height();
        b = d();
        e.setARGB(125, 50, 50, 50);
        f.setStyle(android.graphics.Paint.Style.STROKE);
        f.setAntiAlias(true);
        p = a(2.0F);
        g.setColor(j);
        g.setStyle(android.graphics.Paint.Style.FILL);
        g.setAntiAlias(true);
        o = a(12F);
        k = p.a;
    }

    public final void a(p p1)
    {
        if (p1 != k)
        {
            k = p1;
            h.invalidate();
        }
    }

    public final boolean b()
    {
        return q;
    }

    public final void c()
    {
        q = true;
    }
}
