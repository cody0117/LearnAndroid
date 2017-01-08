// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            nn

public final class rz
    implements android.os.Parcelable.Creator
{

    public rz()
    {
    }

    static void a(nn nn1, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, nn1.f(), false);
        c.a(parcel, 1000, nn1.a());
        c.a(parcel, 2, nn1.g());
        c.a(parcel, nn1.b());
        c.a(parcel, 4, nn1.c());
        c.a(parcel, 5, nn1.d());
        c.a(parcel, 6, nn1.e());
        c.a(parcel, 7, nn1.h());
        c.a(parcel, 8, nn1.i());
        c.a(parcel, 9, nn1.j());
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        String s = null;
        int k = 0;
        short word0 = 0;
        double d = 0.0D;
        double d1 = 0.0D;
        float f = 0.0F;
        long l = 0L;
        int i1 = 0;
        int j1 = -1;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int k1 = parcel.readInt();
                switch (0xffff & k1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k1);
                    break;

                case 1: // '\001'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k1);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k1);
                    break;

                case 3: // '\003'
                    word0 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, k1);
                    break;

                case 4: // '\004'
                    d = com.google.android.gms.common.internal.safeparcel.a.m(parcel, k1);
                    break;

                case 5: // '\005'
                    d1 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, k1);
                    break;

                case 6: // '\006'
                    f = com.google.android.gms.common.internal.safeparcel.a.l(parcel, k1);
                    break;

                case 7: // '\007'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;

                case 8: // '\b'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;

                case 9: // '\t'
                    j1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new nn(j, s, k, word0, d, d1, f, l, i1, j1);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new nn[i];
    }
}
