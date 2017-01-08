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
//            pi

public final class sq
    implements android.os.Parcelable.Creator
{

    public sq()
    {
    }

    static void a(pi pi1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        Set set = pi1.a;
        if (set.contains(Integer.valueOf(1)))
        {
            c.a(parcel, 1, pi1.b);
        }
        if (set.contains(Integer.valueOf(2)))
        {
            c.a(parcel, 2, pi1.c, true);
        }
        if (set.contains(Integer.valueOf(3)))
        {
            c.a(parcel, 3, pi1.d, i, true);
        }
        if (set.contains(Integer.valueOf(4)))
        {
            c.a(parcel, 4, pi1.e, true);
        }
        if (set.contains(Integer.valueOf(5)))
        {
            c.a(parcel, 5, pi1.f, true);
        }
        if (set.contains(Integer.valueOf(6)))
        {
            c.a(parcel, 6, pi1.g);
        }
        if (set.contains(Integer.valueOf(7)))
        {
            c.a(parcel, 7, pi1.h, i, true);
        }
        if (set.contains(Integer.valueOf(8)))
        {
            c.a(parcel, 8, pi1.i, true);
        }
        if (set.contains(Integer.valueOf(9)))
        {
            c.a(parcel, 9, pi1.j, true);
        }
        if (set.contains(Integer.valueOf(12)))
        {
            c.a(parcel, 12, pi1.k);
        }
        if (set.contains(Integer.valueOf(14)))
        {
            c.a(parcel, 14, pi1.l, true);
        }
        if (set.contains(Integer.valueOf(15)))
        {
            c.a(parcel, 15, pi1.m, i, true);
        }
        if (set.contains(Integer.valueOf(16)))
        {
            c.a(parcel, 16, pi1.n);
        }
        if (set.contains(Integer.valueOf(19)))
        {
            c.a(parcel, 19, pi1.p, i, true);
        }
        if (set.contains(Integer.valueOf(18)))
        {
            c.a(parcel, 18, pi1.o, true);
        }
        if (set.contains(Integer.valueOf(21)))
        {
            c.a(parcel, 21, pi1.r);
        }
        if (set.contains(Integer.valueOf(20)))
        {
            c.a(parcel, 20, pi1.q, true);
        }
        if (set.contains(Integer.valueOf(23)))
        {
            c.b(parcel, 23, pi1.t, true);
        }
        if (set.contains(Integer.valueOf(22)))
        {
            c.b(parcel, 22, pi1.s, true);
        }
        if (set.contains(Integer.valueOf(25)))
        {
            c.a(parcel, 25, pi1.v);
        }
        if (set.contains(Integer.valueOf(24)))
        {
            c.a(parcel, 24, pi1.u);
        }
        if (set.contains(Integer.valueOf(27)))
        {
            c.a(parcel, 27, pi1.x, true);
        }
        if (set.contains(Integer.valueOf(26)))
        {
            c.a(parcel, 26, pi1.w, true);
        }
        if (set.contains(Integer.valueOf(29)))
        {
            c.a(parcel, 29, pi1.z);
        }
        if (set.contains(Integer.valueOf(28)))
        {
            c.b(parcel, 28, pi1.y, true);
        }
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        HashSet hashset = new HashSet();
        int j = 0;
        String s = null;
        pi.a a1 = null;
        String s1 = null;
        String s2 = null;
        int k = 0;
        pi.b b1 = null;
        String s3 = null;
        String s4 = null;
        int l = 0;
        String s5 = null;
        pi.c c1 = null;
        boolean flag = false;
        String s6 = null;
        pi.d d = null;
        String s7 = null;
        int i1 = 0;
        java.util.ArrayList arraylist = null;
        java.util.ArrayList arraylist1 = null;
        int j1 = 0;
        int k1 = 0;
        String s8 = null;
        String s9 = null;
        java.util.ArrayList arraylist2 = null;
        boolean flag1 = false;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int l1 = parcel.readInt();
                switch (0xffff & l1)
                {
                case 10: // '\n'
                case 11: // '\013'
                case 13: // '\r'
                case 17: // '\021'
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l1);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l1);
                    hashset.add(Integer.valueOf(1));
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l1);
                    hashset.add(Integer.valueOf(2));
                    break;

                case 3: // '\003'
                    pi.a a2 = (pi.a)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l1, pi.a.CREATOR);
                    hashset.add(Integer.valueOf(3));
                    a1 = a2;
                    break;

                case 4: // '\004'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l1);
                    hashset.add(Integer.valueOf(4));
                    break;

                case 5: // '\005'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l1);
                    hashset.add(Integer.valueOf(5));
                    break;

                case 6: // '\006'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l1);
                    hashset.add(Integer.valueOf(6));
                    break;

                case 7: // '\007'
                    pi.b b2 = (pi.b)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l1, pi.b.CREATOR);
                    hashset.add(Integer.valueOf(7));
                    b1 = b2;
                    break;

                case 8: // '\b'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l1);
                    hashset.add(Integer.valueOf(8));
                    break;

                case 9: // '\t'
                    s4 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l1);
                    hashset.add(Integer.valueOf(9));
                    break;

                case 12: // '\f'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l1);
                    hashset.add(Integer.valueOf(12));
                    break;

                case 14: // '\016'
                    s5 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l1);
                    hashset.add(Integer.valueOf(14));
                    break;

                case 15: // '\017'
                    pi.c c2 = (pi.c)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l1, pi.c.CREATOR);
                    hashset.add(Integer.valueOf(15));
                    c1 = c2;
                    break;

                case 16: // '\020'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l1);
                    hashset.add(Integer.valueOf(16));
                    break;

                case 19: // '\023'
                    pi.d d1 = (pi.d)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l1, pi.d.CREATOR);
                    hashset.add(Integer.valueOf(19));
                    d = d1;
                    break;

                case 18: // '\022'
                    s6 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l1);
                    hashset.add(Integer.valueOf(18));
                    break;

                case 21: // '\025'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l1);
                    hashset.add(Integer.valueOf(21));
                    break;

                case 20: // '\024'
                    s7 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l1);
                    hashset.add(Integer.valueOf(20));
                    break;

                case 23: // '\027'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l1, pi.g.CREATOR);
                    hashset.add(Integer.valueOf(23));
                    break;

                case 22: // '\026'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l1, pi.f.CREATOR);
                    hashset.add(Integer.valueOf(22));
                    break;

                case 25: // '\031'
                    k1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l1);
                    hashset.add(Integer.valueOf(25));
                    break;

                case 24: // '\030'
                    j1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l1);
                    hashset.add(Integer.valueOf(24));
                    break;

                case 27: // '\033'
                    s9 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l1);
                    hashset.add(Integer.valueOf(27));
                    break;

                case 26: // '\032'
                    s8 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l1);
                    hashset.add(Integer.valueOf(26));
                    break;

                case 29: // '\035'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l1);
                    hashset.add(Integer.valueOf(29));
                    break;

                case 28: // '\034'
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l1, pi.h.CREATOR);
                    hashset.add(Integer.valueOf(28));
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new pi(hashset, j, s, a1, s1, s2, k, b1, s3, s4, l, s5, c1, flag, s6, d, s7, i1, arraylist, arraylist1, j1, k1, s8, s9, arraylist2, flag1);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new pi[i];
    }
}
