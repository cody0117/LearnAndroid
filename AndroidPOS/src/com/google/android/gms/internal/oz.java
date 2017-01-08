// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.c;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.google.android.gms.internal:
//            pa, px, pb

public final class oz
{

    final ArrayList a = new ArrayList();
    private final pb b;
    private final ArrayList c = new ArrayList();
    private boolean d;
    private final ArrayList e = new ArrayList();
    private final Handler f;

    public oz(Looper looper, pb pb1)
    {
        d = false;
        b = pb1;
        f = new pa(this, looper);
    }

    static ArrayList a(oz oz1)
    {
        return oz1.c;
    }

    static pb b(oz oz1)
    {
        return oz1.b;
    }

    protected final void a()
    {
        boolean flag = true;
        ArrayList arraylist = c;
        arraylist;
        JVM INSTR monitorenter ;
        b;
        ArrayList arraylist1 = c;
        arraylist1;
        JVM INSTR monitorenter ;
        boolean flag1;
        if (!d)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        px.a(flag1);
        f.removeMessages(1);
        d = true;
        Exception exception;
        Exception exception1;
        Iterator iterator;
        if (a.size() != 0)
        {
            flag = false;
        }
        px.a(flag);
        iterator = (new ArrayList(c)).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            b b1 = (b)iterator.next();
            if (!b.j() || !b.e())
            {
                break;
            }
            if (!a.contains(b1))
            {
                b1.b();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_173;
        exception1;
        arraylist1;
        JVM INSTR monitorexit ;
        throw exception1;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
        a.clear();
        d = false;
        arraylist1;
        JVM INSTR monitorexit ;
        arraylist;
        JVM INSTR monitorexit ;
    }

    public final void a(b b1)
    {
        px.a(b1);
        ArrayList arraylist = c;
        arraylist;
        JVM INSTR monitorenter ;
        if (!c.contains(b1))
        {
            break MISSING_BLOCK_LABEL_74;
        }
        (new StringBuilder("registerConnectionCallbacks(): listener ")).append(b1).append(" is already registered");
_L2:
        if (b.e())
        {
            f.sendMessage(f.obtainMessage(1, b1));
        }
        return;
        c.add(b1);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(c c1)
    {
        px.a(c1);
        ArrayList arraylist = e;
        arraylist;
        JVM INSTR monitorenter ;
        if (!e.contains(c1))
        {
            break MISSING_BLOCK_LABEL_45;
        }
        (new StringBuilder("registerConnectionFailedListener(): listener ")).append(c1).append(" is already registered");
_L2:
        return;
        e.add(c1);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public final void b()
    {
        f.removeMessages(1);
        ArrayList arraylist = c;
        arraylist;
        JVM INSTR monitorenter ;
        d = true;
        Iterator iterator = (new ArrayList(c)).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            b b1 = (b)iterator.next();
            if (!b.j())
            {
                break;
            }
            c.contains(b1);
        } while (true);
        break MISSING_BLOCK_LABEL_85;
        Exception exception;
        exception;
        throw exception;
        d = false;
        arraylist;
        JVM INSTR monitorexit ;
    }

    public final void c()
    {
        f.removeMessages(1);
        ArrayList arraylist = e;
        arraylist;
        JVM INSTR monitorenter ;
        Iterator iterator = (new ArrayList(e)).iterator();
_L2:
        c c1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_92;
        }
        c1 = (c)iterator.next();
        if (!b.j())
        {
            return;
        }
        if (e.contains(c1))
        {
            c1.t_();
        }
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
        arraylist;
        JVM INSTR monitorexit ;
    }
}
