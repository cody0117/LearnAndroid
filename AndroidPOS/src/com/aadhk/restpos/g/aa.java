// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.c;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.i;
import com.aadhk.restpos.b.t;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.f.cq;
import com.aadhk.restpos.util.l;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public final class aa
{

    private r a;
    private cq b;
    private c c;
    private t d;
    private i e;

    public aa(Context context)
    {
        a = new r(context);
        b = new cq(context);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = f.a().b();
        c = new c(sqlitedatabase);
        d = new t(sqlitedatabase);
        e = new i(sqlitedatabase);
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        if (a.v())
        {
            return b.a();
        } else
        {
            hashmap.put("prefOrderNum", a.u());
            hashmap.put("prefOrderNumPrefix", a.r());
            hashmap.put("prefOrderNumInitial", a.s());
            hashmap.put("prefOrderNumSuffix", a.t());
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(Company company)
    {
        HashMap hashmap = new HashMap();
        if (a.v())
        {
            return b.a(company);
        } else
        {
            c.c(company);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(Company company, int j)
    {
        HashMap hashmap = new HashMap();
        if (a.v())
        {
            return b.a(company, j);
        } else
        {
            c.a(company, j);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(String s, String s1, String s2)
    {
        HashMap hashmap = new HashMap();
        if (a.v())
        {
            return b.a(s, s1, s2);
        } else
        {
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final boolean a(int j)
    {
        return e.a(j);
    }

    public final Map b()
    {
        HashMap hashmap = new HashMap();
        if (a.v())
        {
            String as[] = l.a(a.e()).split("_");
            Locale locale = new Locale(as[0], as[1]);
            return b.a(locale);
        } else
        {
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map c()
    {
        return d.a();
    }
}
