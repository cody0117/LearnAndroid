// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.widget.HorizontalScrollView;
import android.widget.TextView;

// Referenced classes of package com.viewpagerindicator:
//            f, n, d, h, 
//            m, j, c, q, 
//            o, p

public class TabPageIndicator extends HorizontalScrollView
    implements f
{

    private static final CharSequence a = "";
    private Runnable b;
    private final android.view.View.OnClickListener c;
    private final d d;
    private ViewPager e;
    private android.support.v4.view.ViewPager.OnPageChangeListener f;
    private int g;
    private int h;
    private int i;
    private int j;
    private p k;

    public TabPageIndicator(Context context)
    {
        this(context, null);
    }

    public TabPageIndicator(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = new n(this);
        setHorizontalScrollBarEnabled(false);
        d = new d(context, h.d);
        addView(d, new android.view.ViewGroup.LayoutParams(-2, -1));
        Resources resources = getResources();
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, m.c, h.d, 0);
        i = typedarray.getColor(1, resources.getColor(j.f));
        j = typedarray.getColor(2, resources.getColor(j.g));
    }

    static ViewPager a(TabPageIndicator tabpageindicator)
    {
        return tabpageindicator.e;
    }

    private void a()
    {
        d.removeAllViews();
        PagerAdapter pageradapter = e.getAdapter();
        boolean flag = pageradapter instanceof c;
        c c1 = null;
        if (flag)
        {
            c1 = (c)pageradapter;
        }
        int l = pageradapter.getCount();
        int i1 = 0;
        do
        {
            if (i1 >= l)
            {
                if (h > l)
                {
                    h = l - 1;
                }
                a(h);
                requestLayout();
                return;
            }
            CharSequence charsequence = pageradapter.getPageTitle(i1);
            CharSequence charsequence1;
            int j1;
            q q1;
            if (charsequence == null)
            {
                charsequence1 = a;
            } else
            {
                charsequence1 = charsequence;
            }
            if (c1 != null)
            {
                j1 = c1.a();
            } else
            {
                j1 = 0;
            }
            q1 = new q(this, getContext());
            q.a(q1, i1);
            q1.setFocusable(true);
            q1.setOnClickListener(c);
            q1.setText(charsequence1);
            if (j1 != 0)
            {
                q1.setCompoundDrawablesWithIntrinsicBounds(j1, 0, 0, 0);
            }
            d.addView(q1, new android.widget.LinearLayout.LayoutParams(0, -1, 1.0F));
            i1++;
        } while (true);
    }

    static p b(TabPageIndicator tabpageindicator)
    {
        return tabpageindicator.k;
    }

    static int c(TabPageIndicator tabpageindicator)
    {
        return tabpageindicator.g;
    }

    static void d(TabPageIndicator tabpageindicator)
    {
        tabpageindicator.b = null;
    }

    public final void a(int l)
    {
        if (e == null)
        {
            throw new IllegalStateException("ViewPager has not been bound.");
        }
        h = l;
        e.setCurrentItem(l);
        int i1 = d.getChildCount();
        int j1 = 0;
        do
        {
            if (j1 >= i1)
            {
                return;
            }
            TextView textview = (TextView)d.getChildAt(j1);
            boolean flag;
            if (j1 == l)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            textview.setSelected(flag);
            if (flag)
            {
                textview.setTextColor(i);
                textview.setTypeface(Typeface.DEFAULT_BOLD);
                android.view.View view = d.getChildAt(l);
                if (b != null)
                {
                    removeCallbacks(b);
                }
                b = new o(this, view);
                post(b);
            } else
            {
                textview.setTextColor(j);
                textview.setTypeface(Typeface.DEFAULT);
            }
            j1++;
        } while (true);
    }

    public final void a(android.support.v4.view.ViewPager.OnPageChangeListener onpagechangelistener)
    {
        f = onpagechangelistener;
    }

    public final void a(ViewPager viewpager)
    {
        if (e == viewpager)
        {
            return;
        }
        if (e != null)
        {
            e.setOnPageChangeListener(null);
        }
        if (viewpager.getAdapter() == null)
        {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        } else
        {
            e = viewpager;
            viewpager.setOnPageChangeListener(this);
            a();
            return;
        }
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (b != null)
        {
            post(b);
        }
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (b != null)
        {
            removeCallbacks(b);
        }
    }

    public void onMeasure(int l, int i1)
    {
        int j1 = android.view.View.MeasureSpec.getMode(l);
        boolean flag;
        int k1;
        int l1;
        int i2;
        if (j1 == 0x40000000)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setFillViewport(flag);
        k1 = d.getChildCount();
        if (k1 > 1 && (j1 == 0x40000000 || j1 == 0x80000000))
        {
            if (k1 > 2)
            {
                g = (int)(0.4F * (float)android.view.View.MeasureSpec.getSize(l));
            } else
            {
                g = android.view.View.MeasureSpec.getSize(l) / 2;
            }
        } else
        {
            g = -1;
        }
        l1 = getMeasuredWidth();
        super.onMeasure(l, i1);
        i2 = getMeasuredWidth();
        if (flag && l1 != i2)
        {
            a(h);
        }
    }

    public void onPageScrollStateChanged(int l)
    {
        if (f != null)
        {
            f.onPageScrollStateChanged(l);
        }
    }

    public void onPageScrolled(int l, float f1, int i1)
    {
        if (f != null)
        {
            f.onPageScrolled(l, f1, i1);
        }
    }

    public void onPageSelected(int l)
    {
        a(l);
        if (f != null)
        {
            f.onPageSelected(l);
        }
    }

}
