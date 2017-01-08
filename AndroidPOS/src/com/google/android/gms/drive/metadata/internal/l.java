// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.drive.metadata.g;
import java.util.Collections;

public final class l extends g
{

    public l(String s)
    {
        super(s, Collections.singleton(s), Collections.emptySet(), 0x419ce0);
    }

    protected final Object b(Bundle bundle)
    {
        return bundle.getStringArrayList(a());
    }
}
