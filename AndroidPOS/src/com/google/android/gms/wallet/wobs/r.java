// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.wallet.wobs:
//            p, l, n

public final class r
    implements android.os.Parcelable.Creator
{

    public r()
    {
    }

    static void a(p p1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, p1.a());
        c.a(parcel, 2, p1.a, false);
        c.a(parcel, 3, p1.b, false);
        c.a(parcel, 4, p1.c, i, false);
        c.a(parcel, 5, p1.d, i, false);
        c.a(parcel, 6, p1.e, i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        n n1 = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        n n2 = null;
        l l1 = null;
        String s = null;
        String s1 = null;
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
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 3: // '\003'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 4: // '\004'
                    l1 = (l)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, l.CREATOR);
                    break;

                case 5: // '\005'
                    n2 = (n)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, n.CREATOR);
                    break;

                case 6: // '\006'
                    n1 = (n)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, n.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new p(j, s1, s, l1, n2, n1);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new p[i];
    }
}
