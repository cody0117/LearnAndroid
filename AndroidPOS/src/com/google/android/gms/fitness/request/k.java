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
import com.google.android.gms.fitness.data.Session;

// Referenced classes of package com.google.android.gms.fitness.request:
//            DataDeleteRequest

public final class k
    implements android.os.Parcelable.Creator
{

    public k()
    {
    }

    static void a(DataDeleteRequest datadeleterequest, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, datadeleterequest.h());
        c.a(parcel, 1000, datadeleterequest.d());
        c.a(parcel, 2, datadeleterequest.g());
        c.b(parcel, 3, datadeleterequest.a(), false);
        c.b(parcel, 4, datadeleterequest.b(), false);
        c.b(parcel, 5, datadeleterequest.c(), false);
        c.a(parcel, 6, datadeleterequest.e());
        c.a(parcel, 7, datadeleterequest.f());
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        long l = 0L;
        java.util.ArrayList arraylist = null;
        boolean flag = false;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        boolean flag1 = false;
        java.util.ArrayList arraylist1 = null;
        long l1 = l;
        java.util.ArrayList arraylist2 = null;
        int j = 0;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int i1 = parcel.readInt();
                switch (0xffff & i1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
                    break;

                case 1: // '\001'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 3: // '\003'
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1, DataSource.CREATOR);
                    break;

                case 4: // '\004'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1, DataType.CREATOR);
                    break;

                case 5: // '\005'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1, Session.CREATOR);
                    break;

                case 6: // '\006'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
                    break;

                case 7: // '\007'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new DataDeleteRequest(j, l1, l, arraylist2, arraylist1, arraylist, flag1, flag);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new DataDeleteRequest[i];
    }
}
