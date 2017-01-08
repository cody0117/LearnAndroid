// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.identity.intents;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.identity.intents.model.CountrySpecification;

// Referenced classes of package com.google.android.gms.identity.intents:
//            UserAddressRequest

public final class a
    implements android.os.Parcelable.Creator
{

    public a()
    {
    }

    static void a(UserAddressRequest useraddressrequest, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, useraddressrequest.a());
        c.b(parcel, 2, useraddressrequest.a, false);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        java.util.ArrayList arraylist = null;
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
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, CountrySpecification.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new UserAddressRequest(j, arraylist);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new UserAddressRequest[i];
    }
}
