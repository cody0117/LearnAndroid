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
//            bh, bf

final class bi
    implements android.view.View.OnClickListener
{

    final Modifier a;
    final bh b;

    bi(bh bh1, Modifier modifier)
    {
        b = bh1;
        a = modifier;
        super();
    }

    public final void onClick(View view)
    {
        OrderModifier ordermodifier1;
label0:
        {
            TextView textview = (TextView)view;
            if (a.getQty() > 0)
            {
                a.setQty(-1 + a.getQty());
                OrderModifier ordermodifier;
                int i;
                if (a.getType() == 2)
                {
                    textview.setText((new StringBuilder("-")).append(a.getQty()).toString());
                } else
                {
                    textview.setText((new StringBuilder("+")).append(a.getQty()).toString());
                }
                ordermodifier = new OrderModifier();
                ordermodifier.setItemid(bf.e(b.a).getItemId());
                ordermodifier.setModifierName(a.getName());
                i = bf.f(b.a).indexOf(ordermodifier);
                if (i >= 0)
                {
                    ordermodifier1 = (OrderModifier)bf.f(b.a).get(i);
                    if (a.getQty() != 0)
                    {
                        break label0;
                    }
                    bf.f(b.a).remove(i);
                }
            }
            return;
        }
        ordermodifier1.setQty(a.getQty());
    }
}
