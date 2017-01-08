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
//            DataReadRequest

public final class n
    implements android.os.Parcelable.Creator
{

    public n()
    {
    }

    static void a(DataReadRequest datareadrequest, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.b(parcel, 1, datareadrequest.a(), false);
        c.a(parcel, 1000, datareadrequest.j());
        c.b(parcel, 2, datareadrequest.b(), false);
        c.a(parcel, 3, datareadrequest.l());
        c.a(parcel, 4, datareadrequest.k());
        c.b(parcel, 5, datareadrequest.c(), false);
        c.b(parcel, 6, datareadrequest.d(), false);
        c.a(parcel, 7, datareadrequest.e());
        c.a(parcel, 8, datareadrequest.m());
        c.a(parcel, 9, datareadrequest.f(), i, false);
        c.a(parcel, 10, datareadrequest.g());
        c.a(parcel, 12, datareadrequest.i());
        c.a(parcel, 13, datareadrequest.h());
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        java.util.ArrayList arraylist = null;
        java.util.ArrayList arraylist1 = null;
        long l = 0L;
        long l1 = 0L;
        java.util.ArrayList arraylist2 = null;
        java.util.ArrayList arraylist3 = null;
        int k = 0;
        long l2 = 0L;
        DataSource datasource = null;
        int i1 = 0;
        boolean flag = false;
        boolean flag1 = false;
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
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1, DataType.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1, DataSource.CREATOR);
                    break;

                case 3: // '\003'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 4: // '\004'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 5: // '\005'
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1, DataType.CREATOR);
                    break;

                case 6: // '\006'
                    arraylist3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1, DataSource.CREATOR);
                    break;

                case 7: // '\007'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 8: // '\b'
                    l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 9: // '\t'
                    datasource = (DataSource)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, DataSource.CREATOR);
                    break;

                case 10: // '\n'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 12: // '\f'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 13: // '\r'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new DataReadRequest(j, arraylist, arraylist1, l, l1, arraylist2, arraylist3, k, l2, datasource, i1, flag, flag1);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new DataReadRequest[i];
    }
}
