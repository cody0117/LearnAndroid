// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.viewpagerindicator;

import android.view.View;

// Referenced classes of package com.viewpagerindicator:
//            TabPageIndicator

final class o
    implements Runnable
{

    final TabPageIndicator a;
    private final View b;

    o(TabPageIndicator tabpageindicator, View view)
    {
        a = tabpageindicator;
        b = view;
        super();
    }

    public final void run()
    {
        int i = b.getLeft() - (a.getWidth() - b.getWidth()) / 2;
        a.smoothScrollTo(i, 0);
        TabPageIndicator.d(a);
    }
}
