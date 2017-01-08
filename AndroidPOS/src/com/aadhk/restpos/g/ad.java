// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import android.text.TextUtils;
import com.aadhk.restpos.b.ab;
import com.aadhk.restpos.b.b;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.i;
import com.aadhk.restpos.b.k;
import com.aadhk.restpos.b.l;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.b.o;
import com.aadhk.restpos.b.p;
import com.aadhk.restpos.b.s;
import com.aadhk.restpos.b.y;
import com.aadhk.restpos.b.z;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.PriceSchedule;
import com.aadhk.restpos.f.da;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class ad
{

    private Context a;
    private r b;
    private da c;
    private i d;
    private p e;
    private o f;
    private y g;
    private n h;
    private ab i;
    private b j;
    private s k;
    private l l;
    private z m;
    private k n;

    public ad(Context context)
    {
        a = context;
        b = new r(context);
        c = new da(context);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = com.aadhk.restpos.b.f.a().b();
        d = new i(sqlitedatabase);
        e = new p(sqlitedatabase);
        f = new o(sqlitedatabase);
        g = new y(sqlitedatabase);
        h = new n(sqlitedatabase);
        i = new ab(sqlitedatabase);
        j = new b(sqlitedatabase);
        k = new s(sqlitedatabase);
        l = new l(sqlitedatabase);
        m = new z(sqlitedatabase);
        n = new k(sqlitedatabase);
    }

    public final PriceSchedule a(long l1, String s1, String s2, int i1)
    {
        return k.a(l1, s1, s2, i1);
    }

    public final List a()
    {
        return j.b();
    }

    public final List a(int i1)
    {
        return n.b(i1);
    }

    public final List a(long l1, boolean flag, double d1, double d2, 
            double d3, int i1)
    {
        return d.a(l1, flag, d1, d2, d3, i1);
    }

    public final List a(String s1, int i1, int j1, int k1, boolean flag, double d1, 
            double d2, double d3, int l1)
    {
        return l.a(s1, i1, j1, k1, flag, d1, d2, d3, l1);
    }

    public final Map a(long l1)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(l1);
        } else
        {
            List list = e.a(l1);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map a(long l1, int i1)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(l1, i1);
        } else
        {
            f.a(l1, i1);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(long l1, long l2, long l3)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(l1, l2, l3);
        } else
        {
            e.a(l1, l2);
            hashmap.put("serviceData", e.b(l3));
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(Order order)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(order);
        } else
        {
            i.c(order);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(Order order, Order order1, String s1)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(order, order1, s1);
        } else
        {
            long l1 = f.a(order, order1, s1);
            Order order2 = f.c(l1);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", order2);
            return hashmap;
        }
    }

    public final Map a(Order order, List list)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(order, list);
        } else
        {
            e.a(order, list);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(Order order, List list, Customer customer)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(order, list, customer);
        }
        String s1;
        if (TextUtils.isEmpty(b.u()))
        {
            s1 = b.s();
        } else
        {
            s1 = com.aadhk.restpos.util.p.f(b.u());
        }
        order.setOrderNum((new StringBuilder()).append(b.r()).append(s1).append(b.t()).toString());
        i.a(order, list, customer);
        b.a("prefOrderNum", s1);
        hashmap.put("serviceData", order);
        hashmap.put("serviceStatus", "1");
        return hashmap;
    }

    public final Map a(OrderItem orderitem)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(orderitem);
        } else
        {
            e.a(orderitem);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(String s1)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(s1);
        } else
        {
            hashmap.put("serviceData", f.a(s1));
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(String s1, long l1)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(s1, l1);
        } else
        {
            f.a(s1, l1);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final List b()
    {
        return h.a();
    }

    public final Map b(long l1)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.d(l1);
        } else
        {
            hashmap.put("serviceData", Boolean.valueOf(g.c(l1)));
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map b(OrderItem orderitem)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(orderitem);
        } else
        {
            e.b(orderitem);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map c(long l1)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(l1);
        } else
        {
            hashmap.put("serviceData", g.b(l1));
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map c(OrderItem orderitem)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.c(orderitem);
        } else
        {
            e.c(orderitem);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map d(long l1)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.c(l1);
        } else
        {
            hashmap.put("serviceData", m.b(l1));
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }
}
