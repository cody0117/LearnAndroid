// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

// Referenced classes of package com.google.android.gms.maps:
//            StreetViewPanoramaOptions

public final class d
    implements android.os.Parcelable.Creator
{

    public d()
    {
    }

    static void a(StreetViewPanoramaOptions streetviewpanoramaoptions, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, streetviewpanoramaoptions.a());
        c.a(parcel, 2, streetviewpanoramaoptions.g(), i, false);
        c.a(parcel, 3, streetviewpanoramaoptions.j(), false);
        c.a(parcel, 4, streetviewpanoramaoptions.h(), i, false);
        c.a(parcel, 5, streetviewpanoramaoptions.i());
        c.a(parcel, 6, streetviewpanoramaoptions.b());
        c.a(parcel, 7, streetviewpanoramaoptions.c());
        c.a(parcel, 8, streetviewpanoramaoptions.d());
        c.a(parcel, 9, streetviewpanoramaoptions.e());
        c.a(parcel, 10, streetviewpanoramaoptions.f());
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        Integer integer = null;
        byte byte0 = 0;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        byte byte1 = 0;
        byte byte2 = 0;
        byte byte3 = 0;
        byte byte4 = 0;
        LatLng latlng = null;
        String s = null;
        StreetViewPanoramaCamera streetviewpanoramacamera = null;
        int j = 0;
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
                    streetviewpanoramacamera = (StreetViewPanoramaCamera)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, StreetViewPanoramaCamera.CREATOR);
                    break;

                case 3: // '\003'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 4: // '\004'
                    latlng = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
                    break;

                case 5: // '\005'
                    integer = com.google.android.gms.common.internal.safeparcel.a.h(parcel, k);
                    break;

                case 6: // '\006'
                    byte4 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, k);
                    break;

                case 7: // '\007'
                    byte3 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, k);
                    break;

                case 8: // '\b'
                    byte2 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, k);
                    break;

                case 9: // '\t'
                    byte1 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, k);
                    break;

                case 10: // '\n'
                    byte0 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new StreetViewPanoramaOptions(j, streetviewpanoramacamera, s, latlng, integer, byte4, byte3, byte2, byte1, byte0);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new StreetViewPanoramaOptions[i];
    }
}
