// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.maps.model:
//            GroundOverlayOptions, LatLng, LatLngBounds

public final class h
    implements android.os.Parcelable.Creator
{

    public h()
    {
    }

    static void a(GroundOverlayOptions groundoverlayoptions, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, groundoverlayoptions.b());
        c.a(parcel, 2, groundoverlayoptions.a());
        c.a(parcel, 3, groundoverlayoptions.c(), i, false);
        c.a(parcel, 4, groundoverlayoptions.d());
        c.a(parcel, 5, groundoverlayoptions.e());
        c.a(parcel, 6, groundoverlayoptions.f(), i, false);
        c.a(parcel, 7, groundoverlayoptions.g());
        c.a(parcel, 8, groundoverlayoptions.h());
        c.a(parcel, 9, groundoverlayoptions.l());
        c.a(parcel, 10, groundoverlayoptions.i());
        c.a(parcel, 11, groundoverlayoptions.j());
        c.a(parcel, 12, groundoverlayoptions.k());
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        android.os.IBinder ibinder = null;
        LatLng latlng = null;
        float f = 0.0F;
        float f1 = 0.0F;
        LatLngBounds latlngbounds = null;
        float f2 = 0.0F;
        float f3 = 0.0F;
        boolean flag = false;
        float f4 = 0.0F;
        float f5 = 0.0F;
        float f6 = 0.0F;
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
                    ibinder = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k);
                    break;

                case 3: // '\003'
                    latlng = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
                    break;

                case 4: // '\004'
                    f = com.google.android.gms.common.internal.safeparcel.a.l(parcel, k);
                    break;

                case 5: // '\005'
                    f1 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, k);
                    break;

                case 6: // '\006'
                    latlngbounds = (LatLngBounds)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLngBounds.CREATOR);
                    break;

                case 7: // '\007'
                    f2 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, k);
                    break;

                case 8: // '\b'
                    f3 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, k);
                    break;

                case 9: // '\t'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 10: // '\n'
                    f4 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, k);
                    break;

                case 11: // '\013'
                    f5 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, k);
                    break;

                case 12: // '\f'
                    f6 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new GroundOverlayOptions(j, ibinder, latlng, f, f1, latlngbounds, f2, f3, flag, f4, f5, f6);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new GroundOverlayOptions[i];
    }
}
