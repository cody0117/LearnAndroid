// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.games.multiplayer.InvitationEntity;

// Referenced classes of package com.google.android.gms.games.internal.multiplayer:
//            ZInvitationCluster

public final class a
    implements android.os.Parcelable.Creator
{

    public a()
    {
    }

    static void a(ZInvitationCluster zinvitationcluster, Parcel parcel)
    {
        int i = c.a(parcel);
        c.b(parcel, 1, zinvitationcluster.c(), false);
        c.a(parcel, 1000, zinvitationcluster.b());
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        java.util.ArrayList arraylist = null;
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
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, InvitationEntity.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new ZInvitationCluster(j, arraylist);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new ZInvitationCluster[i];
    }
}
