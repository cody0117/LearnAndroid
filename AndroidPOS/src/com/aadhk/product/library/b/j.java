// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.b;

import android.view.View;

// Referenced classes of package com.aadhk.product.library.b:
//            i, h

final class j
    implements android.view.View.OnClickListener
{

    final int a;
    final i b;

    j(i k, int l)
    {
        b = k;
        a = l;
        super();
    }

    public final void onClick(View view)
    {
        boolean aflag[] = h.b(b.a);
        int k = a;
        boolean flag;
        if (!h.b(b.a)[a])
        {
            flag = true;
        } else
        {
            flag = false;
        }
        aflag[k] = flag;
        b.notifyDataSetChanged();
    }
}
