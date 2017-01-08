// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.SplitBill;
import com.aadhk.restpos.util.m;
import com.aadhk.restpos.util.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ei, du

final class ej
    implements f
{

    final List a;
    final ei b;

    ej(ei ei1, List list)
    {
        b = ei1;
        a = list;
        super();
    }

    public final void a(Object obj)
    {
        SplitBill splitbill = (SplitBill)a.get(((Integer)obj).intValue());
        if (du.a(b.a).getSplitType() != 2) goto _L2; else goto _L1
_L1:
        ArrayList arraylist = new ArrayList();
        Iterator iterator = du.d(b.a).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            OrderItem orderitem = (OrderItem)iterator.next();
            if (orderitem.getBillId() == splitbill.getId())
            {
                arraylist.add(orderitem);
            }
        } while (true);
        du.b(b.a, arraylist);
_L4:
        du.a(b.a).setSubTotal(splitbill.getAmount());
        du.a(b.a).setTax1Amt(com.aadhk.restpos.d.du.m(b.a));
        du.a(b.a).setTax2Amt(du.o(b.a));
        du.a(b.a).setTax3Amt(du.p(b.a));
        du.a(b.a).setBillId(splitbill.getId());
        q.a(du.e(b.a), du.a(b.a), null);
        du.e(b.a).finish();
        return;
_L2:
        if (du.a(b.a).getSplitType() == 1)
        {
            du.a(b.a, m.a(com.aadhk.restpos.d.du.m(b.a), splitbill.getAmount(), du.a(b.a).getSubTotal(), du.n(b.a)));
            du.b(b.a, m.a(du.o(b.a), splitbill.getAmount(), du.a(b.a).getSubTotal(), du.n(b.a)));
            du.c(b.a, m.a(du.p(b.a), splitbill.getAmount(), du.a(b.a).getSubTotal(), du.n(b.a)));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
