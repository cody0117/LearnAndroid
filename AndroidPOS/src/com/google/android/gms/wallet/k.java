// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.identity.intents.model.UserAddress;

// Referenced classes of package com.google.android.gms.wallet:
//            MaskedWallet, Address, LoyaltyWalletObject, OfferWalletObject, 
//            InstrumentInfo

public final class k
    implements android.os.Parcelable.Creator
{

    public k()
    {
    }

    static void a(MaskedWallet maskedwallet, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, maskedwallet.a());
        c.a(parcel, 2, maskedwallet.a, false);
        c.a(parcel, 3, maskedwallet.b, false);
        c.a(parcel, 4, maskedwallet.c);
        c.a(parcel, 5, maskedwallet.d, false);
        c.a(parcel, 6, maskedwallet.e, i, false);
        c.a(parcel, 7, maskedwallet.f, i, false);
        c.a(parcel, 8, maskedwallet.g, i);
        c.a(parcel, 9, maskedwallet.h, i);
        c.a(parcel, 10, maskedwallet.i, i, false);
        c.a(parcel, 11, maskedwallet.j, i, false);
        c.a(parcel, 12, maskedwallet.k, i);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        String s = null;
        String s1 = null;
        String as[] = null;
        String s2 = null;
        Address address = null;
        Address address1 = null;
        LoyaltyWalletObject aloyaltywalletobject[] = null;
        OfferWalletObject aofferwalletobject[] = null;
        UserAddress useraddress = null;
        UserAddress useraddress1 = null;
        InstrumentInfo ainstrumentinfo[] = null;
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
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 3: // '\003'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 4: // '\004'
                    as = com.google.android.gms.common.internal.safeparcel.a.u(parcel, l);
                    break;

                case 5: // '\005'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 6: // '\006'
                    address = (Address)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, Address.CREATOR);
                    break;

                case 7: // '\007'
                    address1 = (Address)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, Address.CREATOR);
                    break;

                case 8: // '\b'
                    aloyaltywalletobject = (LoyaltyWalletObject[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, l, LoyaltyWalletObject.CREATOR);
                    break;

                case 9: // '\t'
                    aofferwalletobject = (OfferWalletObject[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, l, OfferWalletObject.CREATOR);
                    break;

                case 10: // '\n'
                    useraddress = (UserAddress)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, UserAddress.CREATOR);
                    break;

                case 11: // '\013'
                    useraddress1 = (UserAddress)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, UserAddress.CREATOR);
                    break;

                case 12: // '\f'
                    ainstrumentinfo = (InstrumentInfo[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, l, InstrumentInfo.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new MaskedWallet(j, s, s1, as, s2, address, address1, aloyaltywalletobject, aofferwalletobject, useraddress, useraddress1, ainstrumentinfo);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new MaskedWallet[i];
    }
}
