// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.wallet.wobs:
//            f, g, l

public final class k
    implements android.os.Parcelable.Creator
{

    public k()
    {
    }

    static void a(f f1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, f1.a());
        c.a(parcel, 2, f1.a, false);
        c.a(parcel, 3, f1.b, i, false);
        c.a(parcel, 4, f1.c, false);
        c.a(parcel, 5, f1.d, i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        l l1 = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        String s = null;
        g g1 = null;
        String s1 = null;
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
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 3: // '\003'
                    g1 = (g)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, g.CREATOR);
                    break;

                case 4: // '\004'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 5: // '\005'
                    l1 = (l)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, l.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new f(j, s1, g1, s, l1);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new f[i];
    }
}
