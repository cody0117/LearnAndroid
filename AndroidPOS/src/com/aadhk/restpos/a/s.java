// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.view.View;
import android.widget.TextView;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.d.en;

// Referenced classes of package com.aadhk.restpos.a:
//            q, ad

final class s
    implements android.view.View.OnClickListener
{

    final int a;
    final int b;
    final ad c;
    final q d;

    s(q q1, int i, int j, ad ad1)
    {
        d = q1;
        a = i;
        b = j;
        c = ad1;
        super();
    }

    public final void onClick(View view)
    {
        OrderModifier ordermodifier = (OrderModifier)d.getChild(a, b);
        ordermodifier.setQty(1 + ordermodifier.getQty());
        if (ordermodifier.getType() == 2)
        {
            c.c.setText((new StringBuilder("-")).append(ordermodifier.getQty()).toString());
        } else
        {
            c.c.setText((new StringBuilder("+")).append(ordermodifier.getQty()).toString());
        }
        q.a(d).a();
    }
}
