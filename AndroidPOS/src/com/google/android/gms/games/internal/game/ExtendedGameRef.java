// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.game;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataRef;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.internal.game:
//            ExtendedGame, ExtendedGameEntity, GameBadgeRef

public class ExtendedGameRef extends f
    implements ExtendedGame
{

    private final GameRef c;
    private final SnapshotMetadataRef d;
    private final int e;

    private ExtendedGame m()
    {
        return new ExtendedGameEntity(this);
    }

    public final Object a()
    {
        return m();
    }

    public final ArrayList c()
    {
        int i1 = 0;
        if (a.c("badge_title", b, a.a(b)) == null)
        {
            return new ArrayList(0);
        }
        ArrayList arraylist = new ArrayList(e);
        for (; i1 < e; i1++)
        {
            arraylist.add(new GameBadgeRef(a, i1 + b));
        }

        return arraylist;
    }

    public final int d()
    {
        return c("availability");
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean e()
    {
        return d("owned");
    }

    public final boolean equals(Object obj)
    {
        return ExtendedGameEntity.a(this, obj);
    }

    public final int f()
    {
        return c("achievement_unlocked_count");
    }

    public final long g()
    {
        return b("last_played_server_time");
    }

    public final long h()
    {
        return b("price_micros");
    }

    public final int hashCode()
    {
        return ExtendedGameEntity.a(this);
    }

    public final String i()
    {
        return e("formatted_price");
    }

    public final long j()
    {
        return b("full_price_micros");
    }

    public final String k()
    {
        return e("formatted_full_price");
    }

    public final Game k_()
    {
        return c;
    }

    public final SnapshotMetadata l()
    {
        return d;
    }

    public final String toString()
    {
        return ExtendedGameEntity.b(this);
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        ((ExtendedGameEntity)m()).writeToParcel(parcel, i1);
    }
}
