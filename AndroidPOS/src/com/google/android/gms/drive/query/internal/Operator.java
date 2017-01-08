// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.drive.query.internal:
//            l

public class Operator
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new l();
    public static final Operator a = new Operator("=");
    public static final Operator b = new Operator("<");
    public static final Operator c = new Operator("<=");
    public static final Operator d = new Operator(">");
    public static final Operator e = new Operator(">=");
    public static final Operator f = new Operator("and");
    public static final Operator g = new Operator("or");
    public static final Operator h = new Operator("not");
    public static final Operator i = new Operator("contains");
    final String j;
    final int k;

    Operator(int i1, String s)
    {
        k = i1;
        j = s;
    }

    private Operator(String s)
    {
        this(1, s);
    }

    public final String a()
    {
        return j;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        Operator operator;
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        operator = (Operator)obj;
        if (j != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (operator.j == null) goto _L1; else goto _L3
_L3:
        return false;
        if (j.equals(operator.j)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public final int hashCode()
    {
        int i1;
        if (j == null)
        {
            i1 = 0;
        } else
        {
            i1 = j.hashCode();
        }
        return i1 + 31;
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        l.a(this, parcel);
    }

}
