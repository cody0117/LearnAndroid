// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.images;

import android.net.Uri;
import com.google.android.gms.internal.pt;
import java.util.Arrays;

final class f
{

    public final Uri a;

    public f(Uri uri)
    {
        a = uri;
    }

    public final boolean equals(Object obj)
    {
        if (!(obj instanceof f))
        {
            return false;
        }
        if (this == obj)
        {
            return true;
        } else
        {
            return pt.a(((f)obj).a, a);
        }
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a;
        return Arrays.hashCode(aobj);
    }
}
