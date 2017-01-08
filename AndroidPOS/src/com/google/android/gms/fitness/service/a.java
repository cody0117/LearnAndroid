// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.service;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.fitness.data.DataSource;

// Referenced classes of package com.google.android.gms.fitness.service:
//            FitnessSensorServiceRequest

public final class a
    implements android.os.Parcelable.Creator
{

    public a()
    {
    }

    static void a(FitnessSensorServiceRequest fitnesssensorservicerequest, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, fitnesssensorservicerequest.a(), i, false);
        c.a(parcel, 1000, fitnesssensorservicerequest.b());
        c.a(parcel, 2, fitnesssensorservicerequest.c());
        c.a(parcel, 3, fitnesssensorservicerequest.d());
        c.a(parcel, 4, fitnesssensorservicerequest.e());
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        long l = 0L;
        android.os.IBinder ibinder = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        long l1 = l;
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
                    datasource = (DataSource)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DataSource.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    ibinder = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k);
                    break;

                case 3: // '\003'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k);
                    break;

                case 4: // '\004'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new FitnessSensorServiceRequest(j, datasource, ibinder, l1, l);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new FitnessSensorServiceRequest[i];
    }
}
