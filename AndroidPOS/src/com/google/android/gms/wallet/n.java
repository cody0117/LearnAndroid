// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.wallet.wobs.CommonWalletObject;

// Referenced classes of package com.google.android.gms.wallet:
//            OfferWalletObject

public final class n
    implements android.os.Parcelable.Creator
{

    public n()
    {
    }

    static void a(OfferWalletObject offerwalletobject, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, offerwalletobject.a());
        c.a(parcel, 2, offerwalletobject.a, false);
        c.a(parcel, 3, offerwalletobject.b, false);
        c.a(parcel, 4, offerwalletobject.c, i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        CommonWalletObject commonwalletobject = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        String s = null;
        int j = 0;
        String s1 = null;
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
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 3: // '\003'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 4: // '\004'
                    commonwalletobject = (CommonWalletObject)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, CommonWalletObject.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new OfferWalletObject(j, s, s1, commonwalletobject);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new OfferWalletObject[i];
    }
}
