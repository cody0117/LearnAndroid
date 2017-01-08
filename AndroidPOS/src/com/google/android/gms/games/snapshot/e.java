// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.PlayerEntity;

// Referenced classes of package com.google.android.gms.games.snapshot:
//            SnapshotMetadataEntity

public final class e
    implements android.os.Parcelable.Creator
{

    public e()
    {
    }

    static void a(SnapshotMetadataEntity snapshotmetadataentity, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, snapshotmetadataentity.s_(), i, false);
        c.a(parcel, 1000, snapshotmetadataentity.n());
        c.a(parcel, 2, snapshotmetadataentity.c(), i, false);
        c.a(parcel, 3, snapshotmetadataentity.d(), false);
        c.a(parcel, 5, snapshotmetadataentity.e(), i, false);
        c.a(parcel, 6, snapshotmetadataentity.f(), false);
        c.a(parcel, 7, snapshotmetadataentity.i(), false);
        c.a(parcel, 8, snapshotmetadataentity.j(), false);
        c.a(parcel, 9, snapshotmetadataentity.k());
        c.a(parcel, 10, snapshotmetadataentity.l());
        c.a(parcel, 11, snapshotmetadataentity.g());
        c.a(parcel, 12, snapshotmetadataentity.h(), false);
        c.a(parcel, 13, snapshotmetadataentity.m());
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        GameEntity gameentity = null;
        PlayerEntity playerentity = null;
        String s = null;
        Uri uri = null;
        String s1 = null;
        String s2 = null;
        String s3 = null;
        long l = 0L;
        long l1 = 0L;
        float f = 0.0F;
        String s4 = null;
        boolean flag = false;
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
                    gameentity = (GameEntity)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, GameEntity.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    playerentity = (PlayerEntity)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, PlayerEntity.CREATOR);
                    break;

                case 3: // '\003'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 5: // '\005'
                    uri = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Uri.CREATOR);
                    break;

                case 6: // '\006'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 7: // '\007'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 8: // '\b'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 9: // '\t'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k);
                    break;

                case 10: // '\n'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k);
                    break;

                case 11: // '\013'
                    f = com.google.android.gms.common.internal.safeparcel.a.l(parcel, k);
                    break;

                case 12: // '\f'
                    s4 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 13: // '\r'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new SnapshotMetadataEntity(j, gameentity, playerentity, s, uri, s1, s2, s3, l, l1, f, s4, flag);
            }
        } while (true);
    }

    public final volatile Object[] newArray(int i)
    {
        return new SnapshotMetadataEntity[i];
    }
}
