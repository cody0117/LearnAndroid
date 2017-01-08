// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.maps.model:
//            StreetViewPanoramaLocation, StreetViewPanoramaLink, LatLng

public final class p
    implements android.os.Parcelable.Creator
{

    public p()
    {
    }

    static void a(StreetViewPanoramaLocation streetviewpanoramalocation, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, streetviewpanoramalocation.a());
        c.a(parcel, 2, streetviewpanoramalocation.a, i);
        c.a(parcel, 3, streetviewpanoramalocation.b, i, false);
        c.a(parcel, 4, streetviewpanoramalocation.c, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        LatLng latlng = null;
        StreetViewPanoramaLink astreetviewpanoramalink[] = null;
        int j = 0;
        String s = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int k = parcel.readInt();
                switch (0xffff & k)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    astreetviewpanoramalink = (StreetViewPanoramaLink[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, k, StreetViewPanoramaLink.CREATOR);
                    break;

                case 3: // '\003'
                    latlng = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
                    break;

                case 4: // '\004'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new StreetViewPanoramaLocation(j, astreetviewpanoramalink, latlng, s);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new StreetViewPanoramaLocation[i];
    }
}
