// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.ac;
import com.aadhk.restpos.b.ad;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.w;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.f.ab;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class i
{

    private Context a;
    private r b;
    private ac c;
    private ad d;
    private w e;
    private ab f;

    public i(Context context)
    {
        a = context;
        b = new r(context);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = com.aadhk.restpos.b.f.a().b();
        c = new ac(sqlitedatabase);
        d = new ad(sqlitedatabase);
        e = new w(sqlitedatabase);
        f = new ab(a);
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return f.a(d.a());
        } else
        {
            hashmap.put("serviceStatus", "3");
            return hashmap;
        }
    }

    public final Map a(int i1)
    {
        return e.b(i1);
    }

    public final Map a(String s)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return f.a(s);
        }
        com.aadhk.restpos.bean.User user = c.a(s);
        if (user != null)
        {
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", user);
            return hashmap;
        } else
        {
            hashmap.put("serviceStatus", "3");
            return hashmap;
        }
    }

    public final void a(Company company, int i1)
    {
        d.a(company, i1);
    }

    public final void a(List list, int i1)
    {
        d.a(list, i1);
    }

    public final void b(List list, int i1)
    {
        d.b(list, i1);
    }

    public final void c(List list, int i1)
    {
        d.c(list, i1);
    }

    public final void d(List list, int i1)
    {
        d.d(list, i1);
    }

    public final void e(List list, int i1)
    {
        d.e(list, i1);
    }

    public final void f(List list, int i1)
    {
        d.f(list, i1);
    }

    public final void g(List list, int i1)
    {
        d.g(list, i1);
    }

    public final void h(List list, int i1)
    {
        d.h(list, i1);
    }

    public final void i(List list, int i1)
    {
        d.i(list, i1);
    }

    public final void j(List list, int i1)
    {
        d.j(list, i1);
    }

    public final void k(List list, int i1)
    {
        d.k(list, i1);
    }

    public final void l(List list, int i1)
    {
        d.l(list, i1);
    }

    public final void m(List list, int i1)
    {
        d.m(list, i1);
    }

    public final void n(List list, int i1)
    {
        d.n(list, i1);
    }

    public final void o(List list, int i1)
    {
        d.o(list, i1);
    }

    public final void p(List list, int i1)
    {
        d.q(list, i1);
    }

    public final void q(List list, int i1)
    {
        d.p(list, i1);
    }
}
