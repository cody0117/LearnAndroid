// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.cast;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.cast:
//            LaunchOptions

public final class c
    implements android.os.Parcelable.Creator
{

    public c()
    {
    }

    static void a(LaunchOptions launchoptions, Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.c.a(parcel);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 1, launchoptions.a());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 2, launchoptions.b());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 3, launchoptions.c(), false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        boolean flag = false;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        String s = null;
        int j = 0;
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
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
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
                return new LaunchOptions(j, flag, s);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new LaunchOptions[i];
    }
}
