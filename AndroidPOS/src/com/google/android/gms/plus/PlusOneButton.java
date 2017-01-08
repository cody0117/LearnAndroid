// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.internal.qb;
import com.google.android.gms.plus.internal.e;

// Referenced classes of package com.google.android.gms.plus:
//            a, b

public final class PlusOneButton extends FrameLayout
{

    private View a;
    private int b;
    private int c;
    private String d;
    private int e;
    private b f;

    public PlusOneButton(Context context, AttributeSet attributeset)
    {
        int i = 2;
        super(context, attributeset);
        String s = qb.a("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "size", context, attributeset);
        int j;
        String s1;
        Context context1;
        b b1;
        if ("SMALL".equalsIgnoreCase(s))
        {
            j = 0;
        } else
        if ("MEDIUM".equalsIgnoreCase(s))
        {
            j = 1;
        } else
        if ("TALL".equalsIgnoreCase(s))
        {
            j = i;
        } else
        {
            j = 3;
        }
        b = j;
        s1 = qb.a("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "annotation", context, attributeset);
        if (!"INLINE".equalsIgnoreCase(s1))
        {
            if ("NONE".equalsIgnoreCase(s1))
            {
                i = 0;
            } else
            {
                i = 1;
            }
        }
        c = i;
        e = -1;
        context1 = getContext();
        if (a != null)
        {
            removeView(a);
        }
        a = com.google.android.gms.plus.internal.e.a(context1, b, c, d, e);
        b1 = f;
        f = b1;
        a.setOnClickListener(new a(this, b1));
        addView(a);
        if (!isInEditMode());
    }

    static View a(PlusOneButton plusonebutton)
    {
        return plusonebutton.a;
    }

    static int b(PlusOneButton plusonebutton)
    {
        return plusonebutton.e;
    }

    protected final void onLayout(boolean flag, int i, int j, int k, int l)
    {
        a.layout(0, 0, k - i, l - j);
    }

    protected final void onMeasure(int i, int j)
    {
        View view = a;
        measureChild(view, i, j);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }
}
