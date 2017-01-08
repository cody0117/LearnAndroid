// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Parcelable;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

// Referenced classes of package com.viewpagerindicator:
//            f, h, j, l, 
//            k, i, m

public class CirclePageIndicator extends View
    implements f
{

    private float a;
    private final Paint b;
    private final Paint c;
    private final Paint d;
    private ViewPager e;
    private android.support.v4.view.ViewPager.OnPageChangeListener f;
    private int g;
    private int h;
    private float i;
    private int j;
    private int k;
    private boolean l;
    private boolean m;
    private int n;
    private float o;
    private int p;
    private boolean q;

    public CirclePageIndicator(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, h.a);
    }

    public CirclePageIndicator(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        b = new Paint(1);
        c = new Paint(1);
        d = new Paint(1);
        o = -1F;
        p = -1;
        if (isInEditMode())
        {
            return;
        }
        Resources resources = getResources();
        int j1 = resources.getColor(j.b);
        int k1 = resources.getColor(j.a);
        int l1 = resources.getInteger(l.a);
        int i2 = resources.getColor(j.c);
        float f1 = resources.getDimension(k.b);
        float f2 = resources.getDimension(k.a);
        boolean flag = resources.getBoolean(i.a);
        boolean flag1 = resources.getBoolean(i.b);
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, m.a, i1, 0);
        l = typedarray.getBoolean(2, flag);
        k = typedarray.getInt(0, l1);
        b.setStyle(android.graphics.Paint.Style.FILL);
        b.setColor(typedarray.getColor(5, j1));
        c.setStyle(android.graphics.Paint.Style.STROKE);
        c.setColor(typedarray.getColor(8, i2));
        c.setStrokeWidth(typedarray.getDimension(3, f1));
        d.setStyle(android.graphics.Paint.Style.FILL);
        d.setColor(typedarray.getColor(4, k1));
        a = typedarray.getDimension(6, f2);
        m = typedarray.getBoolean(7, flag1);
        android.graphics.drawable.Drawable drawable = typedarray.getDrawable(1);
        if (drawable != null)
        {
            setBackgroundDrawable(drawable);
        }
        typedarray.recycle();
        n = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
    }

    private int a(int i1)
    {
        int j1 = android.view.View.MeasureSpec.getMode(i1);
        int k1 = android.view.View.MeasureSpec.getSize(i1);
        int l1;
        if (j1 == 0x40000000 || e == null)
        {
            l1 = k1;
        } else
        {
            int i2 = e.getAdapter().getCount();
            l1 = (int)(1.0F + ((float)(getPaddingLeft() + getPaddingRight()) + (float)(i2 * 2) * a + (float)(i2 - 1) * a));
            if (j1 == 0x80000000)
            {
                return Math.min(l1, k1);
            }
        }
        return l1;
    }

    private int b(int i1)
    {
        int j1 = android.view.View.MeasureSpec.getMode(i1);
        int k1 = android.view.View.MeasureSpec.getSize(i1);
        if (j1 == 0x40000000)
        {
            return k1;
        }
        int l1 = (int)(1.0F + (2.0F * a + (float)getPaddingTop() + (float)getPaddingBottom()));
        if (j1 == 0x80000000)
        {
            return Math.min(l1, k1);
        } else
        {
            return l1;
        }
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        int i1;
        if (e != null)
        {
            if ((i1 = e.getAdapter().getCount()) != 0)
            {
                if (g >= i1)
                {
                    int l2 = i1 - 1;
                    if (e == null)
                    {
                        throw new IllegalStateException("ViewPager has not been bound.");
                    } else
                    {
                        e.setCurrentItem(l2);
                        g = l2;
                        invalidate();
                        return;
                    }
                }
                int j1;
                int k1;
                int l1;
                int i2;
                float f1;
                float f2;
                float f3;
                float f4;
                int j2;
                if (k == 0)
                {
                    j1 = getWidth();
                    k1 = getPaddingLeft();
                    l1 = getPaddingRight();
                    i2 = getPaddingTop();
                } else
                {
                    j1 = getHeight();
                    k1 = getPaddingTop();
                    l1 = getPaddingBottom();
                    i2 = getPaddingLeft();
                }
                f1 = 3F * a;
                f2 = (float)i2 + a;
                f3 = (float)k1 + a;
                if (l)
                {
                    f3 += (float)(j1 - k1 - l1) / 2.0F - (f1 * (float)i1) / 2.0F;
                }
                f4 = a;
                if (c.getStrokeWidth() > 0.0F)
                {
                    f4 -= c.getStrokeWidth() / 2.0F;
                }
                j2 = 0;
                do
                {
                    if (j2 >= i1)
                    {
                        float f5;
                        float f6;
                        int k2;
                        float f7;
                        float f9;
                        if (m)
                        {
                            k2 = h;
                        } else
                        {
                            k2 = g;
                        }
                        f7 = f1 * (float)k2;
                        if (!m)
                        {
                            f7 += f1 * i;
                        }
                        if (k == 0)
                        {
                            f9 = f3 + f7;
                        } else
                        {
                            float f8 = f3 + f7;
                            f9 = f2;
                            f2 = f8;
                        }
                        canvas.drawCircle(f9, f2, a, d);
                        return;
                    }
                    f5 = f3 + f1 * (float)j2;
                    if (k == 0)
                    {
                        f6 = f5;
                        f5 = f2;
                    } else
                    {
                        f6 = f2;
                    }
                    if (b.getAlpha() > 0)
                    {
                        canvas.drawCircle(f6, f5, f4, b);
                    }
                    if (f4 != a)
                    {
                        canvas.drawCircle(f6, f5, a, c);
                    }
                    j2++;
                } while (true);
            }
        }
    }

    protected void onMeasure(int i1, int j1)
    {
        if (k == 0)
        {
            setMeasuredDimension(a(i1), b(j1));
            return;
        } else
        {
            setMeasuredDimension(b(i1), a(j1));
            return;
        }
    }

    public void onPageScrollStateChanged(int i1)
    {
        j = i1;
        if (f != null)
        {
            f.onPageScrollStateChanged(i1);
        }
    }

    public void onPageScrolled(int i1, float f1, int j1)
    {
        g = i1;
        i = f1;
        invalidate();
        if (f != null)
        {
            f.onPageScrolled(i1, f1, j1);
        }
    }

    public void onPageSelected(int i1)
    {
        if (m || j == 0)
        {
            g = i1;
            h = i1;
            invalidate();
        }
        if (f != null)
        {
            f.onPageSelected(i1);
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        SavedState savedstate = (SavedState)parcelable;
        super.onRestoreInstanceState(savedstate.getSuperState());
        g = savedstate.a;
        h = savedstate.a;
        requestLayout();
    }

    public Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        savedstate.a = g;
        return savedstate;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (!super.onTouchEvent(motionevent)) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        int i1;
        if (e == null || e.getAdapter().getCount() == 0)
        {
            return false;
        }
        i1 = 0xff & motionevent.getAction();
        i1;
        JVM INSTR tableswitch 0 6: default 84
    //                   0 86
    //                   1 198
    //                   2 105
    //                   3 198
    //                   4 84
    //                   5 352
    //                   6 380;
           goto _L3 _L4 _L5 _L6 _L5 _L3 _L7 _L8
_L3:
        return true;
_L4:
        p = MotionEventCompat.getPointerId(motionevent, 0);
        o = motionevent.getX();
        return true;
_L6:
        float f3 = MotionEventCompat.getX(motionevent, MotionEventCompat.findPointerIndex(motionevent, p));
        float f4 = f3 - o;
        if (!q && Math.abs(f4) > (float)n)
        {
            q = true;
        }
        if (q)
        {
            o = f3;
            if (e.isFakeDragging() || e.beginFakeDrag())
            {
                e.fakeDragBy(f4);
                return true;
            }
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (q)
        {
            break; /* Loop/switch isn't completed */
        }
        int i2 = e.getAdapter().getCount();
        int j2 = getWidth();
        float f1 = (float)j2 / 2.0F;
        float f2 = (float)j2 / 6F;
        if (g > 0 && motionevent.getX() < f1 - f2)
        {
            if (i1 != 3)
            {
                e.setCurrentItem(-1 + g);
                return true;
            }
            continue; /* Loop/switch isn't completed */
        }
        if (g >= i2 - 1 || motionevent.getX() <= f2 + f1)
        {
            break; /* Loop/switch isn't completed */
        }
        if (i1 != 3)
        {
            e.setCurrentItem(1 + g);
            return true;
        }
        if (true) goto _L1; else goto _L9
_L9:
        q = false;
        p = -1;
        if (e.isFakeDragging())
        {
            e.endFakeDrag();
            return true;
        }
          goto _L1
_L7:
        int l1 = MotionEventCompat.getActionIndex(motionevent);
        o = MotionEventCompat.getX(motionevent, l1);
        p = MotionEventCompat.getPointerId(motionevent, l1);
        return true;
_L8:
        int j1 = MotionEventCompat.getActionIndex(motionevent);
        if (MotionEventCompat.getPointerId(motionevent, j1) == p)
        {
            int k1 = 0;
            if (j1 == 0)
            {
                k1 = 1;
            }
            p = MotionEventCompat.getPointerId(motionevent, k1);
        }
        o = MotionEventCompat.getX(motionevent, MotionEventCompat.findPointerIndex(motionevent, p));
        return true;
    }

    private class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new a();
        int a;

        public void writeToParcel(Parcel parcel, int i1)
        {
            super.writeToParcel(parcel, i1);
            parcel.writeInt(a);
        }


        private SavedState(Parcel parcel)
        {
            super(parcel);
            a = parcel.readInt();
        }

        SavedState(Parcel parcel, byte byte0)
        {
            this(parcel);
        }

        public SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

}
