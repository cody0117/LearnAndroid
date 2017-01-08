// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.location.LocationRequest;

// Referenced classes of package com.google.android.gms.fitness.request:
//            o

public final class ab
    implements android.os.Parcelable.Creator
{

    public ab()
    {
    }

    static void a(o o1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, o1.a(), i, false);
        c.a(parcel, 1000, o1.j());
        c.a(parcel, 2, o1.b(), i, false);
        c.a(parcel, 3, o1.k());
        c.a(parcel, 4, o1.a);
        c.a(parcel, 5, o1.b);
        c.a(parcel, 6, o1.e());
        c.a(parcel, 7, o1.f());
        c.a(parcel, 8, o1.c(), i, false);
        c.a(parcel, 9, o1.d());
        c.a(parcel, 10, o1.h());
        c.b(parcel, 11, o1.g(), false);
        c.a(parcel, 12, o1.i());
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        DataSource datasource = null;
        DataType datatype = null;
        android.os.IBinder ibinder = null;
        int k = 0;
        int l = 0;
        long l1 = 0L;
        long l2 = 0L;
        PendingIntent pendingintent = null;
        long l3 = 0L;
        int i1 = 0;
        java.util.ArrayList arraylist = null;
        long l4 = 0L;
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
                    datasource = (DataSource)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, DataSource.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    datatype = (DataType)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, DataType.CREATOR);
                    break;

                case 3: // '\003'
                    ibinder = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 4: // '\004'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 5: // '\005'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 6: // '\006'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 7: // '\007'
                    l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 8: // '\b'
                    pendingintent = (PendingIntent)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, PendingIntent.CREATOR);
                    break;

                case 9: // '\t'
                    l3 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 10: // '\n'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 11: // '\013'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1, LocationRequest.CREATOR);
                    break;

                case 12: // '\f'
                    l4 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new o(j, datasource, datatype, ibinder, k, l, l1, l2, pendingintent, l3, i1, arraylist, l4);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new o[i];
    }
}
