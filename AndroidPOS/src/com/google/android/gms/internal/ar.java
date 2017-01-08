// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.location.Location;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            bj, av

public final class ar
    implements android.os.Parcelable.Creator
{

    public ar()
    {
    }

    public static av a(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        long l = 0L;
        android.os.Bundle bundle = null;
        int k = 0;
        java.util.ArrayList arraylist = null;
        boolean flag = false;
        int i1 = 0;
        boolean flag1 = false;
        String s = null;
        bj bj1 = null;
        Location location = null;
        String s1 = null;
        android.os.Bundle bundle1 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int j1 = parcel.readInt();
                switch (0xffff & j1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 3: // '\003'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.q(parcel, j1);
                    break;

                case 4: // '\004'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 5: // '\005'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.v(parcel, j1);
                    break;

                case 6: // '\006'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 7: // '\007'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 8: // '\b'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 9: // '\t'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 10: // '\n'
                    bj1 = (bj)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, bj.CREATOR);
                    break;

                case 11: // '\013'
                    location = (Location)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, Location.CREATOR);
                    break;

                case 12: // '\f'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 13: // '\r'
                    bundle1 = com.google.android.gms.common.internal.safeparcel.a.q(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new av(j, l, bundle, k, arraylist, flag, i1, flag1, s, bj1, location, s1, bundle1);
            }
        } while (true);
    }

    static void a(av av1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, av1.a);
        c.a(parcel, 2, av1.b);
        c.a(parcel, 3, av1.c);
        c.a(parcel, 4, av1.d);
        c.a(parcel, 5, av1.e, false);
        c.a(parcel, 6, av1.f);
        c.a(parcel, 7, av1.g);
        c.a(parcel, 8, av1.h);
        c.a(parcel, 9, av1.i, false);
        c.a(parcel, 10, av1.j, i, false);
        c.a(parcel, 11, av1.k, i, false);
        c.a(parcel, 12, av1.l, false);
        c.a(parcel, 13, av1.m);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public final Object[] newArray(int i)
    {
        return new av[i];
    }
}
