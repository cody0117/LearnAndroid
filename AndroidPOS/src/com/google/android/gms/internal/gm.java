// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.SystemClock;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            gn, gk

public final class gm
{

    private static final String a = String.format("CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER)", new Object[] {
        "InAppPurchase", "purchase_id", "product_id", "developer_payload", "record_time"
    });
    private static final Object c = new Object();
    private static gm d;
    private final gn b;

    private gm(Context context)
    {
        b = new gn(this, context, "google_inapp_purchase.db");
    }

    private static gk a(Cursor cursor)
    {
        if (cursor == null)
        {
            return null;
        } else
        {
            return new gk(cursor.getLong(0), cursor.getString(1), cursor.getString(2));
        }
    }

    public static gm a(Context context)
    {
        gm gm1;
        synchronized (c)
        {
            if (d == null)
            {
                d = new gm(context);
            }
            gm1 = d;
        }
        return gm1;
    }

    static String b()
    {
        return a;
    }

    private SQLiteDatabase c()
    {
        SQLiteDatabase sqlitedatabase;
        try
        {
            sqlitedatabase = b.getWritableDatabase();
        }
        catch (SQLiteException sqliteexception)
        {
            return null;
        }
        return sqlitedatabase;
    }

    private int d()
    {
        Cursor cursor = null;
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = c();
        if (sqlitedatabase != null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        obj;
        JVM INSTR monitorexit ;
        return 0;
        int i;
        cursor = sqlitedatabase.rawQuery("select count(*) from InAppPurchase", null);
        if (!cursor.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_70;
        }
        i = cursor.getInt(0);
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        cursor.close();
        obj;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        cursor.close();
_L2:
        obj;
        JVM INSTR monitorexit ;
        return 0;
        SQLiteException sqliteexception;
        sqliteexception;
        (new StringBuilder("Error getting record count")).append(sqliteexception.getMessage());
        if (cursor == null) goto _L2; else goto _L1
_L1:
        cursor.close();
          goto _L2
        Exception exception1;
        exception1;
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_129;
        }
        cursor.close();
        throw exception1;
    }

    public final List a()
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        LinkedList linkedlist = new LinkedList();
        if (10L > 0L)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        obj;
        JVM INSTR monitorexit ;
        return linkedlist;
        SQLiteDatabase sqlitedatabase = c();
        if (sqlitedatabase != null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        obj;
        JVM INSTR monitorexit ;
        return linkedlist;
        Cursor cursor1 = sqlitedatabase.query("InAppPurchase", null, null, null, null, null, "record_time ASC", String.valueOf(10L));
        Cursor cursor = cursor1;
        boolean flag;
        if (cursor.moveToFirst())
        {
            do
            {
                linkedlist.add(a(cursor));
                flag = cursor.moveToNext();
            } while (flag);
        }
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        cursor.close();
_L2:
        obj;
        JVM INSTR monitorexit ;
        return linkedlist;
        SQLiteException sqliteexception;
        sqliteexception;
        cursor = null;
_L5:
        (new StringBuilder("Error extracing purchase info: ")).append(sqliteexception.getMessage());
        if (cursor == null) goto _L2; else goto _L1
_L1:
        cursor.close();
          goto _L2
        Exception exception;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        cursor = null;
_L4:
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_179;
        }
        cursor.close();
        throw exception1;
        exception1;
        if (true) goto _L4; else goto _L3
_L3:
        sqliteexception;
          goto _L5
    }

    public final void a(gk gk1)
    {
        if (gk1 == null)
        {
            return;
        }
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = c();
        if (sqlitedatabase != null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        Object aobj[] = new Object[2];
        aobj[0] = "purchase_id";
        aobj[1] = Long.valueOf(gk1.a);
        sqlitedatabase.delete("InAppPurchase", String.format("%s = %d", aobj), null);
        obj;
        JVM INSTR monitorexit ;
    }

    public final void b(gk gk1)
    {
        if (gk1 == null)
        {
            return;
        }
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = c();
        if (sqlitedatabase != null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("product_id", gk1.c);
        contentvalues.put("developer_payload", gk1.b);
        contentvalues.put("record_time", Long.valueOf(SystemClock.elapsedRealtime()));
        gk1.a = sqlitedatabase.insert("InAppPurchase", null, contentvalues);
        if ((long)d() <= 20000L) goto _L2; else goto _L1
_L1:
        Object obj1 = c;
        obj1;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase1 = c();
        if (sqlitedatabase1 != null) goto _L4; else goto _L3
_L3:
        obj1;
        JVM INSTR monitorexit ;
_L2:
        obj;
        JVM INSTR monitorexit ;
        return;
_L4:
        Cursor cursor1 = sqlitedatabase1.query("InAppPurchase", null, null, null, null, null, "record_time ASC", "1");
        Cursor cursor;
        cursor = cursor1;
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_171;
        }
        if (cursor.moveToFirst())
        {
            a(a(cursor));
        }
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_183;
        }
        cursor.close();
_L6:
        obj1;
        JVM INSTR monitorexit ;
          goto _L2
        Exception exception1;
        exception1;
        obj1;
        JVM INSTR monitorexit ;
        throw exception1;
        SQLiteException sqliteexception;
        sqliteexception;
        cursor = null;
_L8:
        (new StringBuilder("Error remove oldest record")).append(sqliteexception.getMessage());
        if (cursor == null) goto _L6; else goto _L5
_L5:
        cursor.close();
          goto _L6
_L7:
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_247;
        }
        cursor.close();
        Exception exception2;
        throw exception2;
        exception2;
          goto _L7
        sqliteexception;
          goto _L8
        exception2;
        cursor = null;
          goto _L7
    }

}
