// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.viewpagerindicator;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.View;
import android.widget.HorizontalScrollView;

// Referenced classes of package com.viewpagerindicator:
//            f, d, h, b

public class IconPageIndicator extends HorizontalScrollView
    implements f
{

    private final d a;
    private ViewPager b;
    private android.support.v4.view.ViewPager.OnPageChangeListener c;
    private Runnable d;
    private int e;

    public IconPageIndicator(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setHorizontalScrollBarEnabled(false);
        a = new d(context, h.b);
        addView(a, new android.widget.FrameLayout.LayoutParams(-2, -1, 17));
    }

    static void a(IconPageIndicator iconpageindicator)
    {
        iconpageindicator.d = null;
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (d != null)
        {
            post(d);
        }
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (d != null)
        {
            removeCallbacks(d);
        }
    }

    public void onPageScrollStateChanged(int i)
    {
        if (c != null)
        {
            c.onPageScrollStateChanged(i);
        }
    }

    public void onPageScrolled(int i, float f1, int j)
    {
        if (c != null)
        {
            c.onPageScrolled(i, f1, j);
        }
    }

    public void onPageSelected(int i)
    {
        if (b == null)
        {
            throw new IllegalStateException("ViewPager has not been bound.");
        }
        e = i;
        b.setCurrentItem(i);
        int j = a.getChildCount();
        int k = 0;
        do
        {
            if (k >= j)
            {
                if (c != null)
                {
                    c.onPageSelected(i);
                }
                return;
            }
            View view = a.getChildAt(k);
            boolean flag;
            if (k == i)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            view.setSelected(flag);
            if (flag)
            {
                View view1 = a.getChildAt(i);
                if (d != null)
                {
                    removeCallbacks(d);
                }
                d = new b(this, view1);
                post(d);
            }
            k++;
        } while (true);
    }
}
