// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.drive.metadata.i;
import java.util.Date;

public class e extends i
{

    public e(String s, int j)
    {
        super(s, j);
    }

    protected final Object b(Bundle bundle)
    {
        return new Date(bundle.getLong(a()));
    }
}
