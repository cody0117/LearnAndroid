// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.view.View;
import com.aadhk.restpos.bean.Item;

// Referenced classes of package com.aadhk.restpos.a:
//            h

final class k
    implements android.view.View.OnClickListener
{

    final Item a;
    final h b;

    k(h h1, Item item)
    {
        b = h1;
        a = item;
        super();
    }

    public final void onClick(View view)
    {
        h.a(b, a);
    }
}
