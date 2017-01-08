// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.internal:
//            sd, pt, pu

public class nw
    implements SafeParcelable
{

    public static final sd CREATOR = new sd();
    final int a;
    private final String b;
    private final String c;
    private final String d;

    nw(int i, String s, String s1, String s2)
    {
        a = i;
        b = s;
        c = s1;
        d = s2;
    }

    public final String a()
    {
        return b;
    }

    public final String b()
    {
        return c;
    }

    public final String c()
    {
        return d;
    }

    public int describeContents()
    {
        sd _tmp = CREATOR;
        return 0;
    }

    public final boolean equals(Object obj)
    {
        nw nw1;
        if (obj instanceof nw)
        {
            if (pt.a(b, (nw1 = (nw)obj).b) && pt.a(c, nw1.c) && pt.a(d, nw1.d))
            {
                return true;
            }
        }
        return false;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = b;
        aobj[1] = c;
        aobj[2] = d;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("mPlaceId", b).a("mTag", c).a("mSource", d).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        sd _tmp = CREATOR;
        sd.a(this, parcel);
    }

}
