// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.b;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.a.m;

// Referenced classes of package com.aadhk.b:
//            d

public final class c
{

    private static final String b[] = {
        "orderId", "itemId", "itemType", "key", "purchaseTime"
    };
    SQLiteDatabase a;
    private final d c;

    public c(Context context)
    {
        c = new d(this, context);
        a = c.getWritableDatabase();
    }

    public final Cursor a(String s)
    {
        return a.query("purchase", b, "itemId = ?", new String[] {
            s
        }, null, null, null);
    }

    public final void a()
    {
        c.close();
    }

    public final void a(m m1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("orderId", m1.b());
        contentvalues.put("itemId", m1.c());
        contentvalues.put("itemType", m1.a());
        contentvalues.put("key", m1.f());
        contentvalues.put("purchaseTime", Long.valueOf(m1.d()));
        a.replace("purchase", null, contentvalues);
    }

    public final Cursor b()
    {
        return a.query("purchase", b, null, null, null, null, null);
    }

}
