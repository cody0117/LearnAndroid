// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.RolePermission;
import com.aadhk.restpos.c.au;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            bl, bk, bn

final class bm
    implements f
{

    final List a;
    final OrderItem b;
    final bl c;

    bm(bl bl1, List list, OrderItem orderitem)
    {
        c = bl1;
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
            bk.d(c.a).a(arraylist, true);
        } else
        {
            if (integer.intValue() == 1)
            {
                bk.a(c.a, b);
                return;
            }
            if (integer.intValue() == 2)
            {
                bk.b(c.a, b);
                return;
            }
            if (integer.intValue() == 3)
            {
                if (bk.c(c.a).isManagerPermission())
                {
                    au au1 = new au(bk.d(c.a));
                    au1.a(new bn(this));
                    au1.show();
                    return;
                } else
                {
                    bk.c(c.a, b);
                    return;
                }
            }
            if (integer.intValue() == 4)
            {
                bk.d(c.a, b);
                return;
            }
        }
    }
}
