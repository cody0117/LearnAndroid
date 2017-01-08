// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.wallet.wobs:
//            g

public final class i
    implements android.os.Parcelable.Creator
{

    public i()
    {
    }

    static void a(g g1, Parcel parcel)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, g1.a());
        c.a(parcel, 2, g1.a);
        c.a(parcel, 3, g1.b, false);
        c.a(parcel, 4, g1.c);
        c.a(parcel, 5, g1.d, false);
        c.a(parcel, 6, g1.e);
        c.a(parcel, 7, g1.f);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        String s = null;
        int j = 0;
        int k = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        double d = 0.0D;
        long l = 0L;
        int i1 = -1;
        String s1 = null;
        int j1 = 0;
        do
        {
            if (parcel.dataPosition() < k)
            {
                int k1 = parcel.readInt();
                switch (0xffff & k1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k1);
                    break;

                case 1: // '\001'
                    j1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;

                case 2: // '\002'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;

                case 3: // '\003'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k1);
                    break;

                case 4: // '\004'
                    d = com.google.android.gms.common.internal.safeparcel.a.m(parcel, k1);
                    break;

                case 5: // '\005'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k1);
                    break;

                case 6: // '\006'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k1);
                    break;

                case 7: // '\007'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;
                }
            } else
            if (parcel.dataPosition() != k)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(k).toString(), parcel);
            } else
            {
                return new g(j1, j, s1, d, s, l, i1);
            }
        } while (true);
    }

    public final Object[] newArray(int j)
    {
        return new g[j];
    }
}
