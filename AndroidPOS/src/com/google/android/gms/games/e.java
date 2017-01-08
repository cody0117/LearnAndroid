// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.games:
//            PlayerLevel

public final class e
    implements android.os.Parcelable.Creator
{

    public e()
    {
    }

    static void a(PlayerLevel playerlevel, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, playerlevel.b());
        c.a(parcel, 1000, playerlevel.a());
        c.a(parcel, 2, playerlevel.c());
        c.a(parcel, 3, playerlevel.d());
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        long l = 0L;
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        long l1 = l;
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
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 3: // '\003'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new PlayerLevel(k, i, l1, l);
            }
        } while (true);
    }

    public final volatile Object[] newArray(int i)
    {
        return new PlayerLevel[i];
    }
}
