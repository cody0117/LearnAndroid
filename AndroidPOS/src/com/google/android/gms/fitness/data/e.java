// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.fitness.data:
//            Bucket, Session, DataSet

public final class e
    implements android.os.Parcelable.Creator
{

    public e()
    {
    }

    static void a(Bucket bucket, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, bucket.g());
        c.a(parcel, 1000, bucket.f());
        c.a(parcel, 2, bucket.h());
        c.a(parcel, 3, bucket.a(), i, false);
        c.a(parcel, 4, bucket.b());
        c.b(parcel, 5, bucket.c(), false);
        c.a(parcel, 6, bucket.d());
        c.a(parcel, 7, bucket.e());
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        long l = 0L;
        java.util.ArrayList arraylist = null;
        boolean flag = false;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        int k = 0;
        long l1 = l;
        Session session = null;
        int i1 = 0;
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
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 1000: 
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 3: // '\003'
                    session = (Session)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, Session.CREATOR);
                    break;

                case 4: // '\004'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 5: // '\005'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1, DataSet.CREATOR);
                    break;

                case 6: // '\006'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 7: // '\007'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new Bucket(i1, l1, l, session, k, arraylist, j, flag);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new Bucket[i];
    }
}
