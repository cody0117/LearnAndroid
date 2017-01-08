// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.b;

import android.content.Context;
import android.database.Cursor;
import android.telephony.TelephonyManager;
import com.aadhk.a.m;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

// Referenced classes of package com.aadhk.b:
//            c, a

public final class b
{

    private static int a(String s)
    {
        com/aadhk/b/b;
        JVM INSTR monitorenter ;
        int i = Integer.parseInt(s, 16);
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
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
        m1.a(d(context, m1.c()));
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
        boolean flag3 = d(context, s).equals(s1);
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

    public static boolean a(Context context, String s, String s1)
    {
        com/aadhk/b/b;
        JVM INSTR monitorenter ;
        boolean flag = d(context, s).equalsIgnoreCase(s1);
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        return flag;
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
        String s = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (s == null) goto _L2; else goto _L1
_L1:
        boolean flag = "9774d56d682e549c".equals(s);
        if (!flag) goto _L3; else goto _L2
_L2:
        String s3 = ((TelephonyManager)context.getSystemService("phone")).getDeviceId();
        String s1 = s3;
_L5:
        String s2 = UUID.nameUUIDFromBytes(s1.getBytes("utf8")).toString();
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        return s2;
        Exception exception1;
        exception1;
_L3:
        s1 = s;
        if (true) goto _L5; else goto _L4
_L4:
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

    public static long c(Context context, String s)
    {
        com/aadhk/b/b;
        JVM INSTR monitorenter ;
        int i = a(e(context, s));
        long l = i;
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        return l;
        Exception exception;
        exception;
        throw exception;
    }

    private static String d(Context context, String s)
    {
        com/aadhk/b/b;
        JVM INSTR monitorenter ;
        String s1 = b((new StringBuilder(String.valueOf(s))).append(c(context, s)).toString()).substring(0, 6);
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    private static String e(Context context, String s)
    {
        com/aadhk/b/b;
        JVM INSTR monitorenter ;
        String s1 = b((new StringBuilder(String.valueOf(s))).append(b(context)).toString()).substring(0, 6);
        com/aadhk/b/b;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }
}
