// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.fitness.data:
//            DataSet, DataSource, DataType

public final class g
    implements android.os.Parcelable.Creator
{

    public g()
    {
    }

    static void a(DataSet dataset, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, dataset.a(), i, false);
        c.a(parcel, 1000, dataset.d());
        c.a(parcel, 2, dataset.b(), i, false);
        c.a(parcel, 3, dataset.e());
        c.b(parcel, 4, dataset.f(), false);
        c.a(parcel, 5, dataset.c());
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        boolean flag = false;
        ArrayList arraylist = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        ArrayList arraylist1 = new ArrayList();
        DataType datatype = null;
        DataSource datasource = null;
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
                    datasource = (DataSource)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DataSource.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    datatype = (DataType)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DataType.CREATOR);
                    break;

                case 3: // '\003'
                    com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, arraylist1, getClass().getClassLoader());
                    break;

                case 4: // '\004'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, DataSource.CREATOR);
                    break;

                case 5: // '\005'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new DataSet(j, datasource, datatype, arraylist1, arraylist, flag);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new DataSet[i];
    }
}
