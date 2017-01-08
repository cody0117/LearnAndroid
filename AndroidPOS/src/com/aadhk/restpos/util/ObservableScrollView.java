// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;

// Referenced classes of package com.aadhk.restpos.util:
//            n

public class ObservableScrollView extends ScrollView
{

    private n a;

    public ObservableScrollView(Context context)
    {
        super(context);
        a = null;
    }

    public ObservableScrollView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = null;
    }

    public ObservableScrollView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = null;
    }

    public final void a(n n1)
    {
        a = n1;
    }

    protected void onScrollChanged(int i, int j, int k, int l)
    {
        super.onScrollChanged(i, j, k, l);
        if (a != null)
        {
            a.a(j);
        }
    }
}
