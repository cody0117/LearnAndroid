// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.location:
//            e

public final class g
    implements android.os.Parcelable.Creator
{

    public g()
    {
    }

    static void a(e e1, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, e1.a);
        c.a(parcel, 1000, e1.a());
        c.a(parcel, 2, e1.b);
        c.a(parcel, 3, e1.c);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 1;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int k = 0;
        long l = 0L;
        int i1 = i;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int j1 = parcel.readInt();
                switch (0xffff & j1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
                    break;

                case 1: // '\001'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 3: // '\003'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new e(k, i1, i, l);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new e[i];
    }
}
