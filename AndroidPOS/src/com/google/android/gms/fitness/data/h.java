// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.fitness.data:
//            DataSource, DataType, Device, a

public final class h
    implements android.os.Parcelable.Creator
{

    public h()
    {
    }

    static void a(DataSource datasource, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, datasource.a(), i, false);
        c.a(parcel, 1000, datasource.k());
        c.a(parcel, 2, datasource.c(), false);
        c.a(parcel, 3, datasource.b());
        c.a(parcel, 4, datasource.f(), i, false);
        c.a(parcel, 5, datasource.e(), i, false);
        c.a(parcel, 6, datasource.g(), false);
        c.a(parcel, 7, datasource.h());
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        boolean flag = false;
        String s = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.fitness.data.a a1 = null;
        Device device = null;
        int j = 0;
        String s1 = null;
        DataType datatype = null;
        int k = 0;
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
                    datatype = (DataType)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, DataType.CREATOR);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 3: // '\003'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 4: // '\004'
                    device = (Device)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, Device.CREATOR);
                    break;

                case 5: // '\005'
                    a1 = (com.google.android.gms.fitness.data.a)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, a.CREATOR);
                    break;

                case 6: // '\006'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 7: // '\007'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new DataSource(k, datatype, s1, j, device, a1, s, flag);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new DataSource[i];
    }
}
