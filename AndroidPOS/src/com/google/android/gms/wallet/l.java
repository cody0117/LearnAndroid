// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.identity.intents.model.CountrySpecification;

// Referenced classes of package com.google.android.gms.wallet:
//            MaskedWalletRequest, Cart, CountrySpecification

public final class l
    implements android.os.Parcelable.Creator
{

    public l()
    {
    }

    static void a(MaskedWalletRequest maskedwalletrequest, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, maskedwalletrequest.a());
        c.a(parcel, 2, maskedwalletrequest.a, false);
        c.a(parcel, 3, maskedwalletrequest.b);
        c.a(parcel, 4, maskedwalletrequest.c);
        c.a(parcel, 5, maskedwalletrequest.d);
        c.a(parcel, 6, maskedwalletrequest.e, false);
        c.a(parcel, 7, maskedwalletrequest.f, false);
        c.a(parcel, 8, maskedwalletrequest.g, false);
        c.a(parcel, 9, maskedwalletrequest.h, i, false);
        c.a(parcel, 10, maskedwalletrequest.i);
        c.a(parcel, 11, maskedwalletrequest.j);
        c.a(parcel, 12, maskedwalletrequest.k, i);
        c.a(parcel, 13, maskedwalletrequest.l);
        c.a(parcel, 14, maskedwalletrequest.m);
        c.b(parcel, 15, maskedwalletrequest.n, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        String s = null;
        boolean flag = false;
        boolean flag1 = false;
        boolean flag2 = false;
        String s1 = null;
        String s2 = null;
        String s3 = null;
        Cart cart = null;
        boolean flag3 = false;
        boolean flag4 = false;
        com.google.android.gms.wallet.CountrySpecification acountryspecification[] = null;
        boolean flag5 = true;
        boolean flag6 = true;
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
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 3: // '\003'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 4: // '\004'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 5: // '\005'
                    flag2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 6: // '\006'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 7: // '\007'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 8: // '\b'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 9: // '\t'
                    cart = (Cart)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Cart.CREATOR);
                    break;

                case 10: // '\n'
                    flag3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 11: // '\013'
                    flag4 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 12: // '\f'
                    acountryspecification = (com.google.android.gms.wallet.CountrySpecification[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, k, CountrySpecification.CREATOR);
                    break;

                case 13: // '\r'
                    flag5 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 14: // '\016'
                    flag6 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 15: // '\017'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, CountrySpecification.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new MaskedWalletRequest(j, s, flag, flag1, flag2, s1, s2, s3, cart, flag3, flag4, acountryspecification, flag5, flag6, arraylist);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new MaskedWalletRequest[i];
    }
}
