// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.internal:
//            nv, nt

public class io
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new nv();
    private final int a;
    private double b;
    private boolean c;
    private int d;
    private ApplicationMetadata e;
    private int f;

    public io()
    {
        this(3, (0.0D / 0.0D), false, -1, null, -1);
    }

    io(int i, double d1, boolean flag, int j, ApplicationMetadata applicationmetadata, int k)
    {
        a = i;
        b = d1;
        c = flag;
        d = j;
        e = applicationmetadata;
        f = k;
    }

    public final int a()
    {
        return a;
    }

    public final double b()
    {
        return b;
    }

    public final boolean c()
    {
        return c;
    }

    public final int d()
    {
        return d;
    }

    public int describeContents()
    {
        return 0;
    }

    public final int e()
    {
        return f;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof io))
            {
                return false;
            }
            io io1 = (io)obj;
            if (b != io1.b || c != io1.c || d != io1.d || !nt.a(e, io1.e) || f != io1.f)
            {
                return false;
            }
        }
        return true;
    }

    public final ApplicationMetadata f()
    {
        return e;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[5];
        aobj[0] = Double.valueOf(b);
        aobj[1] = Boolean.valueOf(c);
        aobj[2] = Integer.valueOf(d);
        aobj[3] = e;
        aobj[4] = Integer.valueOf(f);
        return Arrays.hashCode(aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        nv.a(this, parcel, i);
    }

}
