// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.internal;

import android.graphics.Point;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.maps.internal:
//            c

public class y
    implements SafeParcelable
{

    public static final c CREATOR = new c();
    private final int a;
    private final Point b;

    public y(int i, Point point)
    {
        a = i;
        b = point;
    }

    final int a()
    {
        return a;
    }

    public final Point b()
    {
        return b;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof y))
        {
            return false;
        } else
        {
            y y1 = (y)obj;
            return b.equals(y1.b);
        }
    }

    public final int hashCode()
    {
        return b.hashCode();
    }

    public final String toString()
    {
        return b.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        c.a(this, parcel, i);
    }

}
