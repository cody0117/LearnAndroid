// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.b;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

// Referenced classes of package com.aadhk.b:
//            a, b, c

final class d extends SQLiteOpenHelper
{

    final c a;
    private Context b;

    public d(c c, Context context)
    {
        a = c;
        super(context, "purchase.db", null, 3);
        b = context;
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
        if (i >= 3)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        Cursor cursor = sqlitedatabase.rawQuery(" select itemId from purchase", null);
        if (cursor.moveToFirst())
        {
            sqlitedatabase.execSQL((new StringBuilder("update  purchase set key ='")).append(com.aadhk.b.b.c(b, cursor.getString(0))).append("'").toString());
        }
        cursor.close();
        return;
        a a1;
        a1;
        a1.printStackTrace();
        return;
    }
}
