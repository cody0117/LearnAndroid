// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.drive.metadata.f;

public class c extends f
{

    public c(String s, int i)
    {
        super(s, i);
    }

    protected final Object b(Bundle bundle)
    {
        return Boolean.valueOf(bundle.getBoolean(a()));
    }
}
