// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.b;
import com.aadhk.restpos.b.i;
import com.aadhk.restpos.util.r;
import java.util.List;

public final class f
{

    private Context a;
    private r b;
    private b c;
    private i d;

    public f(Context context)
    {
        a = context;
        b = new r(context);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = com.aadhk.restpos.b.f.a().b();
        c = new b(sqlitedatabase);
        d = new i(sqlitedatabase);
    }

    public final List a()
    {
        return c.b();
    }

    public final List a(long l)
    {
        return d.c(l);
    }
}
