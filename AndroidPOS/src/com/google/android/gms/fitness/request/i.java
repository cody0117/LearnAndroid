// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.fitness.data.BleDevice;

// Referenced classes of package com.google.android.gms.fitness.request:
//            b

public final class i
    implements android.os.Parcelable.Creator
{

    public i()
    {
    }

    static void a(com.google.android.gms.fitness.request.b b1, Parcel parcel, int j)
    {
        int k = c.a(parcel);
        c.a(parcel, 1, b1.a(), false);
        c.a(parcel, 1000, b1.c());
        c.a(parcel, 2, b1.b(), j, false);
        c.a(parcel, k);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        BleDevice bledevice = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int k = 0;
        String s = null;
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
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    bledevice = (BleDevice)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, BleDevice.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new com.google.android.gms.fitness.request.b(k, s, bledevice);
            }
        } while (true);
    }

    public final Object[] newArray(int j)
    {
        return new com.google.android.gms.fitness.request.b[j];
    }
}
