// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.Session;

// Referenced classes of package com.google.android.gms.fitness.request:
//            SessionInsertRequest

public final class ae
    implements android.os.Parcelable.Creator
{

    public ae()
    {
    }

    static void a(SessionInsertRequest sessioninsertrequest, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, sessioninsertrequest.a(), i, false);
        c.a(parcel, 1000, sessioninsertrequest.d());
        c.b(parcel, 2, sessioninsertrequest.b(), false);
        c.b(parcel, 3, sessioninsertrequest.c(), false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        java.util.ArrayList arraylist = null;
        Session session = null;
        int j = 0;
        java.util.ArrayList arraylist1 = null;
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
                    session = (Session)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Session.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, DataSet.CREATOR);
                    break;

                case 3: // '\003'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, DataPoint.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new SessionInsertRequest(j, session, arraylist, arraylist1);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new SessionInsertRequest[i];
    }
}
