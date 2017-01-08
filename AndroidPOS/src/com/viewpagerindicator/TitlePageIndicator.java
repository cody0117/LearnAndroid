// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import java.util.ArrayList;

// Referenced classes of package com.viewpagerindicator:
//            f, h, j, k, 
//            l, i, m, r, 
//            s, t

public class TitlePageIndicator extends View
    implements f
{

    private static int B[];
    private t A;
    private ViewPager a;
    private android.support.v4.view.ViewPager.OnPageChangeListener b;
    private int c;
    private float d;
    private int e;
    private final Paint f;
    private boolean g;
    private int h;
    private int i;
    private Path j;
    private final Rect k;
    private final Paint l;
    private r m;
    private s n;
    private final Paint o;
    private float p;
    private float q;
    private float r;
    private float s;
    private float t;
    private float u;
    private float v;
    private int w;
    private float x;
    private int y;
    private boolean z;

    public TitlePageIndicator(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, h.e);
    }

    public TitlePageIndicator(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        c = -1;
        f = new Paint();
        j = new Path();
        k = new Rect();
        l = new Paint();
        o = new Paint();
        x = -1F;
        y = -1;
        if (isInEditMode())
        {
            return;
        }
        Resources resources = getResources();
        int j1 = resources.getColor(j.h);
        float f1 = resources.getDimension(k.i);
        int k1 = resources.getInteger(l.b);
        float f2 = resources.getDimension(k.g);
        float f3 = resources.getDimension(k.h);
        float f4 = resources.getDimension(k.j);
        int l1 = resources.getInteger(l.c);
        int i2 = resources.getColor(j.i);
        boolean flag = resources.getBoolean(i.d);
        int j2 = resources.getColor(j.j);
        float f5 = resources.getDimension(k.k);
        float f6 = resources.getDimension(k.l);
        float f7 = resources.getDimension(k.f);
        float f8 = resources.getDimension(k.m);
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, m.d, i1, 0);
        v = typedarray.getDimension(6, f1);
        m = com.viewpagerindicator.r.a(typedarray.getInteger(7, k1));
        p = typedarray.getDimension(8, f2);
        q = typedarray.getDimension(9, f3);
        r = typedarray.getDimension(10, f4);
        n = com.viewpagerindicator.s.a(typedarray.getInteger(11, l1));
        t = typedarray.getDimension(14, f8);
        s = typedarray.getDimension(13, f6);
        u = typedarray.getDimension(4, f7);
        i = typedarray.getColor(3, i2);
        h = typedarray.getColor(1, j2);
        g = typedarray.getBoolean(12, flag);
        float f9 = typedarray.getDimension(0, f5);
        int k2 = typedarray.getColor(5, j1);
        f.setTextSize(f9);
        f.setAntiAlias(true);
        l.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
        l.setStrokeWidth(v);
        l.setColor(k2);
        o.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
        o.setColor(k2);
        android.graphics.drawable.Drawable drawable = typedarray.getDrawable(2);
        if (drawable != null)
        {
            setBackgroundDrawable(drawable);
        }
        typedarray.recycle();
        w = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
    }

    private CharSequence a(int i1)
    {
        Object obj = a.getAdapter().getPageTitle(i1);
        if (obj == null)
        {
            obj = "";
        }
        return ((CharSequence) (obj));
    }

    private void a(Rect rect, float f1, int i1)
    {
        rect.right = (int)((float)i1 - u);
        rect.left = (int)((float)rect.right - f1);
    }

    private static int[] a()
    {
        int ai[] = B;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[com.viewpagerindicator.r.values().length];
        try
        {
            ai1[r.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[r.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[r.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        B = ai1;
        return ai1;
    }

    private void b(Rect rect, float f1, int i1)
    {
        rect.left = (int)((float)i1 + u);
        rect.right = (int)(f1 + u);
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (a != null) goto _L2; else goto _L1
_L1:
        int i1;
        return;
_L2:
        if ((i1 = a.getAdapter().getCount()) == 0) goto _L1; else goto _L3
_L3:
        ArrayList arraylist;
        int l2;
        int j3;
        float f2;
        int l3;
        int i4;
        float f3;
        int l4;
        boolean flag;
        boolean flag1;
        float f6;
        int i5;
        int j5;
        int i6;
        int k6;
        if (c == -1 && a != null)
        {
            c = a.getCurrentItem();
        }
        Paint paint = f;
        arraylist = new ArrayList();
        int j1 = a.getAdapter().getCount();
        int k1 = getWidth();
        int l1 = k1 / 2;
        int i2 = 0;
        do
        {
            if (i2 >= j1)
            {
                l2 = arraylist.size();
                if (c >= l2)
                {
                    int i7 = l2 - 1;
                    Rect rect;
                    CharSequence charsequence;
                    int j2;
                    int k2;
                    if (a == null)
                    {
                        throw new IllegalStateException("ViewPager has not been bound.");
                    } else
                    {
                        a.setCurrentItem(i7);
                        c = i7;
                        invalidate();
                        return;
                    }
                }
                break;
            }
            rect = new Rect();
            charsequence = a(i2);
            rect.right = (int)paint.measureText(charsequence, 0, charsequence.length());
            rect.bottom = (int)(paint.descent() - paint.ascent());
            j2 = rect.right - rect.left;
            k2 = rect.bottom - rect.top;
            rect.left = (int)(((float)l1 - (float)j2 / 2.0F) + ((float)(i2 - c) - d) * (float)k1);
            rect.right = j2 + rect.left;
            rect.top = 0;
            rect.bottom = k2;
            arraylist.add(rect);
            i2++;
        } while (true);
        int i3 = i1 - 1;
        float f1 = (float)getWidth() / 2.0F;
        j3 = getLeft();
        f2 = (float)j3 + u;
        int k3 = getWidth();
        l3 = getHeight();
        i4 = j3 + k3;
        f3 = (float)i4 - u;
        int j4 = c;
        float f5;
        Rect rect1;
        float f7;
        float f16;
        float f17;
        if ((double)d <= 0.5D)
        {
            float f18 = d;
            l4 = j4;
            f5 = f18;
        } else
        {
            int k4 = j4 + 1;
            float f4 = 1.0F - d;
            l4 = k4;
            f5 = f4;
        }
        if (f5 <= 0.25F)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (f5 <= 0.05F)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        f6 = (0.25F - f5) / 0.25F;
        rect1 = (Rect)arraylist.get(c);
        f7 = rect1.right - rect1.left;
        if ((float)rect1.left < f2)
        {
            b(rect1, f7, j3);
        }
        if ((float)rect1.right > f3)
        {
            a(rect1, f7, i4);
        }
        if (c <= 0) goto _L5; else goto _L4
_L4:
        k6 = -1 + c;
_L10:
        if (k6 >= 0) goto _L6; else goto _L5
_L5:
        if (c >= i3) goto _L8; else goto _L7
_L7:
        i6 = 1 + c;
_L11:
        if (i6 < i1) goto _L9; else goto _L8
_L8:
        i5 = h >>> 24;
        j5 = 0;
_L12:
        if (j5 >= i1)
        {
            float f8 = v;
            float f9 = p;
            Rect rect2;
            boolean flag2;
            CharSequence charsequence1;
            Paint paint1;
            boolean flag3;
            Rect rect3;
            int k5;
            int l5;
            float f10;
            float f11;
            float f12;
            Rect rect4;
            float f13;
            float f14;
            float f15;
            Rect rect5;
            int j6;
            Rect rect6;
            Rect rect7;
            int l6;
            Rect rect8;
            if (n == s.b)
            {
                l5 = 0;
                f16 = -f8;
                f17 = -f9;
                f11 = f16;
                f10 = f17;
            } else
            {
                l5 = l3;
                f10 = f9;
                f11 = f8;
            }
            j.reset();
            j.moveTo(0.0F, (float)l5 - f11 / 2.0F);
            j.lineTo(k3, (float)l5 - f11 / 2.0F);
            j.close();
            canvas.drawPath(j, l);
            f12 = (float)l5 - f11;
            switch (a()[m.ordinal()])
            {
            default:
                return;

            case 2: // '\002'
                j.reset();
                j.moveTo(f1, f12 - f10);
                j.lineTo(f1 + f10, f12);
                j.lineTo(f1 - f10, f12);
                j.close();
                canvas.drawPath(j, o);
                return;

            case 3: // '\003'
                break;
            }
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_1064;
_L6:
        rect7 = (Rect)arraylist.get(k6);
        if ((float)rect7.left < f2)
        {
            l6 = rect7.right - rect7.left;
            b(rect7, l6, j3);
            rect8 = (Rect)arraylist.get(k6 + 1);
            if ((float)rect7.right + s > (float)rect8.left)
            {
                rect7.left = (int)((float)(rect8.left - l6) - s);
                rect7.right = l6 + rect7.left;
            }
        }
        k6--;
          goto _L10
_L9:
        rect5 = (Rect)arraylist.get(i6);
        if ((float)rect5.right > f3)
        {
            j6 = rect5.right - rect5.left;
            a(rect5, j6, i4);
            rect6 = (Rect)arraylist.get(i6 - 1);
            if ((float)rect5.left - s < (float)rect6.right)
            {
                rect5.left = (int)((float)rect6.right + s);
                rect5.right = j6 + rect5.left;
            }
        }
        i6++;
          goto _L11
        rect2 = (Rect)arraylist.get(j5);
        if (rect2.left > j3 && rect2.left < i4 || rect2.right > j3 && rect2.right < i4)
        {
            if (j5 == l4)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            charsequence1 = a(j5);
            paint1 = f;
            if (flag2 && flag1 && g)
            {
                flag3 = true;
            } else
            {
                flag3 = false;
            }
            paint1.setFakeBoldText(flag3);
            f.setColor(h);
            if (flag2 && flag)
            {
                f.setAlpha(i5 - (int)(f6 * (float)i5));
            }
            if (j5 < l2 - 1)
            {
                rect3 = (Rect)arraylist.get(j5 + 1);
                if ((float)rect2.right + s > (float)rect3.left)
                {
                    k5 = rect2.right - rect2.left;
                    rect2.left = (int)((float)(rect3.left - k5) - s);
                    rect2.right = k5 + rect2.left;
                }
            }
            canvas.drawText(charsequence1, 0, charsequence1.length(), rect2.left, (float)rect2.bottom + t, f);
            if (flag2 && flag)
            {
                f.setColor(i);
                f.setAlpha((int)(f6 * (float)(i >>> 24)));
                canvas.drawText(charsequence1, 0, charsequence1.length(), rect2.left, (float)rect2.bottom + t, f);
            }
        }
        j5++;
          goto _L12
        if (!flag || l4 >= l2) goto _L1; else goto _L13
_L13:
        rect4 = (Rect)arraylist.get(l4);
        f13 = (float)rect4.right + q;
        f14 = (float)rect4.left - q;
        f15 = f12 - f10;
        j.reset();
        j.moveTo(f14, f12);
        j.lineTo(f13, f12);
        j.lineTo(f13, f15);
        j.lineTo(f14, f15);
        j.close();
        o.setAlpha((int)(255F * f6));
        canvas.drawPath(j, o);
        o.setAlpha(255);
        return;
    }

    protected void onMeasure(int i1, int j1)
    {
        int k1 = android.view.View.MeasureSpec.getSize(i1);
        if (android.view.View.MeasureSpec.getMode(j1) != 0x40000000) goto _L2; else goto _L1
_L1:
        float f1 = android.view.View.MeasureSpec.getSize(j1);
_L4:
        setMeasuredDimension(k1, (int)f1);
        return;
_L2:
        k.setEmpty();
        k.bottom = (int)(f.descent() - f.ascent());
        f1 = (float)(k.bottom - k.top) + v + r + t;
        if (m != r.a)
        {
            f1 += p;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onPageScrollStateChanged(int i1)
    {
        e = i1;
        if (b != null)
        {
            b.onPageScrollStateChanged(i1);
        }
    }

    public void onPageScrolled(int i1, float f1, int j1)
    {
        c = i1;
        d = f1;
        invalidate();
        if (b != null)
        {
            b.onPageScrolled(i1, f1, j1);
        }
    }

    public void onPageSelected(int i1)
    {
        if (e == 0)
        {
            c = i1;
            invalidate();
        }
        if (b != null)
        {
            b.onPageSelected(i1);
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        SavedState savedstate = (SavedState)parcelable;
        super.onRestoreInstanceState(savedstate.getSuperState());
        c = savedstate.a;
        requestLayout();
    }

    public Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        savedstate.a = c;
        return savedstate;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (!super.onTouchEvent(motionevent)) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        int i1;
        if (a == null || a.getAdapter().getCount() == 0)
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
    //                   5 384
    //                   6 412;
           goto _L3 _L4 _L5 _L6 _L5 _L3 _L7 _L8
_L3:
        return true;
_L4:
        y = MotionEventCompat.getPointerId(motionevent, 0);
        x = motionevent.getX();
        return true;
_L6:
        float f6 = MotionEventCompat.getX(motionevent, MotionEventCompat.findPointerIndex(motionevent, y));
        float f7 = f6 - x;
        if (!z && Math.abs(f7) > (float)w)
        {
            z = true;
        }
        if (z)
        {
            x = f6;
            if (a.isFakeDragging() || a.beginFakeDrag())
            {
                a.fakeDragBy(f7);
                return true;
            }
        }
          goto _L1
_L5:
        int i2;
        float f3;
        float f4;
        float f5;
        if (z)
        {
            break MISSING_BLOCK_LABEL_355;
        }
        i2 = a.getAdapter().getCount();
        int j2 = getWidth();
        float f1 = (float)j2 / 2.0F;
        float f2 = (float)j2 / 6F;
        f3 = f1 - f2;
        f4 = f2 + f1;
        f5 = motionevent.getX();
        if (f5 >= f3) goto _L10; else goto _L9
_L9:
        if (c <= 0)
        {
            break MISSING_BLOCK_LABEL_355;
        }
        if (i1 != 3)
        {
            a.setCurrentItem(-1 + c);
            return true;
        }
          goto _L1
_L10:
        if (f5 <= f4) goto _L12; else goto _L11
_L11:
        if (c >= i2 - 1)
        {
            break MISSING_BLOCK_LABEL_355;
        }
        if (i1 != 3)
        {
            a.setCurrentItem(1 + c);
            return true;
        }
          goto _L1
_L12:
        if (A != null && i1 != 3)
        {
            A;
            c;
        }
        z = false;
        y = -1;
        if (a.isFakeDragging())
        {
            a.endFakeDrag();
            return true;
        }
          goto _L1
_L7:
        int l1 = MotionEventCompat.getActionIndex(motionevent);
        x = MotionEventCompat.getX(motionevent, l1);
        y = MotionEventCompat.getPointerId(motionevent, l1);
        return true;
_L8:
        int j1 = MotionEventCompat.getActionIndex(motionevent);
        if (MotionEventCompat.getPointerId(motionevent, j1) == y)
        {
            int k1 = 0;
            if (j1 == 0)
            {
                k1 = 1;
            }
            y = MotionEventCompat.getPointerId(motionevent, k1);
        }
        x = MotionEventCompat.getX(motionevent, MotionEventCompat.findPointerIndex(motionevent, y));
        return true;
    }

    private class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new u();
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
