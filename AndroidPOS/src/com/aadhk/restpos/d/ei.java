// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.product.library.b.a;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.SplitBill;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.util.m;
import com.aadhk.restpos.util.p;
import com.aadhk.restpos.util.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            du, ej

final class ei
    implements c
{

    final du a;
    private Map b;

    private ei(du du1)
    {
        a = du1;
        super();
    }

    ei(du du1, byte byte0)
    {
        this(du1);
    }

    public final void a()
    {
        b = du.b(a).c(com.aadhk.restpos.d.du.a(a).getId());
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            List list = (List)b.get("serviceData");
            Iterator iterator = list.iterator();
            double d;
            for (d = 0.0D; iterator.hasNext(); d += ((SplitBill)iterator.next()).getAmount()) { }
            if (m.a(d, com.aadhk.restpos.d.du.a(a).getSubTotal()))
            {
                ArrayList arraylist = new ArrayList();
                Iterator iterator1 = list.iterator();
                do
                {
                    if (!iterator1.hasNext())
                    {
                        break;
                    }
                    SplitBill splitbill = (SplitBill)iterator1.next();
                    if (!splitbill.isPaid())
                    {
                        arraylist.add(splitbill);
                    }
                } while (true);
                if (!arraylist.isEmpty())
                {
                    String as[] = new String[arraylist.size()];
                    for (int i = 0; i < arraylist.size(); i++)
                    {
                        as[i] = p.a(((SplitBill)arraylist.get(i)).getAmount(), du.l(a));
                    }

                    a a1 = new a(du.e(a), as);
                    a1.setTitle(0x7f08021f);
                    a1.a(new ej(this, arraylist));
                    a1.show();
                }
                return;
            }
            if (com.aadhk.restpos.d.du.a(a).getSplitType() == 2)
            {
                bo bo1 = new bo(du.e(a));
                bo1.a(0x7f080220);
                bo1.show();
                return;
            } else
            {
                bo bo2 = new bo(du.e(a));
                bo2.a(0x7f080220);
                bo2.show();
                return;
            }
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(du.e(a));
            Toast.makeText(du.e(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(du.e(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(du.e(a), 0x7f080247, 1).show();
            return;
        }
    }
}
