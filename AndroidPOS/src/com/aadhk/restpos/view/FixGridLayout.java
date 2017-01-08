// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class FixGridLayout extends ViewGroup
{

    private int a;
    private int b;

    public FixGridLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public FixGridLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void dispatchDraw(Canvas canvas)
    {
        int i = getWidth();
        int j = getHeight();
        Paint paint = new Paint();
        paint.setColor(0);
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        paint.setAntiAlias(true);
        canvas.drawRect(new Rect(0, 0, i, j), paint);
        super.dispatchDraw(canvas);
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        int i1 = a;
        int j1 = b;
        int k1 = (k - i) / i1;
        if (k1 < 0)
        {
            k1 = 1;
        }
        int l1 = getChildCount();
        int i2 = 0;
        int j2 = 0;
        int k2 = 0;
        int l2 = 0;
        while (l2 < l1) 
        {
            View view = getChildAt(l2);
            int i3 = view.getMeasuredWidth();
            int j3 = view.getMeasuredHeight();
            int k3 = k2 + (i1 - i3) / 2;
            int l3 = j2 + (j1 - j3) / 2;
            view.layout(k3, l3, i3 + k3, j3 + l3);
            if (i2 >= k1 - 1)
            {
                i2 = 0;
                k2 = 0;
                j2 += j1;
            } else
            {
                i2++;
                k2 += i1;
            }
            l2++;
        }
    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.makeMeasureSpec(a, 0x80000000);
        int l = android.view.View.MeasureSpec.makeMeasureSpec(b, 0x80000000);
        int i1 = getChildCount();
        for (int j1 = 0; j1 < i1; j1++)
        {
            getChildAt(j1).measure(k, l);
        }

        setMeasuredDimension(resolveSize(i1 * a, i), resolveSize(i1 * b, j));
    }
}
