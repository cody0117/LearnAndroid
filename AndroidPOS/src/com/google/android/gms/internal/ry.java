// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.location.LocationRequest;

// Referenced classes of package com.google.android.gms.internal:
//            nl, nd

public final class ry
    implements android.os.Parcelable.Creator
{

    public ry()
    {
    }

    static void a(nl nl1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, nl1.b, i, false);
        c.a(parcel, 1000, nl1.a());
        c.a(parcel, 2, nl1.c);
        c.a(parcel, 3, nl1.d);
        c.a(parcel, 4, nl1.e);
        c.b(parcel, 5, nl1.f, false);
        c.a(parcel, 6, nl1.g, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        String s = null;
        boolean flag = true;
        boolean flag1 = false;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        Object obj = com.google.android.gms.internal.nl.a;
        boolean flag2 = flag;
        LocationRequest locationrequest = null;
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
                    locationrequest = (LocationRequest)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LocationRequest.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 3: // '\003'
                    flag2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 4: // '\004'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 5: // '\005'
                    obj = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, nd.CREATOR);
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
                return new nl(j, locationrequest, flag1, flag2, flag, ((java.util.List) (obj)), s);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new nl[i];
    }
}
