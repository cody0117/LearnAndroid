// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            hh, hp

public final class nc
    implements android.os.Parcelable.Creator
{

    public nc()
    {
    }

    static void a(hh hh1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, hh1.c, false);
        c.a(parcel, 1000, hh1.b);
        c.a(parcel, 3, hh1.d, i, false);
        c.a(parcel, 4, hh1.e);
        c.a(parcel, 5, hh1.f);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        byte abyte0[] = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        int k = -1;
        hp hp1 = null;
        String s = null;
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
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 3: // '\003'
                    hp1 = (hp)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, hp.CREATOR);
                    break;

                case 4: // '\004'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 5: // '\005'
                    abyte0 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new hh(j, s, hp1, k, abyte0);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new hh[i];
    }
}
