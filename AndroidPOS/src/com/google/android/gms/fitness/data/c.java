// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.fitness.data:
//            a

public final class c
    implements android.os.Parcelable.Creator
{

    public c()
    {
    }

    static void a(com.google.android.gms.fitness.data.a a1, Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.c.a(parcel);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 1, a1.a(), false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 1000, a1.e());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 2, a1.b(), false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 3, a1.c(), false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        String s = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
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
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 3: // '\003'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new com.google.android.gms.fitness.data.a(j, s1, s);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new com.google.android.gms.fitness.data.a[i];
    }
}
