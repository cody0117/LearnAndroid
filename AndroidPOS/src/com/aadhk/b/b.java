// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.b;

import android.content.Context;
import android.database.Cursor;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import com.aadhk.a.m;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.UUID;

// Referenced classes of package com.aadhk.b:
//            a, c

public final class b
{

    public static int a(String s)
    {
        com/aadhk/b/b;
        JVM INSTR monitorenter ;
        long l;
        long l1;
        l = (new SimpleDateFormat("yyyy-MM-dd")).parse(s).getTime();
        l1 = Calendar.getInstance().getTimeInMillis();
        int i = (int)((double)((l + 0x9a7ec800L) - l1) / 86400000D);
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        return i;
        ParseException parseexception;
        parseexception;
        throw new a("prase date error", parseexception);
        Exception exception;
        exception;
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static String a(byte abyte0[])
    {
        com/aadhk/b/b;
        JVM INSTR monitorenter ;
        if (abyte0 != null) goto _L2; else goto _L1
_L1:
        String s = "";
_L5:
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        return s;
_L2:
        StringBuffer stringbuffer = new StringBuffer(2 * abyte0.length);
        int i = 0;
_L3:
        if (i >= abyte0.length)
        {
            s = stringbuffer.toString();
            continue; /* Loop/switch isn't completed */
        }
        byte byte0 = abyte0[i];
        stringbuffer.append("0123456789ABCDEF".charAt(0xf & byte0 >> 4)).append("0123456789ABCDEF".charAt(byte0 & 0xf));
        i++;
          goto _L3
        Exception exception;
        exception;
        throw exception;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static void a(Context context, m m1)
    {
        com/aadhk/b/b;
        JVM INSTR monitorenter ;
        c c1 = new c(context);
        m1.a(c(context, m1.c()));
        c1.a(m1);
        c1.a();
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static boolean a(Context context, String s)
    {
        com/aadhk/b/b;
        JVM INSTR monitorenter ;
        c c1;
        Cursor cursor;
        boolean flag;
        c1 = new c(context);
        cursor = c1.a(s);
        flag = cursor.moveToNext();
        String s1;
        s1 = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        s1 = cursor.getString(3);
        cursor.close();
        c1.a();
        boolean flag1;
        flag1 = false;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        boolean flag2 = s1.equals("");
        flag1 = false;
        if (flag2)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        boolean flag3 = c(context, s).equals(s1);
        flag1 = flag3;
_L2:
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        return flag1;
        a a1;
        a1;
        a1.printStackTrace();
        flag1 = false;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public static String[] a(Context context)
    {
        com/aadhk/b/b;
        JVM INSTR monitorenter ;
        String as[];
        ArrayList arraylist = new ArrayList();
        c c1 = new c(context);
        Cursor cursor = c1.b();
        if (cursor.moveToNext())
        {
            do
            {
                arraylist.add(cursor.getString(1));
            } while (cursor.moveToNext());
        }
        cursor.close();
        c1.a();
        as = (String[])arraylist.toArray(new String[arraylist.size()]);
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        return as;
        Exception exception;
        exception;
        throw exception;
    }

    private static String b(Context context)
    {
        com/aadhk/b/b;
        JVM INSTR monitorenter ;
        int i = android.os.Build.VERSION.SDK_INT;
        String s;
        s = null;
        if (i < 9)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        s = Build.SERIAL;
        (new StringBuilder("androidId:")).append(s);
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        s = ((WifiManager)context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        String s1 = UUID.nameUUIDFromBytes(s.getBytes("utf8")).toString().replaceAll("-", "").toUpperCase().substring(0, 12);
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        return s1;
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        throw new a("androidId toBytes error", unsupportedencodingexception);
        Exception exception;
        exception;
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static String b(Context context, String s)
    {
        com/aadhk/b/b;
        JVM INSTR monitorenter ;
        String s1 = d(context, s);
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    private static String b(String s)
    {
        com/aadhk/b/b;
        JVM INSTR monitorenter ;
        String s1;
        MessageDigest messagedigest = MessageDigest.getInstance("SHA");
        messagedigest.update(s.getBytes());
        s1 = a(messagedigest.digest());
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        return s1;
        NoSuchAlgorithmException nosuchalgorithmexception;
        nosuchalgorithmexception;
        throw new a("encrypt message error", nosuchalgorithmexception);
        Exception exception;
        exception;
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static String c(Context context, String s)
    {
        com/aadhk/b/b;
        JVM INSTR monitorenter ;
        String s1 = b((new StringBuilder(String.valueOf(s))).append(b(context, s)).toString()).substring(0, 8);
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    private static String d(Context context, String s)
    {
        com/aadhk/b/b;
        JVM INSTR monitorenter ;
        String s1 = b((new StringBuilder(String.valueOf(s))).append(b(context)).toString()).substring(0, 8);
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }
}
