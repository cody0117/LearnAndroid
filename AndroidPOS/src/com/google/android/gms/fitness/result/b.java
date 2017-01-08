// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.result;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.fitness.result:
//            DataReadResult

public final class b
    implements android.os.Parcelable.Creator
{

    public b()
    {
    }

    static void a(DataReadResult datareadresult, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, datareadresult.e());
        c.a(parcel, 1000, datareadresult.c());
        c.a(parcel, 2, datareadresult.b(), i, false);
        c.a(parcel, 3, datareadresult.d());
        c.a(parcel, 5, datareadresult.a());
        c.b(parcel, 6, datareadresult.f(), false);
        c.b(parcel, 7, datareadresult.g(), false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 0;
        ArrayList arraylist = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        ArrayList arraylist1 = new ArrayList();
        ArrayList arraylist2 = new ArrayList();
        ArrayList arraylist3 = null;
        Status status = null;
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
                    com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, arraylist1, getClass().getClassLoader());
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    status = (Status)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, Status.CREATOR);
                    break;

                case 3: // '\003'
                    com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, arraylist2, getClass().getClassLoader());
                    break;

                case 5: // '\005'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 6: // '\006'
                    arraylist3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, DataSource.CREATOR);
                    break;

                case 7: // '\007'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, DataType.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new DataReadResult(k, arraylist1, status, arraylist2, i, arraylist3, arraylist);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new DataReadResult[i];
    }
}
