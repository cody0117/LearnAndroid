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

// Referenced classes of package com.google.android.gms.fitness.request:
//            SessionReadRequest

public final class ag
    implements android.os.Parcelable.Creator
{

    public ag()
    {
    }

    static void a(SessionReadRequest sessionreadrequest, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, sessionreadrequest.a(), false);
        c.a(parcel, 1000, sessionreadrequest.j());
        c.a(parcel, 2, sessionreadrequest.b(), false);
        c.a(parcel, 3, sessionreadrequest.h());
        c.a(parcel, 4, sessionreadrequest.g());
        c.b(parcel, 5, sessionreadrequest.c(), false);
        c.b(parcel, 6, sessionreadrequest.d(), false);
        c.a(parcel, 7, sessionreadrequest.i());
        c.a(parcel, 8, sessionreadrequest.f());
        c.a(parcel, 9, sessionreadrequest.e(), false);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        String s = null;
        String s1 = null;
        long l = 0L;
        long l1 = 0L;
        java.util.ArrayList arraylist = null;
        java.util.ArrayList arraylist1 = null;
        boolean flag = false;
        boolean flag1 = false;
        java.util.ArrayList arraylist2 = null;
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
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 3: // '\003'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k);
                    break;

                case 4: // '\004'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k);
                    break;

                case 5: // '\005'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, DataType.CREATOR);
                    break;

                case 6: // '\006'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, DataSource.CREATOR);
                    break;

                case 7: // '\007'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 8: // '\b'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 9: // '\t'
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.a.v(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new SessionReadRequest(j, s, s1, l, l1, arraylist, arraylist1, flag, flag1, arraylist2);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new SessionReadRequest[i];
    }
}
