// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            ap, m

public final class j
    implements android.os.Parcelable.Creator
{

    public j()
    {
    }

    static void a(ap ap1, Parcel parcel, int i)
    {
        int k = c.a(parcel);
        c.a(parcel, 1, ap1.a);
        c.a(parcel, 2, ap1.b);
        c.a(parcel, 3, ap1.c, i, false);
        c.a(parcel, k);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 0;
        int k = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        m m1 = null;
        int l = 0;
        do
        {
            if (parcel.dataPosition() < k)
            {
                int i1 = parcel.readInt();
                switch (0xffff & i1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
                    break;

                case 1: // '\001'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 3: // '\003'
                    m1 = (m)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, m.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != k)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(k).toString(), parcel);
            } else
            {
                return new ap(l, i, m1);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new ap[i];
    }
}
