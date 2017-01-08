// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.fitness.data:
//            RawDataPoint, Value

public final class p
    implements android.os.Parcelable.Creator
{

    public p()
    {
    }

    static void a(RawDataPoint rawdatapoint, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, rawdatapoint.b);
        c.a(parcel, 1000, rawdatapoint.a);
        c.a(parcel, 2, rawdatapoint.c);
        c.a(parcel, 3, rawdatapoint.d, i);
        c.a(parcel, 4, rawdatapoint.e);
        c.a(parcel, 5, rawdatapoint.f);
        c.a(parcel, 6, rawdatapoint.g);
        c.a(parcel, 7, rawdatapoint.h);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        long l = 0L;
        long l1 = 0L;
        Value avalue[] = null;
        int k = 0;
        int i1 = 0;
        long l2 = 0L;
        long l3 = 0L;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int j1 = parcel.readInt();
                switch (0xffff & j1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
                    break;

                case 1: // '\001'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 3: // '\003'
                    avalue = (Value[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1, Value.CREATOR);
                    break;

                case 4: // '\004'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 5: // '\005'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 6: // '\006'
                    l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 7: // '\007'
                    l3 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new RawDataPoint(j, l, l1, avalue, k, i1, l2, l3);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new RawDataPoint[i];
    }
}
