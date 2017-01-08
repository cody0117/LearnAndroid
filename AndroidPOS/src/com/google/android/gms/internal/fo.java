// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            dr, do, gs, y

public final class fo
    implements android.os.Parcelable.Creator
{

    public fo()
    {
    }

    static void a(dr dr1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, dr1.a);
        c.a(parcel, 2, dr1.b, i, false);
        c.a(parcel, 3, dr1.a());
        c.a(parcel, 4, dr1.b());
        c.a(parcel, 5, dr1.c());
        c.a(parcel, 6, dr1.d());
        c.a(parcel, 7, dr1.g, false);
        c.a(parcel, 8, dr1.h);
        c.a(parcel, 9, dr1.i, false);
        c.a(parcel, 10, dr1.f());
        c.a(parcel, 11, dr1.k);
        c.a(parcel, 12, dr1.l);
        c.a(parcel, 13, dr1.m, false);
        c.a(parcel, 14, dr1.n, i, false);
        c.a(parcel, 15, dr1.e());
        c.a(parcel, 17, dr1.q, i, false);
        c.a(parcel, 16, dr1.p, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        do do1 = null;
        android.os.IBinder ibinder = null;
        android.os.IBinder ibinder1 = null;
        android.os.IBinder ibinder2 = null;
        android.os.IBinder ibinder3 = null;
        String s = null;
        boolean flag = false;
        String s1 = null;
        android.os.IBinder ibinder4 = null;
        int k = 0;
        int l = 0;
        String s2 = null;
        gs gs1 = null;
        android.os.IBinder ibinder5 = null;
        String s3 = null;
        y y1 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int i1 = parcel.readInt();
                switch (0xffff & i1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    do1 = (do)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, do.CREATOR);
                    break;

                case 3: // '\003'
                    ibinder = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 4: // '\004'
                    ibinder1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 5: // '\005'
                    ibinder2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 6: // '\006'
                    ibinder3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 7: // '\007'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 8: // '\b'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
                    break;

                case 9: // '\t'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 10: // '\n'
                    ibinder4 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 11: // '\013'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 12: // '\f'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 13: // '\r'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 14: // '\016'
                    gs1 = (gs)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, gs.CREATOR);
                    break;

                case 15: // '\017'
                    ibinder5 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 17: // '\021'
                    y1 = (y)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, y.CREATOR);
                    break;

                case 16: // '\020'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new dr(j, do1, ibinder, ibinder1, ibinder2, ibinder3, s, flag, s1, ibinder4, k, l, s2, gs1, ibinder5, s3, y1);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new dr[i];
    }
}
