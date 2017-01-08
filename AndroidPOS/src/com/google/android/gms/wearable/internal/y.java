// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            t

public final class y
    implements android.os.Parcelable.Creator
{

    public y()
    {
    }

    static void a(t t1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, t1.a);
        c.a(parcel, 2, t1.b);
        c.a(parcel, 3, t1.c, i);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.wearable.c ac[] = null;
        int k = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int l = parcel.readInt();
                switch (0xffff & l)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 3: // '\003'
                    ac = (com.google.android.gms.wearable.c[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, l, com.google.android.gms.wearable.c.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new t(k, i, ac);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new t[i];
    }
}
