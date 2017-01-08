// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.drive:
//            StorageStats

public final class e
    implements android.os.Parcelable.Creator
{

    public e()
    {
    }

    static void a(StorageStats storagestats, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, storagestats.a);
        c.a(parcel, 2, storagestats.b);
        c.a(parcel, 3, storagestats.c);
        c.a(parcel, 4, storagestats.d);
        c.a(parcel, 5, storagestats.e);
        c.a(parcel, 6, storagestats.f);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 0;
        long l = 0L;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        long l1 = l;
        long l2 = l;
        long l3 = l;
        int k = 0;
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
                    l3 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 3: // '\003'
                    l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 4: // '\004'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 5: // '\005'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 6: // '\006'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new StorageStats(k, l3, l2, l1, l, i);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new StorageStats[i];
    }
}
