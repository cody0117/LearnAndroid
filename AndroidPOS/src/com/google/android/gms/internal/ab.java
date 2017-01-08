// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            aa

public final class ab
{

    private final Object a = new Object();
    private int b;
    private List c;

    public ab()
    {
        c = new LinkedList();
    }

    public final aa a()
    {
        aa aa1;
label0:
        {
            aa1 = null;
            synchronized (a)
            {
                if (c.size() != 0)
                {
                    break label0;
                }
            }
            return null;
        }
        if (c.size() < 2) goto _L2; else goto _L1
_L1:
        int i = 0x80000000;
        Iterator iterator = c.iterator();
_L5:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        aa aa2;
        int j;
        aa2 = (aa)iterator.next();
        j = aa2.g();
        int k;
        aa aa3;
        aa aa4;
        if (j > i)
        {
            aa3 = aa2;
            k = j;
        } else
        {
            k = i;
            aa3 = aa1;
        }
        break MISSING_BLOCK_LABEL_155;
_L4:
        c.remove(aa1);
        obj;
        JVM INSTR monitorexit ;
        return aa1;
        exception;
        throw exception;
_L2:
        aa4 = (aa)c.get(0);
        aa4.c();
        obj;
        JVM INSTR monitorexit ;
        return aa4;
        i = k;
        aa1 = aa3;
          goto _L5
    }

    public final boolean a(aa aa1)
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        if (c.contains(aa1))
        {
            return true;
        }
        obj;
        JVM INSTR monitorexit ;
        return false;
        Exception exception;
        exception;
        throw exception;
    }

    public final boolean b(aa aa1)
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        Iterator iterator = c.iterator();
_L2:
        aa aa2;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_76;
            }
            aa2 = (aa)iterator.next();
        } while (aa1 == aa2);
        if (!aa2.b().equals(aa1.b())) goto _L2; else goto _L1
_L1:
        c.remove(aa1);
        obj;
        JVM INSTR monitorexit ;
        return true;
        obj;
        JVM INSTR monitorexit ;
        return false;
        Exception exception;
        exception;
        throw exception;
    }

    public final void c(aa aa1)
    {
        synchronized (a)
        {
            if (c.size() >= 10)
            {
                (new StringBuilder("Queue is full, current size = ")).append(c.size());
                c.remove(0);
            }
            int i = b;
            b = i + 1;
            aa1.a(i);
            c.add(aa1);
        }
    }
}
