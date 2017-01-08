// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.maps.model:
//            StreetViewPanoramaCamera

public final class n
    implements android.os.Parcelable.Creator
{

    public n()
    {
    }

    static void a(StreetViewPanoramaCamera streetviewpanoramacamera, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, streetviewpanoramacamera.a());
        c.a(parcel, 2, streetviewpanoramacamera.a);
        c.a(parcel, 3, streetviewpanoramacamera.b);
        c.a(parcel, 4, streetviewpanoramacamera.c);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        float f = 0.0F;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        float f1 = 0.0F;
        int j = 0;
        float f2 = 0.0F;
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
                    f1 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, k);
                    break;

                case 3: // '\003'
                    f2 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, k);
                    break;

                case 4: // '\004'
                    f = com.google.android.gms.common.internal.safeparcel.a.l(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new StreetViewPanoramaCamera(j, f1, f2, f);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new StreetViewPanoramaCamera[i];
    }
}
