// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.RolePermission;
import com.aadhk.restpos.c.bl;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            dv, du, dx

final class dw
    implements f
{

    final List a;
    final OrderItem b;
    final dv c;

    dw(dv dv1, List list, OrderItem orderitem)
    {
        c = dv1;
        a = list;
        b = orderitem;
        super();
    }

    public final void a(Object obj)
    {
        Integer integer = (Integer)a.get(((Integer)obj).intValue());
        if (integer.intValue() == 0)
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(b);
            du.e(c.a).a(arraylist, true);
        } else
        {
            if (integer.intValue() == 1)
            {
                du.a(c.a, b);
                return;
            }
            if (integer.intValue() == 2)
            {
                du.b(c.a, b);
                return;
            }
            if (integer.intValue() == 3)
            {
                if (du.i(c.a).isManagerPermission())
                {
                    bl bl1 = new bl(du.e(c.a));
                    bl1.a(new dx(this));
                    bl1.show();
                    return;
                } else
                {
                    du.c(c.a, b);
                    return;
                }
            }
            if (integer.intValue() == 4)
            {
                du.d(c.a, b);
                return;
            }
            if (integer.intValue() == 5)
            {
                du.e(c.a, b);
                return;
            }
        }
    }
}
