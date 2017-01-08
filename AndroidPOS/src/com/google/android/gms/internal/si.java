// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.maps.model.LatLng;

// Referenced classes of package com.google.android.gms.internal:
//            oc, oa

public final class si
    implements android.os.Parcelable.Creator
{

    public si()
    {
    }

    static void a(oc oc1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, oc1.a(), false);
        c.a(parcel, 1000, oc1.a);
        c.a(parcel, 2, oc1.b(), i, false);
        c.a(parcel, 3, oc1.c(), false);
        c.b(parcel, 4, oc1.d(), false);
        c.a(parcel, 5, oc1.e(), false);
        c.a(parcel, 6, oc1.f(), false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        String s = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        String s1 = null;
        java.util.ArrayList arraylist = null;
        String s2 = null;
        LatLng latlng = null;
        String s3 = null;
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
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    latlng = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
                    break;

                case 3: // '\003'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 4: // '\004'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, oa.CREATOR);
                    break;

                case 5: // '\005'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 6: // '\006'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new oc(j, s3, latlng, s2, arraylist, s1, s);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new oc[i];
    }
}
