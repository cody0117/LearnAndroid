// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.maps.model:
//            PolylineOptions, LatLng

public final class m
    implements android.os.Parcelable.Creator
{

    public m()
    {
    }

    static void a(PolylineOptions polylineoptions, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, polylineoptions.a());
        c.b(parcel, 2, polylineoptions.b(), false);
        c.a(parcel, 3, polylineoptions.c());
        c.a(parcel, 4, polylineoptions.d());
        c.a(parcel, 5, polylineoptions.e());
        c.a(parcel, 6, polylineoptions.f());
        c.a(parcel, 7, polylineoptions.g());
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        float f = 0.0F;
        boolean flag = false;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        java.util.ArrayList arraylist = null;
        boolean flag1 = false;
        int j = 0;
        float f1 = 0.0F;
        int k = 0;
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
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, LatLng.CREATOR);
                    break;

                case 3: // '\003'
                    f1 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, l);
                    break;

                case 4: // '\004'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 5: // '\005'
                    f = com.google.android.gms.common.internal.safeparcel.a.l(parcel, l);
                    break;

                case 6: // '\006'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
                    break;

                case 7: // '\007'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new PolylineOptions(k, arraylist, f1, j, f, flag1, flag);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new PolylineOptions[i];
    }
}
