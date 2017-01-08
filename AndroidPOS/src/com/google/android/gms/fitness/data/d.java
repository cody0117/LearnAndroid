// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.fitness.data:
//            BleDevice, DataType

public final class d
    implements android.os.Parcelable.Creator
{

    public d()
    {
    }

    static void a(BleDevice bledevice, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, bledevice.a(), false);
        c.a(parcel, 1000, bledevice.e());
        c.a(parcel, 2, bledevice.b(), false);
        c.a(parcel, 3, bledevice.c(), false);
        c.b(parcel, 4, bledevice.d(), false);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        java.util.ArrayList arraylist = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        java.util.ArrayList arraylist1 = null;
        String s = null;
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
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 3: // '\003'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.v(parcel, k);
                    break;

                case 4: // '\004'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, DataType.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new BleDevice(j, s1, s, arraylist1, arraylist);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new BleDevice[i];
    }
}
