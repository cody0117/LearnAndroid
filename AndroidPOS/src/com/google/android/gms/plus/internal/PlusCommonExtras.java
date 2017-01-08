// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.plus.internal:
//            d

public class PlusCommonExtras
    implements SafeParcelable
{

    public static final d CREATOR = new d();
    public static String a = "PlusCommonExtras";
    private final int b;
    private String c;
    private String d;

    public PlusCommonExtras()
    {
        b = 1;
        c = "";
        d = "";
    }

    PlusCommonExtras(int i, String s, String s1)
    {
        b = i;
        c = s;
        d = s1;
    }

    public final int a()
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
        return 0;
    }

    public final boolean equals(Object obj)
    {
        PlusCommonExtras pluscommonextras;
        if (obj instanceof PlusCommonExtras)
        {
            if (b == (pluscommonextras = (PlusCommonExtras)obj).b && pt.a(c, pluscommonextras.c) && pt.a(d, pluscommonextras.d))
            {
                return true;
            }
        }
        return false;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(b);
        aobj[1] = c;
        aobj[2] = d;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("versionCode", Integer.valueOf(b)).a("Gpsrc", c).a("ClientCallingPackage", d).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.plus.internal.d.a(this, parcel);
    }

}
