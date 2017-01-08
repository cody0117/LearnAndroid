// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.achievement;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.games.PlayerEntity;

// Referenced classes of package com.google.android.gms.games.achievement:
//            AchievementEntity

public final class a
    implements android.os.Parcelable.Creator
{

    public a()
    {
    }

    static void a(AchievementEntity achievemententity, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, achievemententity.c_(), false);
        c.a(parcel, 2, achievemententity.c());
        c.a(parcel, 3, achievemententity.d(), false);
        c.a(parcel, 4, achievemententity.e(), false);
        c.a(parcel, 5, achievemententity.f(), i, false);
        c.a(parcel, 6, achievemententity.g(), false);
        c.a(parcel, 7, achievemententity.h(), i, false);
        c.a(parcel, 8, achievemententity.i(), false);
        c.a(parcel, 9, achievemententity.j());
        c.a(parcel, 10, achievemententity.k(), false);
        c.a(parcel, 11, achievemententity.l(), i, false);
        c.a(parcel, 12, achievemententity.m());
        c.a(parcel, 13, achievemententity.n());
        c.a(parcel, 14, achievemententity.o(), false);
        c.a(parcel, 15, achievemententity.p());
        c.a(parcel, 16, achievemententity.q());
        c.a(parcel, 1000, achievemententity.r());
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        String s = null;
        int k = 0;
        String s1 = null;
        String s2 = null;
        Uri uri = null;
        String s3 = null;
        Uri uri1 = null;
        String s4 = null;
        int l = 0;
        String s5 = null;
        PlayerEntity playerentity = null;
        int i1 = 0;
        int j1 = 0;
        String s6 = null;
        long l1 = 0L;
        long l2 = 0L;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int k1 = parcel.readInt();
                switch (0xffff & k1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k1);
                    break;

                case 1: // '\001'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k1);
                    break;

                case 2: // '\002'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;

                case 3: // '\003'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k1);
                    break;

                case 4: // '\004'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k1);
                    break;

                case 5: // '\005'
                    uri = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k1, Uri.CREATOR);
                    break;

                case 6: // '\006'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k1);
                    break;

                case 7: // '\007'
                    uri1 = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k1, Uri.CREATOR);
                    break;

                case 8: // '\b'
                    s4 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k1);
                    break;

                case 9: // '\t'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;

                case 10: // '\n'
                    s5 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k1);
                    break;

                case 11: // '\013'
                    playerentity = (PlayerEntity)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k1, PlayerEntity.CREATOR);
                    break;

                case 12: // '\f'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;

                case 13: // '\r'
                    j1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;

                case 14: // '\016'
                    s6 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k1);
                    break;

                case 15: // '\017'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k1);
                    break;

                case 16: // '\020'
                    l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k1);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new AchievementEntity(j, s, k, s1, s2, uri, s3, uri1, s4, l, s5, playerentity, i1, j1, s6, l1, l2);
            }
        } while (true);
    }

    public final volatile Object[] newArray(int i)
    {
        return new AchievementEntity[i];
    }
}
