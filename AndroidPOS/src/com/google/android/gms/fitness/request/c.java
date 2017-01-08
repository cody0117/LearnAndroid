// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataType;

// Referenced classes of package com.google.android.gms.fitness.request:
//            StartBleScanRequest

public final class c
    implements android.os.Parcelable.Creator
{

    public c()
    {
    }

    static void a(StartBleScanRequest startblescanrequest, Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.c.a(parcel);
        com.google.android.gms.common.internal.safeparcel.c.b(parcel, 1, startblescanrequest.a(), false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 1000, startblescanrequest.d());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 2, startblescanrequest.c());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 3, startblescanrequest.b());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        android.os.IBinder ibinder = null;
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        java.util.ArrayList arraylist = null;
        int k = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int l = parcel.readInt();
                switch (0xffff & l)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, DataType.CREATOR);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    ibinder = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    break;

                case 3: // '\003'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new StartBleScanRequest(k, arraylist, ibinder, i);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new StartBleScanRequest[i];
    }
}
