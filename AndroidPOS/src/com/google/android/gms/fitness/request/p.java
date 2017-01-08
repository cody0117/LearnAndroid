// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.fitness.data.DataType;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.fitness.request:
//            DataSourcesRequest

public final class p
    implements android.os.Parcelable.Creator
{

    public p()
    {
    }

    static void a(DataSourcesRequest datasourcesrequest, Parcel parcel)
    {
        int i = c.a(parcel);
        c.b(parcel, 1, datasourcesrequest.a(), false);
        c.a(parcel, 1000, datasourcesrequest.c());
        c.a(parcel, datasourcesrequest.d());
        c.a(parcel, 3, datasourcesrequest.b());
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        boolean flag = false;
        java.util.List list = null;
        ArrayList arraylist = null;
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
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, DataType.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    int l = com.google.android.gms.common.internal.safeparcel.a.a(parcel, k);
                    int i1 = parcel.dataPosition();
                    ArrayList arraylist1;
                    if (l == 0)
                    {
                        arraylist1 = null;
                    } else
                    {
                        arraylist1 = new ArrayList();
                        int j1 = parcel.readInt();
                        for (int k1 = 0; k1 < j1; k1++)
                        {
                            arraylist1.add(Integer.valueOf(parcel.readInt()));
                        }

                        parcel.setDataPosition(i1 + l);
                    }
                    list = arraylist1;
                    break;

                case 3: // '\003'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new DataSourcesRequest(j, arraylist, list, flag);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new DataSourcesRequest[i];
    }
}
