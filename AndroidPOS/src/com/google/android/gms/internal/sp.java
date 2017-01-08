// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            pf, pd

public final class sp
    implements android.os.Parcelable.Creator
{

    public sp()
    {
    }

    static void a(pf pf1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        Set set = pf1.a;
        if (set.contains(Integer.valueOf(1)))
        {
            c.a(parcel, 1, pf1.b);
        }
        if (set.contains(Integer.valueOf(2)))
        {
            c.a(parcel, 2, pf1.c, true);
        }
        if (set.contains(Integer.valueOf(4)))
        {
            c.a(parcel, 4, pf1.d, i, true);
        }
        if (set.contains(Integer.valueOf(5)))
        {
            c.a(parcel, 5, pf1.e, true);
        }
        if (set.contains(Integer.valueOf(6)))
        {
            c.a(parcel, 6, pf1.f, i, true);
        }
        if (set.contains(Integer.valueOf(7)))
        {
            c.a(parcel, 7, pf1.g, true);
        }
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        String s = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        HashSet hashset = new HashSet();
        int j = 0;
        pd pd1 = null;
        String s1 = null;
        pd pd2 = null;
        String s2 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int k = parcel.readInt();
                switch (0xffff & k)
                {
                case 3: // '\003'
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    hashset.add(Integer.valueOf(1));
                    break;

                case 2: // '\002'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    hashset.add(Integer.valueOf(2));
                    break;

                case 4: // '\004'
                    pd pd4 = (pd)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, pd.CREATOR);
                    hashset.add(Integer.valueOf(4));
                    pd2 = pd4;
                    break;

                case 5: // '\005'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    hashset.add(Integer.valueOf(5));
                    break;

                case 6: // '\006'
                    pd pd3 = (pd)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, pd.CREATOR);
                    hashset.add(Integer.valueOf(6));
                    pd1 = pd3;
                    break;

                case 7: // '\007'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    hashset.add(Integer.valueOf(7));
                    break;
                }
            } else
            {
                if (parcel.dataPosition() != i)
                {
                    throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
                }
                return new pf(hashset, j, s2, pd2, s1, pd1, s);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new pf[i];
    }
}
