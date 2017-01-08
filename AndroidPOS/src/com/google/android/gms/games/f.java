// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.games:
//            PlayerLevelInfo, PlayerLevel

public final class f
    implements android.os.Parcelable.Creator
{

    public f()
    {
    }

    static void a(PlayerLevelInfo playerlevelinfo, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, playerlevelinfo.b());
        c.a(parcel, 1000, playerlevelinfo.a());
        c.a(parcel, 2, playerlevelinfo.c());
        c.a(parcel, 3, playerlevelinfo.d(), i, false);
        c.a(parcel, 4, playerlevelinfo.e(), i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        long l = 0L;
        PlayerLevel playerlevel = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        long l1 = l;
        PlayerLevel playerlevel1 = null;
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
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k);
                    break;

                case 3: // '\003'
                    playerlevel1 = (PlayerLevel)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, PlayerLevel.CREATOR);
                    break;

                case 4: // '\004'
                    playerlevel = (PlayerLevel)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, PlayerLevel.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new PlayerLevelInfo(j, l1, l, playerlevel1, playerlevel);
            }
        } while (true);
    }

    public final volatile Object[] newArray(int i)
    {
        return new PlayerLevelInfo[i];
    }
}
