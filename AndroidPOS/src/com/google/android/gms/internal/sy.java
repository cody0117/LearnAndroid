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

public final class sy
    implements android.os.Parcelable.Creator
{

    public sy()
    {
    }

    static void a(pi.g g, Parcel parcel)
    {
        int i = c.a(parcel);
        Set set = g.a;
        if (set.contains(Integer.valueOf(1)))
        {
            c.a(parcel, 1, g.b);
        }
        if (set.contains(Integer.valueOf(2)))
        {
            c.a(parcel, 2, g.c);
        }
        if (set.contains(Integer.valueOf(3)))
        {
            c.a(parcel, 3, g.d, true);
        }
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        boolean flag = false;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        HashSet hashset = new HashSet();
        String s = null;
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
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    hashset.add(Integer.valueOf(1));
                    break;

                case 2: // '\002'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    hashset.add(Integer.valueOf(2));
                    break;

                case 3: // '\003'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    hashset.add(Integer.valueOf(3));
                    break;
                }
            } else
            {
                if (parcel.dataPosition() != i)
                {
                    throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
                }
                return new pi.g(hashset, j, flag, s);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new pi.g[i];
    }
}