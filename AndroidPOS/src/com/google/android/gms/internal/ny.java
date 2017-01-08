// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.internal:
//            se, pt, pu, nu

public final class ny
    implements SafeParcelable
{

    public static final se CREATOR = new se();
    public static final long a;
    final int b;
    private final nu c;
    private final long d;
    private final int e;

    public ny(int i, nu nu, long l, int j)
    {
        b = i;
        c = nu;
        d = l;
        e = j;
    }

    public final nu a()
    {
        return c;
    }

    public final long b()
    {
        return d;
    }

    public final int c()
    {
        return e;
    }

    public final int describeContents()
    {
        se _tmp = CREATOR;
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof ny))
            {
                return false;
            }
            ny ny1 = (ny)obj;
            if (!pt.a(c, ny1.c) || d != ny1.d || e != ny1.e)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = c;
        aobj[1] = Long.valueOf(d);
        aobj[2] = Integer.valueOf(e);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("filter", c).a("interval", Long.valueOf(d)).a("priority", Integer.valueOf(e)).toString();
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        se _tmp = CREATOR;
        se.a(this, parcel, i);
    }

    static 
    {
        a = TimeUnit.HOURS.toMillis(1L);
    }
}
