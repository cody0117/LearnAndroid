// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.c;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.Map;

public final class a
{

    private Context a;
    private r b;
    private c c;
    private com.aadhk.restpos.f.a d;

    public a(Context context)
    {
        a = context;
        b = new r(context);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = f.a().b();
        d = new com.aadhk.restpos.f.a(context);
        c = new c(sqlitedatabase);
    }

    public final Company a()
    {
        return c.a();
    }

    public final Map a(Company company)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return d.b(company);
        } else
        {
            c.b(company);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map b(Company company)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return d.a(company);
        } else
        {
            c.a(company);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }
}
