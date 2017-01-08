// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            hr, hf, hd

public final class nk
    implements android.os.Parcelable.Creator
{

    public nk()
    {
    }

    static void a(hr hr1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, hr1.b, i, false);
        c.a(parcel, 1000, hr1.a);
        c.a(parcel, 2, hr1.c);
        c.a(parcel, 3, hr1.d);
        c.a(parcel, 4, hr1.e, false);
        c.a(parcel, 5, hr1.f, i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 0;
        hd hd1 = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        long l = 0L;
        String s = null;
        hf hf1 = null;
        int k = 0;
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
                    hf1 = (hf)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, hf.CREATOR);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 3: // '\003'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 4: // '\004'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 5: // '\005'
                    hd1 = (hd)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, hd.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new hr(k, hf1, l, i, s, hd1);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new hr[i];
    }
}
