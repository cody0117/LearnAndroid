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
//            aq, ap

final class ar
    implements android.view.View.OnClickListener
{

    final Modifier a;
    final aq b;

    ar(aq aq1, Modifier modifier)
    {
        b = aq1;
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
                ordermodifier.setModifierId(a.getId());
                i = ap.e(b.a).indexOf(ordermodifier);
                if (i >= 0)
                {
                    ordermodifier1 = (OrderModifier)ap.e(b.a).get(i);
                    if (a.getQty() != 0)
                    {
                        break label0;
                    }
                    ap.e(b.a).remove(i);
                }
            }
            return;
        }
        ordermodifier1.setQty(a.getQty());
    }
}
