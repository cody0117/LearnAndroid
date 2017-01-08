// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.GridView;

public class GridViewAutoWidth extends GridView
{

    public GridViewAutoWidth(Context context)
    {
        super(context);
    }

    public GridViewAutoWidth(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public GridViewAutoWidth(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public void onMeasure(int i, int j)
    {
        super.onMeasure(i, android.view.View.MeasureSpec.makeMeasureSpec(0x1fffffff, 0x80000000));
    }
}
