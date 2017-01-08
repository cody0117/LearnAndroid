// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            rx, pt

public class nd
    implements SafeParcelable
{

    public static final rx CREATOR = new rx();
    public final int a;
    public final String b;
    private final int c;

    nd(int i, int j, String s)
    {
        c = i;
        a = j;
        b = s;
    }

    final int a()
    {
        return c;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        nd nd1;
        if (obj instanceof nd)
        {
            if ((nd1 = (nd)obj).a == a && pt.a(nd1.b, b))
            {
                return true;
            }
        }
        return false;
    }

    public final int hashCode()
    {
        return a;
    }

    public final String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(a);
        aobj[1] = b;
        return String.format("%d:%s", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        rx.a(this, parcel);
    }

}
