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

public final class ss
    implements android.os.Parcelable.Creator
{

    public ss()
    {
    }

    static void a(pi.b b1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        Set set = b1.a;
        if (set.contains(Integer.valueOf(1)))
        {
            c.a(parcel, 1, b1.b);
        }
        if (set.contains(Integer.valueOf(2)))
        {
            c.a(parcel, 2, b1.c, i, true);
        }
        if (set.contains(Integer.valueOf(3)))
        {
            c.a(parcel, 3, b1.d, i, true);
        }
        if (set.contains(Integer.valueOf(4)))
        {
            c.a(parcel, 4, b1.e);
        }
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        pi.b.b b1 = null;
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        HashSet hashset = new HashSet();
        pi.b.a a1 = null;
        int k = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int l = parcel.readInt();
                switch (0xffff & l)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    hashset.add(Integer.valueOf(1));
                    break;

                case 2: // '\002'
                    pi.b.a a2 = (pi.b.a)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pi.b.a.CREATOR);
                    hashset.add(Integer.valueOf(2));
                    a1 = a2;
                    break;

                case 3: // '\003'
                    pi.b.b b2 = (pi.b.b)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pi.b.b.CREATOR);
                    hashset.add(Integer.valueOf(3));
                    b1 = b2;
                    break;

                case 4: // '\004'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    hashset.add(Integer.valueOf(4));
                    break;
                }
            } else
            {
                if (parcel.dataPosition() != j)
                {
                    throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
                }
                return new pi.b(hashset, k, a1, b1, i);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new pi.b[i];
    }
}
