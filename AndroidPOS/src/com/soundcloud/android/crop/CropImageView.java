// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.soundcloud.android.crop:
//            ImageViewTouchBase, n, ac, CropImageActivity, 
//            p, s

public class CropImageView extends ImageViewTouchBase
{

    ArrayList a;
    n b;
    Context c;
    private float k;
    private float l;
    private int m;

    public CropImageView(Context context)
    {
        super(context);
        a = new ArrayList();
    }

    public CropImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new ArrayList();
    }

    public CropImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = new ArrayList();
    }

    private void b(n n1)
    {
        Rect rect = n1.b;
        int i = Math.max(0, getLeft() - rect.left);
        int j = Math.min(0, getRight() - rect.right);
        int i1 = Math.max(0, getTop() - rect.top);
        int j1 = Math.min(0, getBottom() - rect.bottom);
        if (i == 0)
        {
            i = j;
        }
        if (i1 == 0)
        {
            i1 = j1;
        }
        if (i != 0 || i1 != 0)
        {
            b(i, i1);
        }
    }

    private void c(n n1)
    {
        Rect rect = n1.b;
        float f = rect.width();
        float f1 = rect.height();
        float f2 = getWidth();
        float f3 = getHeight();
        float f4 = Math.max(1.0F, Math.min(0.6F * (f2 / f), 0.6F * (f3 / f1)) * d());
        if ((double)(Math.abs(f4 - d()) / f4) > 0.10000000000000001D)
        {
            float af[] = new float[2];
            af[0] = n1.a.centerX();
            af[1] = n1.a.centerY();
            super.b().mapPoints(af);
            b(f4, af[0], af[1]);
        }
        b(n1);
    }

    public final volatile void a()
    {
        super.a();
    }

    protected final void a(float f, float f1)
    {
        super.a(f, f1);
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            n n1 = (n)iterator.next();
            n1.c.postTranslate(f, f1);
            n1.a();
        } while (true);
    }

    protected final void a(float f, float f1, float f2)
    {
        super.a(f, f1, f2);
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            n n1 = (n)iterator.next();
            n1.c.set(super.b());
            n1.a();
        } while (true);
    }

    public final volatile void a(Bitmap bitmap, boolean flag)
    {
        super.a(bitmap, flag);
    }

    public final volatile void a(ac ac1, boolean flag)
    {
        super.a(ac1, flag);
    }

    public final void a(n n1)
    {
        a.add(n1);
        invalidate();
    }

    public final volatile void a(s s)
    {
        super.a(s);
    }

    public final volatile Matrix b()
    {
        return super.b();
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ((n)iterator.next()).a(canvas);
        } while (true);
    }

    public volatile boolean onKeyDown(int i, KeyEvent keyevent)
    {
        return super.onKeyDown(i, keyevent);
    }

    public volatile boolean onKeyUp(int i, KeyEvent keyevent)
    {
        return super.onKeyUp(i, keyevent);
    }

    protected void onLayout(boolean flag, int i, int j, int i1, int j1)
    {
        super.onLayout(flag, i, j, i1, j1);
        if (f.b() == null) goto _L2; else goto _L1
_L1:
        Iterator iterator = a.iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        return;
_L3:
        n n1 = (n)iterator.next();
        n1.c.set(super.b());
        n1.a();
        if (n1.b())
        {
            c(n1);
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (((CropImageActivity)c).a())
        {
            return false;
        }
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 44
    //                   0 74
    //                   1 184
    //                   2 217;
           goto _L1 _L2 _L3 _L4
_L1:
        motionevent.getAction();
        JVM INSTR tableswitch 1 2: default 72
    //                   1 280
    //                   2 287;
           goto _L5 _L6 _L7
_L5:
        return true;
_L2:
        Iterator iterator = a.iterator();
_L10:
        if (!iterator.hasNext()) goto _L1; else goto _L8
_L8:
        n n1;
        int i;
        n1 = (n)iterator.next();
        i = n1.a(motionevent.getX(), motionevent.getY());
        if (i == 1) goto _L10; else goto _L9
_L9:
        m = i;
        b = n1;
        k = motionevent.getX();
        l = motionevent.getY();
        n n2 = b;
        p p1;
        if (i == 32)
        {
            p1 = p.b;
        } else
        {
            p1 = p.c;
        }
        n2.a(p1);
          goto _L1
_L3:
        if (b != null)
        {
            c(b);
            b.a(p.a);
        }
        b = null;
          goto _L1
_L4:
        if (b != null)
        {
            b.a(m, motionevent.getX() - k, motionevent.getY() - l);
            k = motionevent.getX();
            l = motionevent.getY();
            b(b);
        }
          goto _L1
_L6:
        c();
          goto _L5
_L7:
        if (d() == 1.0F)
        {
            c();
        }
          goto _L5
    }

    public volatile void setImageBitmap(Bitmap bitmap)
    {
        super.setImageBitmap(bitmap);
    }
}
