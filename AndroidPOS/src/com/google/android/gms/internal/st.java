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

public final class st
    implements android.os.Parcelable.Creator
{

    public st()
    {
    }

    static void a(pi.b.a a1, Parcel parcel)
    {
        int i = c.a(parcel);
        Set set = a1.a;
        if (set.contains(Integer.valueOf(1)))
        {
            c.a(parcel, 1, a1.b);
        }
        if (set.contains(Integer.valueOf(2)))
        {
            c.a(parcel, 2, a1.c);
        }
        if (set.contains(Integer.valueOf(3)))
        {
            c.a(parcel, 3, a1.d);
        }
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        HashSet hashset = new HashSet();
        int k = 0;
        int l = 0;
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
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    hashset.add(Integer.valueOf(1));
                    break;

                case 2: // '\002'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    hashset.add(Integer.valueOf(2));
                    break;

                case 3: // '\003'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    hashset.add(Integer.valueOf(3));
                    break;
                }
            } else
            {
                if (parcel.dataPosition() != j)
                {
                    throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
                }
                return new pi.b.a(hashset, l, k, i);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new pi.b.a[i];
    }
}
