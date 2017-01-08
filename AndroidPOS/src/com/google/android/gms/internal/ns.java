// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.internal:
//            sb, nu, pt, pu

public final class ns
    implements SafeParcelable
{

    public static final sb CREATOR = new sb();
    private final int a;
    private final int b;
    private final int c;
    private final nu d;

    ns(int i, int j, int k, nu nu1)
    {
        a = i;
        b = j;
        c = k;
        d = nu1;
    }

    public final int a()
    {
        return a;
    }

    public final int b()
    {
        return b;
    }

    public final int c()
    {
        return c;
    }

    public final nu d()
    {
        return d;
    }

    public final int describeContents()
    {
        sb _tmp = CREATOR;
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof ns))
            {
                return false;
            }
            ns ns1 = (ns)obj;
            if (b != ns1.b || c != ns1.c || !d.equals(ns1.d))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(b);
        aobj[1] = Integer.valueOf(c);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("transitionTypes", Integer.valueOf(b)).a("loiteringTimeMillis", Integer.valueOf(c)).a("placeFilter", d).toString();
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        sb _tmp = CREATOR;
        sb.a(this, parcel, i);
    }

}
