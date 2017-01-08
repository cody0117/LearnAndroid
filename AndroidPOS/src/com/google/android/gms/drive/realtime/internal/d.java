// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.realtime.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.drive.realtime.internal:
//            ParcelableIndexReference

public final class d
    implements android.os.Parcelable.Creator
{

    public d()
    {
    }

    static void a(ParcelableIndexReference parcelableindexreference, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, parcelableindexreference.a);
        c.a(parcel, 2, parcelableindexreference.b, false);
        c.a(parcel, 3, parcelableindexreference.c);
        c.a(parcel, 4, parcelableindexreference.d);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        boolean flag = false;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        String s = null;
        int j = 0;
        int k = 0;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int l = parcel.readInt();
                switch (0xffff & l)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 3: // '\003'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 4: // '\004'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new ParcelableIndexReference(j, s, k, flag);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new ParcelableIndexReference[i];
    }
}
