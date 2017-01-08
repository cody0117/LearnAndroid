// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            nu, oa, oe

public final class sc
    implements android.os.Parcelable.Creator
{

    public sc()
    {
    }

    static void a(nu nu1, Parcel parcel)
    {
        int i = c.a(parcel);
        c.b(parcel, 1, nu1.b, false);
        c.a(parcel, 1000, nu1.a);
        c.a(parcel, 2, nu1.a(), false);
        c.a(parcel, 3, nu1.b());
        c.b(parcel, 4, nu1.c, false);
        c.a(parcel, 6, nu1.d, false);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        boolean flag = false;
        java.util.ArrayList arraylist = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        java.util.ArrayList arraylist1 = null;
        String s = null;
        java.util.ArrayList arraylist2 = null;
        int j = 0;
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
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, oa.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 3: // '\003'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 4: // '\004'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, oe.CREATOR);
                    break;

                case 6: // '\006'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.v(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new nu(j, arraylist2, s, flag, arraylist1, arraylist);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new nu[i];
    }
}
