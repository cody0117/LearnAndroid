// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.fitness.data:
//            DataPoint, DataSource, Value

public final class f
    implements android.os.Parcelable.Creator
{

    public f()
    {
    }

    static void a(DataPoint datapoint, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, datapoint.b(), i, false);
        c.a(parcel, 1000, datapoint.f());
        c.a(parcel, 3, datapoint.g());
        c.a(parcel, 4, datapoint.h());
        c.a(parcel, 5, datapoint.a(), i);
        c.a(parcel, 6, datapoint.c(), i, false);
        c.a(parcel, 7, datapoint.d());
        c.a(parcel, 8, datapoint.e());
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        DataSource datasource = null;
        long l = 0L;
        long l1 = 0L;
        Value avalue[] = null;
        DataSource datasource1 = null;
        long l2 = 0L;
        long l3 = 0L;
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
                    datasource = (DataSource)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DataSource.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 3: // '\003'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k);
                    break;

                case 4: // '\004'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k);
                    break;

                case 5: // '\005'
                    avalue = (Value[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, k, Value.CREATOR);
                    break;

                case 6: // '\006'
                    datasource1 = (DataSource)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DataSource.CREATOR);
                    break;

                case 7: // '\007'
                    l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k);
                    break;

                case 8: // '\b'
                    l3 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new DataPoint(j, datasource, l, l1, avalue, datasource1, l2, l3);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new DataPoint[i];
    }
}
