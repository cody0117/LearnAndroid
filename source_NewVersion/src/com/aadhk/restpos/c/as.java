// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.View;
import android.widget.TextView;
import com.aadhk.restpos.bean.Modifier;
import com.aadhk.restpos.bean.OrderModifier;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            at, aq, ap

final class as
    implements android.view.View.OnClickListener
{

    final Modifier a;
    final at b;
    final aq c;

    as(aq aq1, Modifier modifier, at at1)
    {
        c = aq1;
        a = modifier;
        b = at1;
        super();
    }

    public final void onClick(View view)
    {
        a.setQty(1 + a.getQty());
        OrderModifier ordermodifier;
        int i;
        if (a.getType() == 2)
        {
            b.e.setText((new StringBuilder("-")).append(a.getQty()).toString());
        } else
        {
            b.e.setText((new StringBuilder("+")).append(a.getQty()).toString());
        }
        ordermodifier = new OrderModifier();
        ordermodifier.setModifierId(a.getId());
        i = ap.e(c.a).indexOf(ordermodifier);
        if (i >= 0)
        {
            ((OrderModifier)ap.e(c.a).get(i)).setQty(a.getQty());
            return;
        } else
        {
            ordermodifier.setQty(a.getQty());
            ordermodifier.setModifierPrice(a.getPrice());
            ordermodifier.setModifierName(a.getName());
            ordermodifier.setType(a.getType());
            ap.e(c.a).add(ordermodifier);
            return;
        }
    }
}
