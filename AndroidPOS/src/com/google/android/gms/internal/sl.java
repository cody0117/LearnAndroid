// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            or

public final class sl
    implements android.os.Parcelable.Creator
{

    public sl()
    {
    }

    static void a(or or1, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, or1.a);
        c.a(parcel, 2, or1.b);
        c.a(parcel, 3, or1.c, false);
        c.a(parcel, 4, or1.d);
        c.a(parcel, 5, or1.e);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        android.os.Bundle bundle = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        long l = 0L;
        byte abyte0[] = null;
        String s = null;
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
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k);
                    break;

                case 3: // '\003'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 4: // '\004'
                    abyte0 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, k);
                    break;

                case 5: // '\005'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.q(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new or(j, l, s, abyte0, bundle);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new or[i];
    }
}
