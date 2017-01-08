// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.view.View;
import com.aadhk.product.library.b.a;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.OrderItem;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            q, w

final class v
    implements android.view.View.OnClickListener
{

    final OrderItem a;
    final q b;

    v(q q1, OrderItem orderitem)
    {
        b = q1;
        a = orderitem;
        super();
    }

    public final void onClick(View view)
    {
label0:
        {
            if (!a.getOrderModifiers().isEmpty())
            {
                com.aadhk.restpos.a.q.a(b, new String[-1 + q.c(b).length]);
                int i = 0;
                do
                {
                    if (i >= q.c(b).length)
                    {
                        break label0;
                    }
                    if (q.c(b)[i].equals(q.b(b).getString(0x7f080137)))
                    {
                        if (i == -1 + q.c(b).length)
                        {
                            break label0;
                        }
                        q.d(b)[i] = q.c(b)[i + 1];
                        i++;
                    } else
                    {
                        q.d(b)[i] = q.c(b)[i];
                    }
                    i++;
                } while (true);
            }
            com.aadhk.restpos.a.q.a(b, q.c(b));
        }
        a a1 = new a(q.b(b), q.d(b));
        a1.a();
        a1.a(new w(this));
        a1.show();
    }
}
