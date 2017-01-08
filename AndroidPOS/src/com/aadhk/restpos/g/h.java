// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.j;
import com.aadhk.restpos.f.y;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.Map;

public final class h
{

    private Context a;
    private j b;
    private r c;
    private y d;

    public h(Context context)
    {
        a = context;
        c = new r(context);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = f.a().b();
        d = new y(context);
        b = new j(sqlitedatabase);
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        if (c.v())
        {
            return d.a();
        } else
        {
            hashmap.put("serviceData", b.a());
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }
}
