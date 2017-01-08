// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.viewpagerindicator;

import android.content.Context;
import android.widget.TextView;

// Referenced classes of package com.viewpagerindicator:
//            h, TabPageIndicator

final class q extends TextView
{

    final TabPageIndicator a;
    private int b;

    public q(TabPageIndicator tabpageindicator, Context context)
    {
        a = tabpageindicator;
        super(context, null, h.d);
    }

    static void a(q q1, int i)
    {
        q1.b = i;
    }

    public final int a()
    {
        return b;
    }

    public final void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        if (TabPageIndicator.c(a) > 0 && getMeasuredWidth() > TabPageIndicator.c(a))
        {
            super.onMeasure(android.view.View.MeasureSpec.makeMeasureSpec(TabPageIndicator.c(a), 0x40000000), j);
        }
    }
}
