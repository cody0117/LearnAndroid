// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.maps.model:
//            CameraPosition, LatLng

public final class f
    implements android.os.Parcelable.Creator
{

    public f()
    {
    }

    static void a(CameraPosition cameraposition, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, cameraposition.a());
        c.a(parcel, 2, cameraposition.a, i, false);
        c.a(parcel, 3, cameraposition.b);
        c.a(parcel, 4, cameraposition.c);
        c.a(parcel, 5, cameraposition.d);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        float f1 = 0.0F;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        LatLng latlng = null;
        float f2 = 0.0F;
        float f3 = 0.0F;
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
                    latlng = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
                    break;

                case 3: // '\003'
                    f3 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, k);
                    break;

                case 4: // '\004'
                    f2 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, k);
                    break;

                case 5: // '\005'
                    f1 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new CameraPosition(j, latlng, f3, f2, f1);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new CameraPosition[i];
    }
}
