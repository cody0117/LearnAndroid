// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.plus.internal:
//            h, PlusCommonExtras

public final class f
    implements android.os.Parcelable.Creator
{

    public f()
    {
    }

    static void a(h h1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, h1.b(), false);
        c.a(parcel, 1000, h1.a());
        c.a(parcel, 2, h1.c());
        c.a(parcel, 3, h1.d());
        c.a(parcel, 4, h1.e());
        c.a(parcel, 5, h1.f(), false);
        c.a(parcel, 6, h1.g(), false);
        c.a(parcel, 7, h1.h(), false);
        c.a(parcel, 8, h1.i(), false);
        c.a(parcel, 9, h1.j(), i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        PlusCommonExtras pluscommonextras = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        String s = null;
        String s1 = null;
        String s2 = null;
        String s3 = null;
        String as[] = null;
        String as1[] = null;
        String as2[] = null;
        String s4 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int k = parcel.readInt();
                switch (0xffff & k)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
                    break;

                case 1: // '\001'
                    s4 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    as2 = com.google.android.gms.common.internal.safeparcel.a.u(parcel, k);
                    break;

                case 3: // '\003'
                    as1 = com.google.android.gms.common.internal.safeparcel.a.u(parcel, k);
                    break;

                case 4: // '\004'
                    as = com.google.android.gms.common.internal.safeparcel.a.u(parcel, k);
                    break;

                case 5: // '\005'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 6: // '\006'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 7: // '\007'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 8: // '\b'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 9: // '\t'
                    pluscommonextras = (PlusCommonExtras)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, PlusCommonExtras.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new h(j, s4, as2, as1, as, s3, s2, s1, s, pluscommonextras);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new h[i];
    }
}
