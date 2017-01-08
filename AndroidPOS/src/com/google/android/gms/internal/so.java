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
//            pd

public final class so
    implements android.os.Parcelable.Creator
{

    public so()
    {
    }

    static void a(pd pd1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        Set set = pd1.a;
        if (set.contains(Integer.valueOf(1)))
        {
            c.a(parcel, 1, pd1.b);
        }
        if (set.contains(Integer.valueOf(2)))
        {
            c.a(parcel, 2, pd1.c, i, true);
        }
        if (set.contains(Integer.valueOf(3)))
        {
            c.a(parcel, 3, pd1.d, true);
        }
        if (set.contains(Integer.valueOf(4)))
        {
            c.a(parcel, 4, pd1.e, i, true);
        }
        if (set.contains(Integer.valueOf(5)))
        {
            c.a(parcel, 5, pd1.f, true);
        }
        if (set.contains(Integer.valueOf(6)))
        {
            c.a(parcel, 6, pd1.g, true);
        }
        if (set.contains(Integer.valueOf(7)))
        {
            c.a(parcel, 7, pd1.h, true);
        }
        if (set.contains(Integer.valueOf(8)))
        {
            c.b(parcel, 8, pd1.i, true);
        }
        if (set.contains(Integer.valueOf(9)))
        {
            c.a(parcel, 9, pd1.j);
        }
        if (set.contains(Integer.valueOf(10)))
        {
            c.b(parcel, 10, pd1.k, true);
        }
        if (set.contains(Integer.valueOf(11)))
        {
            c.a(parcel, 11, pd1.l, i, true);
        }
        if (set.contains(Integer.valueOf(12)))
        {
            c.b(parcel, 12, pd1.m, true);
        }
        if (set.contains(Integer.valueOf(13)))
        {
            c.a(parcel, 13, pd1.n, true);
        }
        if (set.contains(Integer.valueOf(14)))
        {
            c.a(parcel, 14, pd1.o, true);
        }
        if (set.contains(Integer.valueOf(15)))
        {
            c.a(parcel, 15, pd1.p, i, true);
        }
        if (set.contains(Integer.valueOf(17)))
        {
            c.a(parcel, 17, pd1.r, true);
        }
        if (set.contains(Integer.valueOf(16)))
        {
            c.a(parcel, 16, pd1.q, true);
        }
        if (set.contains(Integer.valueOf(19)))
        {
            c.b(parcel, 19, pd1.t, true);
        }
        if (set.contains(Integer.valueOf(18)))
        {
            c.a(parcel, 18, pd1.s, true);
        }
        if (set.contains(Integer.valueOf(21)))
        {
            c.a(parcel, 21, pd1.v, true);
        }
        if (set.contains(Integer.valueOf(20)))
        {
            c.a(parcel, 20, pd1.u, true);
        }
        if (set.contains(Integer.valueOf(23)))
        {
            c.a(parcel, 23, pd1.x, true);
        }
        if (set.contains(Integer.valueOf(22)))
        {
            c.a(parcel, 22, pd1.w, true);
        }
        if (set.contains(Integer.valueOf(25)))
        {
            c.a(parcel, 25, pd1.z, true);
        }
        if (set.contains(Integer.valueOf(24)))
        {
            c.a(parcel, 24, pd1.y, true);
        }
        if (set.contains(Integer.valueOf(27)))
        {
            c.a(parcel, 27, pd1.B, true);
        }
        if (set.contains(Integer.valueOf(26)))
        {
            c.a(parcel, 26, pd1.A, true);
        }
        if (set.contains(Integer.valueOf(29)))
        {
            c.a(parcel, 29, pd1.D, i, true);
        }
        if (set.contains(Integer.valueOf(28)))
        {
            c.a(parcel, 28, pd1.C, true);
        }
        if (set.contains(Integer.valueOf(31)))
        {
            c.a(parcel, 31, pd1.F, true);
        }
        if (set.contains(Integer.valueOf(30)))
        {
            c.a(parcel, 30, pd1.E, true);
        }
        if (set.contains(Integer.valueOf(34)))
        {
            c.a(parcel, 34, pd1.I, i, true);
        }
        if (set.contains(Integer.valueOf(32)))
        {
            c.a(parcel, 32, pd1.G, true);
        }
        if (set.contains(Integer.valueOf(33)))
        {
            c.a(parcel, 33, pd1.H, true);
        }
        if (set.contains(Integer.valueOf(38)))
        {
            c.a(parcel, 38, pd1.L);
        }
        if (set.contains(Integer.valueOf(39)))
        {
            c.a(parcel, 39, pd1.M, true);
        }
        if (set.contains(Integer.valueOf(36)))
        {
            c.a(parcel, 36, pd1.J);
        }
        if (set.contains(Integer.valueOf(37)))
        {
            c.a(parcel, 37, pd1.K, i, true);
        }
        if (set.contains(Integer.valueOf(42)))
        {
            c.a(parcel, 42, pd1.P, true);
        }
        if (set.contains(Integer.valueOf(43)))
        {
            c.a(parcel, 43, pd1.Q, true);
        }
        if (set.contains(Integer.valueOf(40)))
        {
            c.a(parcel, 40, pd1.N, i, true);
        }
        if (set.contains(Integer.valueOf(41)))
        {
            c.b(parcel, 41, pd1.O, true);
        }
        if (set.contains(Integer.valueOf(46)))
        {
            c.a(parcel, 46, pd1.T, i, true);
        }
        if (set.contains(Integer.valueOf(47)))
        {
            c.a(parcel, 47, pd1.U, true);
        }
        if (set.contains(Integer.valueOf(44)))
        {
            c.a(parcel, 44, pd1.R, true);
        }
        if (set.contains(Integer.valueOf(45)))
        {
            c.a(parcel, 45, pd1.S, true);
        }
        if (set.contains(Integer.valueOf(51)))
        {
            c.a(parcel, 51, pd1.Y, true);
        }
        if (set.contains(Integer.valueOf(50)))
        {
            c.a(parcel, 50, pd1.X, i, true);
        }
        if (set.contains(Integer.valueOf(49)))
        {
            c.a(parcel, 49, pd1.W, true);
        }
        if (set.contains(Integer.valueOf(48)))
        {
            c.a(parcel, 48, pd1.V, true);
        }
        if (set.contains(Integer.valueOf(55)))
        {
            c.a(parcel, 55, pd1.ac, true);
        }
        if (set.contains(Integer.valueOf(54)))
        {
            c.a(parcel, 54, pd1.ab, true);
        }
        if (set.contains(Integer.valueOf(53)))
        {
            c.a(parcel, 53, pd1.aa, true);
        }
        if (set.contains(Integer.valueOf(52)))
        {
            c.a(parcel, 52, pd1.Z, true);
        }
        if (set.contains(Integer.valueOf(56)))
        {
            c.a(parcel, 56, pd1.ad, true);
        }
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        HashSet hashset = new HashSet();
        int j = 0;
        pd pd1 = null;
        java.util.ArrayList arraylist = null;
        pd pd2 = null;
        String s = null;
        String s1 = null;
        String s2 = null;
        java.util.ArrayList arraylist1 = null;
        int k = 0;
        java.util.ArrayList arraylist2 = null;
        pd pd3 = null;
        java.util.ArrayList arraylist3 = null;
        String s3 = null;
        String s4 = null;
        pd pd4 = null;
        String s5 = null;
        String s6 = null;
        String s7 = null;
        java.util.ArrayList arraylist4 = null;
        String s8 = null;
        String s9 = null;
        String s10 = null;
        String s11 = null;
        String s12 = null;
        String s13 = null;
        String s14 = null;
        String s15 = null;
        String s16 = null;
        pd pd5 = null;
        String s17 = null;
        String s18 = null;
        String s19 = null;
        String s20 = null;
        pd pd6 = null;
        double d = 0.0D;
        pd pd7 = null;
        double d1 = 0.0D;
        String s21 = null;
        pd pd8 = null;
        java.util.ArrayList arraylist5 = null;
        String s22 = null;
        String s23 = null;
        String s24 = null;
        String s25 = null;
        pd pd9 = null;
        String s26 = null;
        String s27 = null;
        String s28 = null;
        pd pd10 = null;
        String s29 = null;
        String s30 = null;
        String s31 = null;
        String s32 = null;
        String s33 = null;
        String s34 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int l = parcel.readInt();
                switch (0xffff & l)
                {
                case 35: // '#'
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    hashset.add(Integer.valueOf(1));
                    break;

                case 2: // '\002'
                    pd pd20 = (pd)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pd.CREATOR);
                    hashset.add(Integer.valueOf(2));
                    pd1 = pd20;
                    break;

                case 3: // '\003'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.v(parcel, l);
                    hashset.add(Integer.valueOf(3));
                    break;

                case 4: // '\004'
                    pd pd19 = (pd)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pd.CREATOR);
                    hashset.add(Integer.valueOf(4));
                    pd2 = pd19;
                    break;

                case 5: // '\005'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(5));
                    break;

                case 6: // '\006'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(6));
                    break;

                case 7: // '\007'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(7));
                    break;

                case 8: // '\b'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, pd.CREATOR);
                    hashset.add(Integer.valueOf(8));
                    break;

                case 9: // '\t'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    hashset.add(Integer.valueOf(9));
                    break;

                case 10: // '\n'
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, pd.CREATOR);
                    hashset.add(Integer.valueOf(10));
                    break;

                case 11: // '\013'
                    pd pd18 = (pd)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pd.CREATOR);
                    hashset.add(Integer.valueOf(11));
                    pd3 = pd18;
                    break;

                case 12: // '\f'
                    arraylist3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, pd.CREATOR);
                    hashset.add(Integer.valueOf(12));
                    break;

                case 13: // '\r'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(13));
                    break;

                case 14: // '\016'
                    s4 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(14));
                    break;

                case 15: // '\017'
                    pd pd17 = (pd)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pd.CREATOR);
                    hashset.add(Integer.valueOf(15));
                    pd4 = pd17;
                    break;

                case 17: // '\021'
                    s6 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(17));
                    break;

                case 16: // '\020'
                    s5 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(16));
                    break;

                case 19: // '\023'
                    arraylist4 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, pd.CREATOR);
                    hashset.add(Integer.valueOf(19));
                    break;

                case 18: // '\022'
                    s7 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(18));
                    break;

                case 21: // '\025'
                    s9 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(21));
                    break;

                case 20: // '\024'
                    s8 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(20));
                    break;

                case 23: // '\027'
                    s11 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(23));
                    break;

                case 22: // '\026'
                    s10 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(22));
                    break;

                case 25: // '\031'
                    s13 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(25));
                    break;

                case 24: // '\030'
                    s12 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(24));
                    break;

                case 27: // '\033'
                    s15 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(27));
                    break;

                case 26: // '\032'
                    s14 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(26));
                    break;

                case 29: // '\035'
                    pd pd16 = (pd)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pd.CREATOR);
                    hashset.add(Integer.valueOf(29));
                    pd5 = pd16;
                    break;

                case 28: // '\034'
                    s16 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(28));
                    break;

                case 31: // '\037'
                    s18 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(31));
                    break;

                case 30: // '\036'
                    s17 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(30));
                    break;

                case 34: // '"'
                    pd pd15 = (pd)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pd.CREATOR);
                    hashset.add(Integer.valueOf(34));
                    pd6 = pd15;
                    break;

                case 32: // ' '
                    s19 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(32));
                    break;

                case 33: // '!'
                    s20 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(33));
                    break;

                case 38: // '&'
                    d1 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, l);
                    hashset.add(Integer.valueOf(38));
                    break;

                case 39: // '\''
                    s21 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(39));
                    break;

                case 36: // '$'
                    d = com.google.android.gms.common.internal.safeparcel.a.m(parcel, l);
                    hashset.add(Integer.valueOf(36));
                    break;

                case 37: // '%'
                    pd pd14 = (pd)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pd.CREATOR);
                    hashset.add(Integer.valueOf(37));
                    pd7 = pd14;
                    break;

                case 42: // '*'
                    s22 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(42));
                    break;

                case 43: // '+'
                    s23 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(43));
                    break;

                case 40: // '('
                    pd pd13 = (pd)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pd.CREATOR);
                    hashset.add(Integer.valueOf(40));
                    pd8 = pd13;
                    break;

                case 41: // ')'
                    arraylist5 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, pd.CREATOR);
                    hashset.add(Integer.valueOf(41));
                    break;

                case 46: // '.'
                    pd pd12 = (pd)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pd.CREATOR);
                    hashset.add(Integer.valueOf(46));
                    pd9 = pd12;
                    break;

                case 47: // '/'
                    s26 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(47));
                    break;

                case 44: // ','
                    s24 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(44));
                    break;

                case 45: // '-'
                    s25 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(45));
                    break;

                case 51: // '3'
                    s29 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(51));
                    break;

                case 50: // '2'
                    pd pd11 = (pd)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pd.CREATOR);
                    hashset.add(Integer.valueOf(50));
                    pd10 = pd11;
                    break;

                case 49: // '1'
                    s28 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(49));
                    break;

                case 48: // '0'
                    s27 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(48));
                    break;

                case 55: // '7'
                    s33 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(55));
                    break;

                case 54: // '6'
                    s32 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(54));
                    break;

                case 53: // '5'
                    s31 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(53));
                    break;

                case 52: // '4'
                    s30 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(52));
                    break;

                case 56: // '8'
                    s34 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(56));
                    break;
                }
            } else
            {
                if (parcel.dataPosition() != i)
                {
                    throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
                }
                return new pd(hashset, j, pd1, arraylist, pd2, s, s1, s2, arraylist1, k, arraylist2, pd3, arraylist3, s3, s4, pd4, s5, s6, s7, arraylist4, s8, s9, s10, s11, s12, s13, s14, s15, s16, pd5, s17, s18, s19, s20, pd6, d, pd7, d1, s21, pd8, arraylist5, s22, s23, s24, s25, pd9, s26, s27, s28, pd10, s29, s30, s31, s32, s33, s34);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new pd[i];
    }
}
