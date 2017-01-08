// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            hp, hj

public final class nj
    implements android.os.Parcelable.Creator
{

    public nj()
    {
    }

    static void a(hp hp1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, hp1.b, false);
        c.a(parcel, 1000, hp1.a);
        c.a(parcel, 2, hp1.c, false);
        c.a(parcel, 3, hp1.d);
        c.a(parcel, 4, hp1.e);
        c.a(parcel, 5, hp1.f);
        c.a(parcel, 6, hp1.g, false);
        c.a(parcel, 7, hp1.h, i);
        c.a(parcel, 8, hp1.i);
        c.a(parcel, 11, hp1.j, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        boolean flag = false;
        String s = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 1;
        int ai[] = null;
        hj ahj[] = null;
        String s1 = null;
        boolean flag1 = false;
        String s2 = null;
        String s3 = null;
        int k = 0;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int l = parcel.readInt();
                switch (0xffff & l)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 3: // '\003'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
                    break;

                case 4: // '\004'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 5: // '\005'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
                    break;

                case 6: // '\006'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 7: // '\007'
                    ahj = (hj[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, l, hj.CREATOR);
                    break;

                case 8: // '\b'
                    ai = com.google.android.gms.common.internal.safeparcel.a.s(parcel, l);
                    break;

                case 11: // '\013'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new hp(k, s3, s2, flag1, j, flag, s1, ahj, ai, s);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new hp[i];
    }
}
