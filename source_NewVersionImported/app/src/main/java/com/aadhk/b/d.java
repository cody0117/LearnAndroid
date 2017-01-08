// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.b;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

// Referenced classes of package com.aadhk.b:
//            c

final class d extends SQLiteOpenHelper
{

    final c a;

    public d(c c, Context context)
    {
        a = c;
        super(context, "purchase.db", null, 2);
    }

    public final void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE purchase(orderId TEXT PRIMARY KEY, itemId TEXT, itemType TEXT, key TEXT, purchaseTime INTEGER)");
    }

    public final void onDowngrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
    }

    public final void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS purchase");
        sqlitedatabase.execSQL("CREATE TABLE purchase(orderId TEXT PRIMARY KEY, itemId TEXT, itemType TEXT, key TEXT, purchaseTime INTEGER)");
    }
}
