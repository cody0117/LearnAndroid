// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            h

public class al
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new h();
    final int a;
    private final String b;
    private final String c;

    al(int i, String s, String s1)
    {
        a = i;
        b = s;
        c = s1;
    }

    public final String a()
    {
        return b;
    }

    public final String b()
    {
        return c;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        al al1;
        if (obj instanceof al)
        {
            if ((al1 = (al)obj).b.equals(b) && al1.c.equals(c))
            {
                return true;
            }
        }
        return false;
    }

    public final int hashCode()
    {
        return 37 * (629 + b.hashCode()) + c.hashCode();
    }

    public final String toString()
    {
        return (new StringBuilder("NodeParcelable{")).append(b).append(",").append(c).append("}").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        h.a(this, parcel);
    }

}
