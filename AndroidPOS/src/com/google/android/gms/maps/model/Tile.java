// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.maps.internal.b;

// Referenced classes of package com.google.android.gms.maps.model:
//            r

public final class Tile
    implements SafeParcelable
{

    public static final r CREATOR = new r();
    public final int a;
    public final int b;
    public final byte c[];
    private final int d;

    public Tile()
    {
        this(1, -1, -1, null);
    }

    Tile(int i, int j, int k, byte abyte0[])
    {
        d = i;
        a = j;
        b = k;
        c = abyte0;
    }

    final int a()
    {
        return d;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        if (com.google.android.gms.maps.internal.b.a())
        {
            int j = com.google.android.gms.common.internal.safeparcel.c.a(parcel);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 1, d);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 2, a);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 3, b);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 4, c);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, j);
            return;
        } else
        {
            r.a(this, parcel);
            return;
        }
    }

}
