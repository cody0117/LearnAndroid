// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.internal:
//            my, no, rs, sg, 
//            sf, rw

public abstract class nm extends my
{

    static boolean d = false;
    private static Method e;
    private static Method f;
    private static Method g;
    private static Method h;
    private static Method i;
    private static Method j;
    private static Method k;
    private static Method l;
    private static Method m;
    private static String n;
    private static String o;
    private static String p;
    private static long q = 0L;
    private static sf r;

    protected nm(Context context, rs rs1, rw rw)
    {
        super(context, rs1, rw);
    }

    private static String a(Context context, rs rs1)
    {
        if (o != null)
        {
            return o;
        }
        if (h == null)
        {
            throw new no();
        }
        ByteBuffer bytebuffer;
        String s;
        try
        {
            bytebuffer = (ByteBuffer)h.invoke(null, new Object[] {
                context
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new no(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new no(invocationtargetexception);
        }
        if (bytebuffer != null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        throw new no();
        s = rs1.a(bytebuffer.array());
        o = s;
        return s;
    }

    private static String a(byte abyte0[], String s)
    {
        String s1;
        try
        {
            s1 = new String(r.a(abyte0, s), "UTF-8");
        }
        catch (sg sg1)
        {
            throw new no(sg1);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new no(unsupportedencodingexception);
        }
        return s1;
    }

    private static ArrayList a(MotionEvent motionevent, DisplayMetrics displaymetrics)
    {
        if (i == null || motionevent == null)
        {
            throw new no();
        }
        ArrayList arraylist;
        try
        {
            arraylist = (ArrayList)i.invoke(null, new Object[] {
                motionevent, displaymetrics
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new no(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new no(invocationtargetexception);
        }
        return arraylist;
    }

    protected static void a(String s, Context context, rs rs1)
    {
        com/google/android/gms/internal/nm;
        JVM INSTR monitorenter ;
        boolean flag = d;
        if (flag) goto _L2; else goto _L1
_L1:
        r = new sf(rs1);
        n = s;
        byte abyte0[];
        byte abyte1[];
        File file;
        abyte0 = r.a("O54kcjTlTxqKUcqu87nOfA38Ly3ePPVmK4qDp+4F/+Y=");
        abyte1 = r.a(abyte0, "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");
        file = context.getCacheDir();
        if (file != null) goto _L4; else goto _L3
_L3:
        file = context.getDir("dex", 0);
        if (file != null) goto _L4; else goto _L5
_L5:
        throw new no();
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        Exception exception;
        IOException ioexception;
        File file1;
        File file2;
        Exception exception1;
        try
        {
            throw new no(filenotfoundexception);
        }
        catch (no no1) { }
        catch (UnsupportedOperationException unsupportedoperationexception) { }
        finally
        {
            com/google/android/gms/internal/nm;
        }
_L2:
        com/google/android/gms/internal/nm;
        JVM INSTR monitorexit ;
        return;
_L4:
        file1 = file;
        file2 = File.createTempFile("ads", ".jar", file1);
        FileOutputStream fileoutputstream = new FileOutputStream(file2);
        fileoutputstream.write(abyte1, 0, abyte1.length);
        fileoutputstream.close();
        DexClassLoader dexclassloader = new DexClassLoader(file2.getAbsolutePath(), file1.getAbsolutePath(), null, context.getClassLoader());
        Class class1 = dexclassloader.loadClass(a(abyte0, "PByw/0vtR5uK0KBqBPIl0QFsO1qZRtKLz+9dVGFk6qbQzuGLPPMivNmw0g7kFFxX"));
        Class class2 = dexclassloader.loadClass(a(abyte0, "wstPOvuLdyIwTj0Ta637xVPtTZtDTlmqcMyfQbF0s3wFHRjTGGYBfxyKLn5weDdS"));
        Class class3 = dexclassloader.loadClass(a(abyte0, "PkSCMx72ICaE7SrYlH2ZBDrsywLErzORzaxxFPC8UafKY1Myt/oD1rbLK3oniYUF"));
        Class class4 = dexclassloader.loadClass(a(abyte0, "cwHPtLsLppnm2YXs/s3lMo8BGVhfl0UvcxYXrxQuD/qheVJldyfeDOpHnQbrxFtL"));
        Class class5 = dexclassloader.loadClass(a(abyte0, "zi0AD0kUzFMkFbiPDeGDw1MjQeCtU7gqLpzNHyXJ5enYVE6q4cYIStkGqkTi0Yrl"));
        Class class6 = dexclassloader.loadClass(a(abyte0, "mFbvitTNnP9K68M6MYdYrjGuM71u+Q91IGGAuFhq/VFIPQLpmUsUnK4Eaf10earu"));
        Class class7 = dexclassloader.loadClass(a(abyte0, "+RbCrlQCkpJZoONHniNFDqCoORMdN/wUFX983sowv9UVW1bhIxYffDsNlFsT7h6o"));
        Class class8 = dexclassloader.loadClass(a(abyte0, "zMkdGWlucYXKXTmqNQzzP6ORyREy1kFVggSUQuvgZngGzZzsdZbjxtpc3Dt1Rlin"));
        Class class9 = dexclassloader.loadClass(a(abyte0, "iGPMNBo5oJsjL3No4KAETYD9U2SXEGx5TaDKjld+4TEvT/o8d/miAmbQAJxxh/IE"));
        e = class1.getMethod(a(abyte0, "UaAE4SV4I/MBBKXsI8ExEzL/WxZMzc3KiqH3+b+YaMU="), new Class[0]);
        f = class2.getMethod(a(abyte0, "D9Ry5St/Yr2CMndj9hzAlVP7FsM9JegfqWAh/ADB46A="), new Class[0]);
        g = class3.getMethod(a(abyte0, "09Ti63J41rgtFD8T/ImyAoNQor+MaIAilSBvCRXYHJ0="), new Class[0]);
        h = class4.getMethod(a(abyte0, "D6XzQFqjp8SIr+tFNqjCfHeas/2dnf8rxdslH92hAHI="), new Class[] {
            android/content/Context
        });
        i = class5.getMethod(a(abyte0, "hpX1gQJv5j3MZiPVYuWqHR+M3mTRXlEryoUH/Xw+IoU="), new Class[] {
            android/view/MotionEvent, android/util/DisplayMetrics
        });
        j = class6.getMethod(a(abyte0, "TFb9lhkFeXXTaRyRQXUlEzOHtR6OTydz5Qc8O77D0lc="), new Class[] {
            android/content/Context
        });
        k = class7.getMethod(a(abyte0, "OPg6bR9G1u0ckVEFFWKwKLkYqtBSrVUkrOfFvx/4EA8="), new Class[] {
            android/content/Context
        });
        l = class8.getMethod(a(abyte0, "X5u8UmaO5cokx78YK5zKDK7QmLrPrIWar/uTfrkV73w="), new Class[] {
            android/content/Context
        });
        m = class9.getMethod(a(abyte0, "hKO5tSNjTH8/sQ95ltvEBYG22F/q+m+BXECm134zCu8="), new Class[] {
            android/content/Context
        });
        String s2 = file2.getName();
        file2.delete();
        (new File(file1, s2.replace(".jar", ".dex"))).delete();
        q = c().longValue();
        d = true;
        if (true) goto _L2; else goto _L6
_L6:
        exception1;
        String s1 = file2.getName();
        file2.delete();
        (new File(file1, s1.replace(".jar", ".dex"))).delete();
        throw exception1;
        ioexception;
        throw new no(ioexception);
        throw exception;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        throw new no(classnotfoundexception);
        sg sg1;
        sg1;
        throw new no(sg1);
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        throw new no(nosuchmethodexception);
        NullPointerException nullpointerexception;
        nullpointerexception;
        throw new no(nullpointerexception);
    }

    private static String b()
    {
        if (n == null)
        {
            throw new no();
        } else
        {
            return n;
        }
    }

    private static String b(Context context, rs rs1)
    {
        if (p != null)
        {
            return p;
        }
        if (k == null)
        {
            throw new no();
        }
        ByteBuffer bytebuffer;
        String s;
        try
        {
            bytebuffer = (ByteBuffer)k.invoke(null, new Object[] {
                context
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new no(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new no(invocationtargetexception);
        }
        if (bytebuffer != null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        throw new no();
        s = rs1.a(bytebuffer.array());
        p = s;
        return s;
    }

    private static Long c()
    {
        if (e == null)
        {
            throw new no();
        }
        Long long1;
        try
        {
            long1 = (Long)e.invoke(null, new Object[0]);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new no(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new no(invocationtargetexception);
        }
        return long1;
    }

    static String c(Context context)
    {
        String s;
        if (j == null)
        {
            throw new no();
        }
        try
        {
            s = (String)j.invoke(null, new Object[] {
                context
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new no(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new no(invocationtargetexception);
        }
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        throw new no();
        return s;
    }

    private static String d()
    {
        if (g == null)
        {
            throw new no();
        }
        String s;
        try
        {
            s = (String)g.invoke(null, new Object[0]);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new no(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new no(invocationtargetexception);
        }
        return s;
    }

    private static ArrayList d(Context context)
    {
        ArrayList arraylist;
        if (l == null)
        {
            throw new no();
        }
        try
        {
            arraylist = (ArrayList)l.invoke(null, new Object[] {
                context
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new no(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new no(invocationtargetexception);
        }
        if (arraylist == null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        if (arraylist.size() == 2)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        throw new no();
        return arraylist;
    }

    private static Long e()
    {
        if (f == null)
        {
            throw new no();
        }
        Long long1;
        try
        {
            long1 = (Long)f.invoke(null, new Object[0]);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new no(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new no(invocationtargetexception);
        }
        return long1;
    }

    private static int[] e(Context context)
    {
        if (m == null)
        {
            throw new no();
        }
        int ai[];
        try
        {
            ai = (int[])m.invoke(null, new Object[] {
                context
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new no(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new no(invocationtargetexception);
        }
        return ai;
    }

    protected final void a()
    {
        IOException ioexception;
        try
        {
            a(2, b());
        }
        catch (no no1) { }
        try
        {
            a(1, d());
        }
        catch (no no2) { }
        try
        {
            a(25, c().longValue());
        }
        catch (no no3) { }
        try
        {
            ArrayList arraylist = a(a, b);
            a(14, ((Long)arraylist.get(0)).longValue());
            a(15, ((Long)arraylist.get(1)).longValue());
            if (arraylist.size() >= 3)
            {
                a(16, ((Long)arraylist.get(2)).longValue());
            }
            return;
        }
        catch (no no4)
        {
            return;
        }
        ioexception;
    }

    protected void b(Context context)
    {
        IOException ioexception;
        try
        {
            a(1, d());
        }
        catch (no no1) { }
        try
        {
            a(2, b());
        }
        catch (no no2) { }
        try
        {
            long l1 = c().longValue();
            a(25, l1);
            if (q != 0L)
            {
                a(17, l1 - q);
                a(23, q);
            }
        }
        catch (no no3) { }
        try
        {
            ArrayList arraylist = d(context);
            a(31, ((Long)arraylist.get(0)).longValue());
            a(32, ((Long)arraylist.get(1)).longValue());
        }
        catch (no no4) { }
        try
        {
            a(33, e().longValue());
        }
        catch (no no5) { }
        try
        {
            a(27, a(context, c));
        }
        catch (no no6) { }
        try
        {
            a(29, b(context, c));
        }
        catch (no no7) { }
        try
        {
            int ai[] = e(context);
            a(5, ai[0]);
            a(6, ai[1]);
            return;
        }
        catch (no no8)
        {
            return;
        }
        ioexception;
    }

}
