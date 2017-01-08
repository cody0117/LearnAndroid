// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.maps.model.internal:
//            e, a

public final class f
    implements android.os.Parcelable.Creator
{

    public f()
    {
    }

    static void a(e e1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, e1.a());
        c.a(parcel, 2, e1.b(), i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        com.google.android.gms.maps.model.internal.a a1 = null;
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
                    a1 = (com.google.android.gms.maps.model.internal.a)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, a.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new e(j, a1);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new e[i];
    }
}
