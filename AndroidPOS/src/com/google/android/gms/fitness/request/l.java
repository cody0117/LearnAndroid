// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.fitness.data.DataSet;

// Referenced classes of package com.google.android.gms.fitness.request:
//            e

public final class l
    implements android.os.Parcelable.Creator
{

    public l()
    {
    }

    static void a(e e1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, e1.a(), i, false);
        c.a(parcel, 1000, e1.b());
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        DataSet dataset = null;
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
                    dataset = (DataSet)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DataSet.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new e(j, dataset);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new e[i];
    }
}
