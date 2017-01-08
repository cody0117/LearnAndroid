// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.internal:
//            nr, nt

public class ij
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new nr();
    private final int a;
    private String b;

    public ij()
    {
        this(1, null);
    }

    ij(int i, String s)
    {
        a = i;
        b = s;
    }

    public final int a()
    {
        return a;
    }

    public final String b()
    {
        return b;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof ij))
        {
            return false;
        } else
        {
            ij ij1 = (ij)obj;
            return nt.a(b, ij1.b);
        }
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[1];
        aobj[0] = b;
        return Arrays.hashCode(aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        nr.a(this, parcel);
    }

}
