// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.maps.model:
//            LatLng

public final class j
    implements android.os.Parcelable.Creator
{

    public j()
    {
    }

    static void a(LatLng latlng, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, latlng.a());
        c.a(parcel, 2, latlng.a);
        c.a(parcel, 3, latlng.b);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        double d = 0.0D;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int k = 0;
        double d1 = d;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int l = parcel.readInt();
                switch (0xffff & l)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    d1 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, l);
                    break;

                case 3: // '\003'
                    d = com.google.android.gms.common.internal.safeparcel.a.m(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new LatLng(k, d1, d);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new LatLng[i];
    }
}
