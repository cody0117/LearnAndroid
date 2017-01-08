// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.el;
import java.util.Collections;
import java.util.Map;

public final class ap
{

    private final Map a;
    private final el b;

    public final Map a()
    {
        return Collections.unmodifiableMap(a);
    }

    public final void a(String s, el el)
    {
        a.put(s, el);
    }

    public final el b()
    {
        return b;
    }

    public final String toString()
    {
        return (new StringBuilder("Properties: ")).append(Collections.unmodifiableMap(a)).append(" pushAfterEvaluate: ").append(b).toString();
    }
}
