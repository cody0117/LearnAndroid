// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.viewpagerindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;

final class d extends LinearLayout
{

    private static final int a[] = {
        0x1010129, 0x1010329, 0x101032a
    };
    private Drawable b;
    private int c;
    private int d;
    private int e;
    private int f;

    public d(Context context, int i)
    {
        super(context);
        TypedArray typedarray = context.obtainStyledAttributes(null, a, i, 0);
        setDividerDrawable(typedarray.getDrawable(0));
        f = typedarray.getDimensionPixelSize(2, 0);
        e = typedarray.getInteger(1, 0);
        typedarray.recycle();
    }

    private void a(Canvas canvas, int i)
    {
        b.setBounds(getPaddingLeft() + f, i, getWidth() - getPaddingRight() - f, i + d);
        b.draw(canvas);
    }

    private boolean a(int i)
    {
        if (i != 0 && i != getChildCount() && (2 & e) != 0)
        {
            int j = i - 1;
            while (j >= 0) 
            {
                if (getChildAt(j).getVisibility() != 8)
                {
                    return true;
                }
                j--;
            }
        }
        return false;
    }

    private void b(Canvas canvas, int i)
    {
        b.setBounds(i, getPaddingTop() + f, i + c, getHeight() - getPaddingBottom() - f);
        b.draw(canvas);
    }

    protected final void measureChildWithMargins(View view, int i, int j, int k, int l)
    {
        int i1 = indexOfChild(view);
        int j1 = getOrientation();
        android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)view.getLayoutParams();
        int k1;
        if (a(i1))
        {
            if (j1 == 1)
            {
                layoutparams.topMargin = d;
            } else
            {
                layoutparams.leftMargin = c;
            }
        }
        k1 = getChildCount();
        if (i1 == k1 - 1 && a(k1))
        {
            if (j1 == 1)
            {
                layoutparams.bottomMargin = d;
            } else
            {
                layoutparams.rightMargin = c;
            }
        }
        super.measureChildWithMargins(view, i, j, k, l);
    }

    protected final void onDraw(Canvas canvas)
    {
        if (b == null) goto _L2; else goto _L1
_L1:
        if (getOrientation() != 1) goto _L4; else goto _L3
_L3:
        int l;
        int i1;
        l = getChildCount();
        i1 = 0;
_L7:
        if (i1 < l) goto _L6; else goto _L5
_L5:
        if (a(l))
        {
            View view3 = getChildAt(l - 1);
            View view2;
            android.widget.LinearLayout.LayoutParams layoutparams1;
            int j1;
            if (view3 == null)
            {
                j1 = getHeight() - getPaddingBottom() - d;
            } else
            {
                j1 = view3.getBottom();
            }
            a(canvas, j1);
        }
_L2:
        super.onDraw(canvas);
        return;
_L6:
        view2 = getChildAt(i1);
        if (view2 != null && view2.getVisibility() != 8 && a(i1))
        {
            layoutparams1 = (android.widget.LinearLayout.LayoutParams)view2.getLayoutParams();
            a(canvas, view2.getTop() - layoutparams1.topMargin);
        }
        i1++;
          goto _L7
_L4:
        int i;
        int j;
        i = getChildCount();
        j = 0;
_L8:
label0:
        {
            if (j < i)
            {
                break label0;
            }
            if (a(i))
            {
                View view1 = getChildAt(i - 1);
                View view;
                android.widget.LinearLayout.LayoutParams layoutparams;
                int k;
                if (view1 == null)
                {
                    k = getWidth() - getPaddingRight() - c;
                } else
                {
                    k = view1.getRight();
                }
                b(canvas, k);
            }
        }
          goto _L2
        view = getChildAt(j);
        if (view != null && view.getVisibility() != 8 && a(j))
        {
            layoutparams = (android.widget.LinearLayout.LayoutParams)view.getLayoutParams();
            b(canvas, view.getLeft() - layoutparams.leftMargin);
        }
        j++;
          goto _L8
    }

    public final void setDividerDrawable(Drawable drawable)
    {
        if (drawable == b)
        {
            return;
        }
        b = drawable;
        boolean flag;
        if (drawable != null)
        {
            c = drawable.getIntrinsicWidth();
            d = drawable.getIntrinsicHeight();
        } else
        {
            c = 0;
            d = 0;
        }
        flag = false;
        if (drawable == null)
        {
            flag = true;
        }
        setWillNotDraw(flag);
        requestLayout();
    }

}
