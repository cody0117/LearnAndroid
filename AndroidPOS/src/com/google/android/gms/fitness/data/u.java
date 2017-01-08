// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.fitness.data:
//            Subscription, DataSource, DataType

public final class u
    implements android.os.Parcelable.Creator
{

    public u()
    {
    }

    static void a(Subscription subscription, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, subscription.a(), i, false);
        c.a(parcel, 1000, subscription.e());
        c.a(parcel, 2, subscription.b(), i, false);
        c.a(parcel, 3, subscription.d());
        c.a(parcel, 4, subscription.c());
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        DataType datatype = null;
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        long l = 0L;
        DataSource datasource = null;
        int k = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int i1 = parcel.readInt();
                switch (0xffff & i1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
                    break;

                case 1: // '\001'
                    datasource = (DataSource)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, DataSource.CREATOR);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    datatype = (DataType)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, DataType.CREATOR);
                    break;

                case 3: // '\003'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 4: // '\004'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new Subscription(k, datasource, datatype, l, i);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new Subscription[i];
    }
}
