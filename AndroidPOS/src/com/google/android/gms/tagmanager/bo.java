// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.internal.qr;
import com.google.android.gms.internal.qs;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

// Referenced classes of package com.google.android.gms.tagmanager:
//            g, br, x, bs, 
//            e, bq, bp, h

final class bo
    implements g
{

    private static final String a = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' STRING NOT NULL, '%s' BLOB NOT NULL, '%s' INTEGER NOT NULL);", new Object[] {
        "datalayer", "ID", "key", "value", "expires"
    });
    private final Executor b;
    private final Context c;
    private br d;
    private qr e;
    private int f;

    public bo(Context context)
    {
        this(context, qs.c(), "google_tagmanager.db", ((Executor) (Executors.newSingleThreadExecutor())));
    }

    private bo(Context context, qr qr1, String s, Executor executor)
    {
        c = context;
        e = qr1;
        f = 2000;
        b = executor;
        d = new br(this, c, s);
    }

    private static Object a(byte abyte0[])
    {
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(abyte0);
        ObjectInputStream objectinputstream = new ObjectInputStream(bytearrayinputstream);
        Object obj = objectinputstream.readObject();
        IOException ioexception;
        IOException ioexception1;
        ClassNotFoundException classnotfoundexception;
        IOException ioexception2;
        Exception exception;
        IOException ioexception3;
        Exception exception1;
        ClassNotFoundException classnotfoundexception1;
        IOException ioexception5;
        try
        {
            objectinputstream.close();
            bytearrayinputstream.close();
        }
        catch (IOException ioexception4)
        {
            return obj;
        }
        return obj;
        ioexception5;
        objectinputstream = null;
_L8:
        if (objectinputstream == null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        objectinputstream.close();
        bytearrayinputstream.close();
        return null;
        ioexception1;
        return null;
        classnotfoundexception1;
        objectinputstream = null;
_L6:
        if (objectinputstream == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        objectinputstream.close();
        bytearrayinputstream.close();
        return null;
        ioexception2;
        return null;
        exception1;
        objectinputstream = null;
        exception = exception1;
_L4:
        if (objectinputstream == null)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        objectinputstream.close();
        bytearrayinputstream.close();
_L2:
        throw exception;
        ioexception3;
        if (true) goto _L2; else goto _L1
_L1:
        exception;
        if (true) goto _L4; else goto _L3
_L3:
        classnotfoundexception;
        if (true) goto _L6; else goto _L5
_L5:
        ioexception;
        if (true) goto _L8; else goto _L7
_L7:
    }

    static String a()
    {
        return a;
    }

    private List a(int i)
    {
        ArrayList arraylist;
        SQLiteDatabase sqlitedatabase;
        arraylist = new ArrayList();
        if (i <= 0)
        {
            x.c();
            return arraylist;
        }
        sqlitedatabase = e();
        if (sqlitedatabase == null)
        {
            return arraylist;
        }
        Cursor cursor1 = sqlitedatabase.query("datalayer", new String[] {
            "ID"
        }, null, null, null, null, String.format("%s ASC", new Object[] {
            "ID"
        }), Integer.toString(i));
        Cursor cursor = cursor1;
        boolean flag;
        if (cursor.moveToFirst())
        {
            do
            {
                arraylist.add(String.valueOf(cursor.getLong(0)));
                flag = cursor.moveToNext();
            } while (flag);
        }
        if (cursor != null)
        {
            cursor.close();
        }
_L1:
        return arraylist;
        SQLiteException sqliteexception;
        sqliteexception;
        cursor = null;
_L4:
        (new StringBuilder("Error in peekEntries fetching entryIds: ")).append(sqliteexception.getMessage());
        x.c();
        if (cursor != null)
        {
            cursor.close();
        }
          goto _L1
        Exception exception;
        exception;
        cursor = null;
_L3:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        if (true) goto _L3; else goto _L2
_L2:
        sqliteexception;
          goto _L4
    }

    static List a(bo bo1)
    {
        return bo1.b();
    }

    private void a(long l)
    {
        SQLiteDatabase sqlitedatabase = e();
        if (sqlitedatabase == null)
        {
            return;
        }
        try
        {
            String as[] = new String[1];
            as[0] = Long.toString(l);
            int i = sqlitedatabase.delete("datalayer", "expires <= ?", as);
            (new StringBuilder("Deleted ")).append(i).append(" expired items");
            x.e();
            return;
        }
        catch (SQLiteException sqliteexception)
        {
            x.c();
        }
    }

    static void a(bo bo1, List list, long l)
    {
        bo1.b(list, l);
    }

    private static byte[] a(Object obj)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
        byte abyte0[];
        objectoutputstream.writeObject(obj);
        abyte0 = bytearrayoutputstream.toByteArray();
        IOException ioexception;
        IOException ioexception1;
        Exception exception;
        IOException ioexception2;
        Exception exception1;
        IOException ioexception4;
        try
        {
            objectoutputstream.close();
            bytearrayoutputstream.close();
        }
        catch (IOException ioexception3)
        {
            return abyte0;
        }
        return abyte0;
        ioexception4;
        objectoutputstream = null;
_L6:
        if (objectoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        objectoutputstream.close();
        bytearrayoutputstream.close();
        return null;
        ioexception1;
        return null;
        exception1;
        objectoutputstream = null;
        exception = exception1;
_L4:
        if (objectoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        objectoutputstream.close();
        bytearrayoutputstream.close();
_L2:
        throw exception;
        ioexception2;
        if (true) goto _L2; else goto _L1
_L1:
        exception;
        if (true) goto _L4; else goto _L3
_L3:
        ioexception;
        if (true) goto _L6; else goto _L5
_L5:
    }

    static Context b(bo bo1)
    {
        return bo1.c;
    }

    private List b()
    {
        ArrayList arraylist;
        a(e.a());
        List list = c();
        arraylist = new ArrayList();
        bs bs1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(new e(bs1.a, a(bs1.b))))
        {
            bs1 = (bs)iterator.next();
        }

        break MISSING_BLOCK_LABEL_93;
        Exception exception;
        exception;
        f();
        throw exception;
        f();
        return arraylist;
    }

    private void b(List list, long l)
    {
        this;
        JVM INSTR monitorenter ;
        long l1;
        int i;
        l1 = e.a();
        a(l1);
        i = list.size() + (d() - f);
        if (i <= 0) goto _L2; else goto _L1
_L1:
        String as[];
        List list1 = a(i);
        (new StringBuilder("DataLayer store full, deleting ")).append(list1.size()).append(" entries to make room.");
        x.d();
        as = (String[])list1.toArray(new String[0]);
        if (as == null) goto _L2; else goto _L3
_L3:
        if (as.length != 0) goto _L4; else goto _L2
_L2:
        c(list, l1 + l);
        f();
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        SQLiteDatabase sqlitedatabase = e();
        if (sqlitedatabase == null) goto _L2; else goto _L5
_L5:
        String s;
        Object aobj[] = new Object[2];
        aobj[0] = "ID";
        aobj[1] = TextUtils.join(",", Collections.nCopies(as.length, "?"));
        s = String.format("%s in (%s)", aobj);
        sqlitedatabase.delete("datalayer", s, as);
          goto _L2
        SQLiteException sqliteexception;
        sqliteexception;
        (new StringBuilder("Error deleting entries ")).append(Arrays.toString(as));
        x.c();
          goto _L2
        Exception exception;
        exception;
        f();
        throw exception;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    private List c()
    {
        ArrayList arraylist;
        Cursor cursor;
        SQLiteDatabase sqlitedatabase = e();
        arraylist = new ArrayList();
        if (sqlitedatabase == null)
        {
            return arraylist;
        }
        cursor = sqlitedatabase.query("datalayer", new String[] {
            "key", "value"
        }, null, null, null, null, "ID", null);
        while (cursor.moveToNext()) 
        {
            arraylist.add(new bs(cursor.getString(0), cursor.getBlob(1)));
        }
        break MISSING_BLOCK_LABEL_98;
        Exception exception;
        exception;
        cursor.close();
        throw exception;
        cursor.close();
        return arraylist;
    }

    private void c(List list, long l)
    {
        SQLiteDatabase sqlitedatabase = e();
        if (sqlitedatabase != null)
        {
            Iterator iterator = list.iterator();
            while (iterator.hasNext()) 
            {
                bs bs1 = (bs)iterator.next();
                ContentValues contentvalues = new ContentValues();
                contentvalues.put("expires", Long.valueOf(l));
                contentvalues.put("key", bs1.a);
                contentvalues.put("value", bs1.b);
                sqlitedatabase.insert("datalayer", null, contentvalues);
            }
        }
    }

    private int d()
    {
        Cursor cursor;
        SQLiteDatabase sqlitedatabase;
        int i;
        cursor = null;
        sqlitedatabase = e();
        i = 0;
        if (sqlitedatabase != null) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        boolean flag;
        cursor = sqlitedatabase.rawQuery("SELECT COUNT(*) from datalayer", null);
        flag = cursor.moveToFirst();
        i = 0;
        if (!flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        long l = cursor.getLong(0);
        i = (int)l;
        if (cursor == null) goto _L1; else goto _L3
_L3:
        cursor.close();
        return i;
        SQLiteException sqliteexception;
        sqliteexception;
        x.c();
        i = 0;
        if (cursor == null) goto _L1; else goto _L4
_L4:
        cursor.close();
        return 0;
        Exception exception;
        exception;
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
    }

    private SQLiteDatabase e()
    {
        SQLiteDatabase sqlitedatabase;
        try
        {
            sqlitedatabase = d.getWritableDatabase();
        }
        catch (SQLiteException sqliteexception)
        {
            x.c();
            return null;
        }
        return sqlitedatabase;
    }

    private void f()
    {
        try
        {
            d.close();
            return;
        }
        catch (SQLiteException sqliteexception)
        {
            return;
        }
    }

    public final void a(h h)
    {
        b.execute(new bq(this, h));
    }

    public final void a(List list, long l)
    {
        ArrayList arraylist = new ArrayList();
        e e1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(new bs(e1.a, a(e1.b))))
        {
            e1 = (e)iterator.next();
        }

        b.execute(new bp(this, arraylist, l));
    }

}
