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

public final class sv
    implements android.os.Parcelable.Creator
{

    public sv()
    {
    }

    static void a(pi.c c1, Parcel parcel)
    {
        int i = c.a(parcel);
        Set set = c1.a;
        if (set.contains(Integer.valueOf(1)))
        {
            c.a(parcel, 1, c1.b);
        }
        if (set.contains(Integer.valueOf(2)))
        {
            c.a(parcel, 2, c1.c, true);
        }
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        HashSet hashset = new HashSet();
        int j = 0;
        String s = null;
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
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    hashset.add(Integer.valueOf(2));
                    break;
                }
            } else
            {
                if (parcel.dataPosition() != i)
                {
                    throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
                }
                return new pi.c(hashset, j, s);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new pi.c[i];
    }
}
