// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.result;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.fitness.data.DataType;

// Referenced classes of package com.google.android.gms.fitness.result:
//            DataTypeResult

public final class d
    implements android.os.Parcelable.Creator
{

    public d()
    {
    }

    static void a(DataTypeResult datatyperesult, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, datatyperesult.a(), i, false);
        c.a(parcel, 1000, datatyperesult.c());
        c.a(parcel, 3, datatyperesult.b(), i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        Status status = null;
        int j = 0;
        DataType datatype = null;
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
                    status = (Status)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Status.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 3: // '\003'
                    datatype = (DataType)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DataType.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new DataTypeResult(j, status, datatype);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new DataTypeResult[i];
    }
}
