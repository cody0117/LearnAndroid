// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoRef;
import com.google.android.gms.games.internal.player.b;

// Referenced classes of package com.google.android.gms.games:
//            Player, PlayerLevel, PlayerLevelInfo, PlayerEntity

public final class PlayerRef extends f
    implements Player
{

    private final b c;
    private final PlayerLevelInfo d;
    private final MostRecentGameInfoRef e;

    public PlayerRef(DataHolder dataholder, int i1)
    {
        this(dataholder, i1, null);
    }

    public PlayerRef(DataHolder dataholder, int i1, String s)
    {
        super(dataholder, i1);
        c = new b(s);
        e = new MostRecentGameInfoRef(dataholder, i1, c);
        boolean flag;
        if (!i(c.j) && b(c.j) != -1L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            int j1 = c(c.k);
            int k1 = c(c.n);
            PlayerLevel playerlevel = new PlayerLevel(j1, b(c.l), b(c.m));
            PlayerLevel playerlevel1;
            if (j1 != k1)
            {
                playerlevel1 = new PlayerLevel(k1, b(c.m), b(c.o));
            } else
            {
                playerlevel1 = playerlevel;
            }
            d = new PlayerLevelInfo(b(c.j), b(c.p), playerlevel, playerlevel1);
            return;
        } else
        {
            d = null;
            return;
        }
    }

    private Player o()
    {
        return new PlayerEntity(this);
    }

    public final Object a()
    {
        return o();
    }

    public final String b_()
    {
        return e(c.a);
    }

    public final String c()
    {
        return e(c.b);
    }

    public final Uri d()
    {
        return h(c.c);
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String e()
    {
        return e(c.d);
    }

    public final boolean equals(Object obj)
    {
        return PlayerEntity.a(this, obj);
    }

    public final Uri f()
    {
        return h(c.e);
    }

    public final String g()
    {
        return e(c.f);
    }

    public final long h()
    {
        return b(c.g);
    }

    public final int hashCode()
    {
        return PlayerEntity.a(this);
    }

    public final long i()
    {
        if (!a(c.i) || i(c.i))
        {
            return -1L;
        } else
        {
            return b(c.i);
        }
    }

    public final int j()
    {
        return c(c.h);
    }

    public final boolean k()
    {
        return d(c.s);
    }

    public final String l()
    {
        return e(c.q);
    }

    public final PlayerLevelInfo m()
    {
        return d;
    }

    public final MostRecentGameInfo n()
    {
        if (i(c.t))
        {
            return null;
        } else
        {
            return e;
        }
    }

    public final String toString()
    {
        return com.google.android.gms.games.PlayerEntity.b(this);
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        ((PlayerEntity)o()).writeToParcel(parcel, i1);
    }
}
