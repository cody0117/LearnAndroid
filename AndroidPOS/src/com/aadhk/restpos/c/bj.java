// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.View;
import android.widget.TextView;
import com.aadhk.restpos.bean.Modifier;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            bk, bh, bf

final class bj
    implements android.view.View.OnClickListener
{

    final Modifier a;
    final bk b;
    final bh c;

    bj(bh bh1, Modifier modifier, bk bk1)
    {
        c = bh1;
        a = modifier;
        b = bk1;
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
        ordermodifier.setItemid(bf.e(c.a).getItemId());
        ordermodifier.setModifierName(a.getName());
        i = bf.f(c.a).indexOf(ordermodifier);
        if (i >= 0)
        {
            ((OrderModifier)bf.f(c.a).get(i)).setQty(a.getQty());
            return;
        } else
        {
            ordermodifier.setQty(a.getQty());
            ordermodifier.setModifierPrice(a.getPrice());
            ordermodifier.setModifierCost(a.getCost());
            ordermodifier.setModifierName(a.getName());
            ordermodifier.setType(a.getType());
            bf.f(c.a).add(ordermodifier);
            return;
        }
    }
}
