// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.fragment;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.wallet.fragment:
//            WalletFragmentOptions, WalletFragmentStyle

public final class b
    implements android.os.Parcelable.Creator
{

    public b()
    {
    }

    static void a(WalletFragmentOptions walletfragmentoptions, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, walletfragmentoptions.a);
        c.a(parcel, 2, walletfragmentoptions.a());
        c.a(parcel, 3, walletfragmentoptions.b());
        c.a(parcel, 4, walletfragmentoptions.c(), i, false);
        c.a(parcel, 5, walletfragmentoptions.d());
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 1;
        int j = 0;
        int k = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        WalletFragmentStyle walletfragmentstyle = null;
        int l = i;
        int i1 = 0;
        do
        {
            if (parcel.dataPosition() < k)
            {
                int j1 = parcel.readInt();
                switch (0xffff & j1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
                    break;

                case 1: // '\001'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 3: // '\003'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 4: // '\004'
                    walletfragmentstyle = (WalletFragmentStyle)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, WalletFragmentStyle.CREATOR);
                    break;

                case 5: // '\005'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != k)
            {
                throw new com.google.android.gms.common.internal.safeparcel.b((new StringBuilder("Overread allowed size end=")).append(k).toString(), parcel);
            } else
            {
                return new WalletFragmentOptions(i1, l, j, walletfragmentstyle, i);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new WalletFragmentOptions[i];
    }
}
