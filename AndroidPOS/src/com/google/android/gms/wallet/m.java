// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.wallet:
//            NotifyTransactionStatusRequest

public final class m
    implements android.os.Parcelable.Creator
{

    public m()
    {
    }

    static void a(NotifyTransactionStatusRequest notifytransactionstatusrequest, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, notifytransactionstatusrequest.a);
        c.a(parcel, 2, notifytransactionstatusrequest.b, false);
        c.a(parcel, 3, notifytransactionstatusrequest.c);
        c.a(parcel, 4, notifytransactionstatusrequest.d, false);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        String s = null;
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        String s1 = null;
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
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 3: // '\003'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 4: // '\004'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new NotifyTransactionStatusRequest(k, s1, i, s);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new NotifyTransactionStatusRequest[i];
    }
}
