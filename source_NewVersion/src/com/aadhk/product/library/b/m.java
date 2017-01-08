// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.b;

import android.view.View;

// Referenced classes of package com.aadhk.product.library.b:
//            l, k

final class m
    implements android.view.View.OnClickListener
{

    final int a;
    final l b;

    m(l l1, int i)
    {
        b = l1;
        a = i;
        super();
    }

    public final void onClick(View view)
    {
        k.a(b.a, a);
        b.notifyDataSetChanged();
    }
}
