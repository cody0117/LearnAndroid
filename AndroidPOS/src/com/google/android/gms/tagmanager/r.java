// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.el;
import java.util.Set;

abstract class r
{

    private final Set a;

    public abstract boolean a();

    final boolean a(Set set)
    {
        return set.containsAll(a);
    }

    public abstract el b();

    public final Set c()
    {
        return a;
    }
}
