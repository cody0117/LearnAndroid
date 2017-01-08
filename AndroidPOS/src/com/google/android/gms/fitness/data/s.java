// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.fitness.data:
//            Session, a

public final class s
    implements android.os.Parcelable.Creator
{

    public s()
    {
    }

    static void a(Session session, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, session.g());
        c.a(parcel, 1000, session.f());
        c.a(parcel, 2, session.h());
        c.a(parcel, 3, session.a(), false);
        c.a(parcel, 4, session.b(), false);
        c.a(parcel, 5, session.c(), false);
        c.a(parcel, 7, session.d());
        c.a(parcel, 8, session.e(), i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        long l = 0L;
        int i = 0;
        com.google.android.gms.fitness.data.a a1 = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        String s1 = null;
        String s2 = null;
        long l1 = l;
        String s3 = null;
        int k = 0;
        do
        {
            if (parcel.dataPosition() < j)
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
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 3: // '\003'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 4: // '\004'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 5: // '\005'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 7: // '\007'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 8: // '\b'
                    a1 = (com.google.android.gms.fitness.data.a)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, a.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new Session(k, l1, l, s3, s2, s1, i, a1);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new Session[i];
    }
}
