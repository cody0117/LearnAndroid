// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.games.snapshot:
//            SnapshotEntity, SnapshotMetadataEntity, SnapshotContentsEntity

public final class b
    implements android.os.Parcelable.Creator
{

    public b()
    {
    }

    static void a(SnapshotEntity snapshotentity, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, snapshotentity.b(), i, false);
        c.a(parcel, 1000, snapshotentity.d());
        c.a(parcel, 3, snapshotentity.c(), i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        SnapshotMetadataEntity snapshotmetadataentity = null;
        int j = 0;
        SnapshotContentsEntity snapshotcontentsentity = null;
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
                    snapshotmetadataentity = (SnapshotMetadataEntity)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, SnapshotMetadataEntity.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 3: // '\003'
                    snapshotcontentsentity = (SnapshotContentsEntity)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, SnapshotContentsEntity.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new SnapshotEntity(j, snapshotmetadataentity, snapshotcontentsentity);
            }
        } while (true);
    }

    public final volatile Object[] newArray(int i)
    {
        return new SnapshotEntity[i];
    }
}
