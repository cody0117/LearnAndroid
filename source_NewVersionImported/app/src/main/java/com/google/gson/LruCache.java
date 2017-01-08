// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;

import java.util.LinkedHashMap;

// Referenced classes of package com.google.gson:
//            Cache

final class LruCache extends LinkedHashMap
    implements Cache
{

    private static final long serialVersionUID = 1L;
    private final int maxCapacity;

    public LruCache(int i)
    {
        super(i, 0.7F, true);
        maxCapacity = i;
    }

    public final void addElement(Object obj, Object obj1)
    {
        this;
        JVM INSTR monitorenter ;
        put(obj, obj1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final Object getElement(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj1 = get(obj);
        this;
        JVM INSTR monitorexit ;
        return obj1;
        Exception exception;
        exception;
        throw exception;
    }

    protected final boolean removeEldestEntry(java.util.Map.Entry entry)
    {
        return size() > maxCapacity;
    }
}
