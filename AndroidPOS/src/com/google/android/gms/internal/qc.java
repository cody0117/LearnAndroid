// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

public class qc
{

    private final LinkedHashMap a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;

    private int b(Object obj, Object obj1)
    {
        int i = a(obj1);
        if (i < 0)
        {
            throw new IllegalStateException((new StringBuilder("Negative size: ")).append(obj).append("=").append(obj1).toString());
        } else
        {
            return i;
        }
    }

    protected int a(Object obj)
    {
        return 1;
    }

    public final Object a(Object obj, Object obj1)
    {
        if (obj == null || obj1 == null)
        {
            throw new NullPointerException("key == null || value == null");
        }
        this;
        JVM INSTR monitorenter ;
        Object obj2;
        d = 1 + d;
        b = b + b(obj, obj1);
        obj2 = a.put(obj, obj1);
        if (obj2 == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        b = b - b(obj, obj2);
        this;
        JVM INSTR monitorexit ;
        a(c);
        return obj2;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(int i)
    {
_L1:
        this;
        JVM INSTR monitorenter ;
        if (b < 0 || a.isEmpty() && b != 0)
        {
            throw new IllegalStateException((new StringBuilder()).append(getClass().getName()).append(".sizeOf() is reporting inconsistent results!").toString());
        }
        break MISSING_BLOCK_LABEL_64;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (b > i && !a.isEmpty())
        {
            break MISSING_BLOCK_LABEL_85;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        java.util.Map.Entry entry = (java.util.Map.Entry)a.entrySet().iterator().next();
        Object obj = entry.getKey();
        Object obj1 = entry.getValue();
        a.remove(obj);
        b = b - b(obj, obj1);
        e = 1 + e;
        this;
        JVM INSTR monitorexit ;
          goto _L1
    }

    public final Object b(Object obj)
    {
        if (obj == null)
        {
            throw new NullPointerException("key == null");
        }
        this;
        JVM INSTR monitorenter ;
        Object obj1 = a.get(obj);
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        f = 1 + f;
        this;
        JVM INSTR monitorexit ;
        return obj1;
        g = 1 + g;
        this;
        JVM INSTR monitorexit ;
        return null;
        Exception exception;
        exception;
        throw exception;
    }

    public final String toString()
    {
        this;
        JVM INSTR monitorenter ;
        int i = f + g;
        int j;
        j = 0;
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        j = (100 * f) / i;
        String s;
        Object aobj[] = new Object[4];
        aobj[0] = Integer.valueOf(c);
        aobj[1] = Integer.valueOf(f);
        aobj[2] = Integer.valueOf(g);
        aobj[3] = Integer.valueOf(j);
        s = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", aobj);
        this;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }
}
