// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.internal.nn;

// Referenced classes of package com.google.android.gms.location:
//            GeofencingRequest

public final class d
    implements android.os.Parcelable.Creator
{

    public d()
    {
    }

    static void a(GeofencingRequest geofencingrequest, Parcel parcel)
    {
        int i = c.a(parcel);
        c.b(parcel, 1, geofencingrequest.b(), false);
        c.a(parcel, 1000, geofencingrequest.a());
        c.a(parcel, 2, geofencingrequest.c());
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        java.util.ArrayList arraylist = null;
        int k = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int l = parcel.readInt();
                switch (0xffff & l)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, nn.CREATOR);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new GeofencingRequest(k, arraylist, i);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new GeofencingRequest[i];
    }
}
