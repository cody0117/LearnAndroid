// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            fj

public final class jt
    implements android.os.Parcelable.Creator
{

    public jt()
    {
    }

    public static fj a(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        String s = null;
        String s1 = null;
        java.util.ArrayList arraylist = null;
        int k = 0;
        java.util.ArrayList arraylist1 = null;
        long l = 0L;
        boolean flag = false;
        long l1 = 0L;
        java.util.ArrayList arraylist2 = null;
        long l2 = 0L;
        int i1 = 0;
        String s2 = null;
        long l3 = 0L;
        String s3 = null;
        boolean flag1 = false;
        String s4 = null;
        String s5 = null;
        boolean flag2 = false;
        boolean flag3 = false;
        boolean flag4 = false;
        boolean flag5 = false;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int j1 = parcel.readInt();
                switch (0xffff & j1)
                {
                case 16: // '\020'
                case 17: // '\021'
                case 20: // '\024'
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 3: // '\003'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 4: // '\004'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.v(parcel, j1);
                    break;

                case 5: // '\005'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 6: // '\006'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.v(parcel, j1);
                    break;

                case 7: // '\007'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 8: // '\b'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 9: // '\t'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 10: // '\n'
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.a.v(parcel, j1);
                    break;

                case 11: // '\013'
                    l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 12: // '\f'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 13: // '\r'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 14: // '\016'
                    l3 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 15: // '\017'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 19: // '\023'
                    s4 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 18: // '\022'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 21: // '\025'
                    s5 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 23: // '\027'
                    flag3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 22: // '\026'
                    flag2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 25: // '\031'
                    flag5 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 24: // '\030'
                    flag4 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new fj(j, s, s1, arraylist, k, arraylist1, l, flag, l1, arraylist2, l2, i1, s2, l3, s3, flag1, s4, s5, flag2, flag3, flag4, flag5);
            }
        } while (true);
    }

    static void a(fj fj1, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, fj1.a);
        c.a(parcel, 2, fj1.b, false);
        c.a(parcel, 3, fj1.c, false);
        c.a(parcel, 4, fj1.d, false);
        c.a(parcel, 5, fj1.e);
        c.a(parcel, 6, fj1.f, false);
        c.a(parcel, 7, fj1.g);
        c.a(parcel, 8, fj1.h);
        c.a(parcel, 9, fj1.i);
        c.a(parcel, 10, fj1.j, false);
        c.a(parcel, 11, fj1.k);
        c.a(parcel, 12, fj1.l);
        c.a(parcel, 13, fj1.m, false);
        c.a(parcel, 14, fj1.n);
        c.a(parcel, 15, fj1.o, false);
        c.a(parcel, 19, fj1.q, false);
        c.a(parcel, 18, fj1.p);
        c.a(parcel, 21, fj1.r, false);
        c.a(parcel, 23, fj1.t);
        c.a(parcel, 22, fj1.s);
        c.a(parcel, 25, fj1.v);
        c.a(parcel, 24, fj1.u);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public final Object[] newArray(int i)
    {
        return new fj[i];
    }
}
