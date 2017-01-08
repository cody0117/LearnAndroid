// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            ky, kv

public final class qm
    implements android.os.Parcelable.Creator
{

    public qm()
    {
    }

    static void a(ky ky1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, ky1.a());
        c.a(parcel, ky1.e());
        c.a(parcel, 3, ky1.f(), i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        kv kv1 = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        Parcel parcel1 = null;
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
                    parcel1 = com.google.android.gms.common.internal.safeparcel.a.w(parcel, k);
                    break;

                case 3: // '\003'
                    kv1 = (kv)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, kv.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new ky(j, parcel1, kv1);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new ky[i];
    }
}
