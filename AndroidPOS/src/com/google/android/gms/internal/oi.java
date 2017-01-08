// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.a.a;
import com.google.android.gms.ads.a.b;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.internal:
//            nm, ge, oj, sn, 
//            ok, rs, no, rw

public class oi extends nm
{

    private static a e;
    private static CountDownLatch f = new CountDownLatch(1);
    private static boolean g;

    private oi(Context context, rs rs1, rw rw)
    {
        super(context, rs1, rw);
    }

    public static oi a(String s, Context context)
    {
        ge ge1;
        ge1 = new ge();
        a(s, context, ((rs) (ge1)));
        com/google/android/gms/internal/oi;
        JVM INSTR monitorenter ;
        if (e == null)
        {
            e = new a(context);
            (new oj()).execute(new Void[0]);
        }
        com/google/android/gms/internal/oi;
        JVM INSTR monitorexit ;
        return new oi(context, ge1, new sn());
        Exception exception;
        exception;
        throw exception;
    }

    static a b()
    {
        return e;
    }

    static boolean c()
    {
        g = true;
        return true;
    }

    static a d()
    {
        e = null;
        return null;
    }

    static CountDownLatch e()
    {
        return f;
    }

    private ok f()
    {
        int i = 0;
        com/google/android/gms/internal/oi;
        JVM INSTR monitorenter ;
        ok ok2;
        if (f.await(2L, TimeUnit.SECONDS))
        {
            break MISSING_BLOCK_LABEL_63;
        }
        ok2 = new ok(this, null, false);
        com/google/android/gms/internal/oi;
        JVM INSTR monitorexit ;
        return ok2;
        InterruptedException interruptedexception;
        interruptedexception;
        ok ok1 = new ok(this, null, false);
        com/google/android/gms/internal/oi;
        JVM INSTR monitorexit ;
        return ok1;
        Exception exception;
        exception;
        throw exception;
        ok ok3;
        if (e != null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        ok3 = new ok(this, null, false);
        com/google/android/gms/internal/oi;
        JVM INSTR monitorexit ;
        return ok3;
        b b1 = e.b();
        com/google/android/gms/internal/oi;
        JVM INSTR monitorexit ;
        String s = b1.a();
        String s1;
        if (s != null && s.matches("^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"))
        {
            byte abyte0[] = new byte[16];
            int j = 0;
            for (; i < s.length(); i += 2)
            {
                if (i == 8 || i == 13 || i == 18 || i == 23)
                {
                    i++;
                }
                abyte0[j] = (byte)((Character.digit(s.charAt(i), 16) << 4) + Character.digit(s.charAt(i + 1), 16));
                j++;
            }

            s1 = c.a(abyte0);
        } else
        {
            s1 = s;
        }
        return new ok(this, s1, b1.b());
    }

    protected final void b(Context context)
    {
        super.b(context);
        if (g)
        {
            a(24, c(context));
            return;
        }
        ok ok1 = f();
        long l;
        String s;
        if (ok1.b())
        {
            l = 1L;
        } else
        {
            l = 0L;
        }
        a(28, l);
        s = ok1.a();
        if (s != null)
        {
            try
            {
                a(26, 5L);
                a(24, s);
                return;
            }
            catch (IOException ioexception)
            {
                return;
            }
            catch (no no1) { }
        }
        return;
    }

}
