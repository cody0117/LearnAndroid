// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.viewpagerindicator;

import android.view.View;

// Referenced classes of package com.viewpagerindicator:
//            IconPageIndicator

final class b
    implements Runnable
{

    final IconPageIndicator a;
    private final View b;

    b(IconPageIndicator iconpageindicator, View view)
    {
        a = iconpageindicator;
        b = view;
        super();
    }

    public final void run()
    {
        int i = b.getLeft() - (a.getWidth() - b.getWidth()) / 2;
        a.smoothScrollTo(i, 0);
        IconPageIndicator.a(a);
    }
}
