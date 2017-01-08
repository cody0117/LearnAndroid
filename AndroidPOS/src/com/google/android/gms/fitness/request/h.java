// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;

// Referenced classes of package com.google.android.gms.fitness.request:
//            aj

public final class h
    implements android.os.Parcelable.Creator
{

    public h()
    {
    }

    static void a(aj aj1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, aj1.b(), i, false);
        c.a(parcel, 1000, aj1.a());
        c.a(parcel, 2, aj1.c(), i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        DataType datatype = null;
        int j = 0;
        DataSource datasource = null;
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
                    datatype = (DataType)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DataType.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    datasource = (DataSource)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DataSource.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new aj(j, datatype, datasource);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new aj[i];
    }
}
