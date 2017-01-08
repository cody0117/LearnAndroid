// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

// Referenced classes of package com.aadhk.restpos.b:
//            g

public class f
{

    private static String a = "DatabaseManager";
    private static f c;
    private static SQLiteOpenHelper d;
    private int b;
    private SQLiteDatabase e;

    private f(Context context)
    {
        d = new g(context);
    }

    public static f a()
    {
        com/aadhk/restpos/b/f;
        JVM INSTR monitorenter ;
        if (c == null)
        {
            throw new IllegalStateException((new StringBuilder()).append(com/aadhk/restpos/b/f.getSimpleName()).append(" is not initialized, call initializeInstance(..) method first.").toString());
        }
        break MISSING_BLOCK_LABEL_46;
        Exception exception;
        exception;
        com/aadhk/restpos/b/f;
        JVM INSTR monitorexit ;
        throw exception;
        f f1 = c;
        com/aadhk/restpos/b/f;
        JVM INSTR monitorexit ;
        return f1;
    }

    public static void a(Context context)
    {
        com/aadhk/restpos/b/f;
        JVM INSTR monitorenter ;
        if (c == null)
        {
            c = new f(context);
        }
        com/aadhk/restpos/b/f;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final SQLiteDatabase b()
    {
        this;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase;
        b = 1 + b;
        if (b == 1)
        {
            e = d.getWritableDatabase();
        }
        sqlitedatabase = e;
        this;
        JVM INSTR monitorexit ;
        return sqlitedatabase;
        Exception exception;
        exception;
        throw exception;
    }

    public final void c()
    {
        this;
        JVM INSTR monitorenter ;
        b = -1 + b;
        if (b == 0)
        {
            e.close();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

}
