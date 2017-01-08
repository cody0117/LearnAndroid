// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            hd, hh

public final class na
    implements android.os.Parcelable.Creator
{

    public na()
    {
    }

    static void a(hd hd1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, hd1.b, i);
        c.a(parcel, 1000, hd1.a);
        c.a(parcel, 2, hd1.c, false);
        c.a(parcel, 3, hd1.d);
        c.a(parcel, 4, hd1.e, i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        boolean flag = false;
        Account account = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        String s = null;
        hh ahh[] = null;
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
                    ahh = (hh[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, k, hh.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 3: // '\003'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 4: // '\004'
                    account = (Account)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Account.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new hd(j, ahh, s, flag, account);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new hd[i];
    }
}
