// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.fitness.data:
//            q, Session, DataSet

public final class t
    implements android.os.Parcelable.Creator
{

    public t()
    {
    }

    static void a(q q1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, q1.a(), i, false);
        c.a(parcel, 1000, q1.a);
        c.a(parcel, 2, q1.b(), i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        Session session = null;
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
                    session = (Session)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Session.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    dataset = (DataSet)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DataSet.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new q(j, session, dataset);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new q[i];
    }
}