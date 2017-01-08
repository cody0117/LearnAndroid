// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.c.ax;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            e, i

final class f
    implements android.view.View.OnClickListener
{

    final Item a;
    final i b;
    final e c;
    private OrderItem d;

    f(e e1, Item item, i j)
    {
        c = e1;
        a = item;
        b = j;
        super();
    }

    public final void onClick(View view)
    {
        d = e.a(c, a);
        a.setNum(1 + a.getNum());
        b.c.setText((new StringBuilder("x")).append(a.getNum()).toString());
        e.a(c).add(d);
        e.b(c).b(e.a(c));
        e.b(c).c();
        if (a.isWarn())
        {
            if (a.getQty() <= 0)
            {
                a.setQty(0);
            } else
            {
                a.setQty(-1 + a.getQty());
            }
            if (a.getQty() <= a.getWarnQty())
            {
                ax ax1 = new ax(e.b(c));
                String s = c.c.getString(0x7f0901f7);
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(a.getQty());
                ax1.a(String.format(s, aobj));
                ax1.show();
            }
        }
    }
}
