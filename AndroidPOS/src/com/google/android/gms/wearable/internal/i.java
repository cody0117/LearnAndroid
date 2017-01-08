// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            an

public final class i
    implements android.os.Parcelable.Creator
{

    public i()
    {
    }

    static void a(an an1, Parcel parcel)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, an1.a);
        c.a(parcel, 2, an1.b, false);
        c.a(parcel, 3, an1.c, false);
        c.a(parcel, 4, an1.d);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        String s = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int k = 0;
        long l = 0L;
        String s1 = null;
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
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 3: // '\003'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 4: // '\004'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new an(k, s1, s, l);
            }
        } while (true);
    }

    public final Object[] newArray(int j)
    {
        return new an[j];
    }
}
