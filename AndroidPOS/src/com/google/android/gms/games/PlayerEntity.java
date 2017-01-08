// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoEntity;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games:
//            Player, c, d, PlayerLevelInfo

public final class PlayerEntity extends GamesDowngradeableSafeParcel
    implements Player
{

    public static final android.os.Parcelable.Creator CREATOR = new c();
    private final int a;
    private final String b;
    private final String c;
    private final Uri d;
    private final Uri e;
    private final long f;
    private final int g;
    private final long h;
    private final String i;
    private final String j;
    private final String k;
    private final MostRecentGameInfoEntity l;
    private final PlayerLevelInfo m;
    private final boolean n;

    PlayerEntity(int i1, String s, String s1, Uri uri, Uri uri1, long l1, 
            int j1, long l2, String s2, String s3, String s4, MostRecentGameInfoEntity mostrecentgameinfoentity, 
            PlayerLevelInfo playerlevelinfo, boolean flag)
    {
        a = i1;
        b = s;
        c = s1;
        d = uri;
        i = s2;
        e = uri1;
        j = s3;
        f = l1;
        g = j1;
        h = l2;
        k = s4;
        n = flag;
        l = mostrecentgameinfoentity;
        m = playerlevelinfo;
    }

    public PlayerEntity(Player player)
    {
        a = 11;
        b = player.b_();
        c = player.c();
        d = player.d();
        i = player.e();
        e = player.f();
        j = player.g();
        f = player.h();
        g = player.j();
        h = player.i();
        k = player.l();
        n = player.k();
        MostRecentGameInfo mostrecentgameinfo = player.n();
        MostRecentGameInfoEntity mostrecentgameinfoentity;
        boolean flag;
        if (mostrecentgameinfo == null)
        {
            mostrecentgameinfoentity = null;
        } else
        {
            mostrecentgameinfoentity = new MostRecentGameInfoEntity(mostrecentgameinfo);
        }
        l = mostrecentgameinfoentity;
        m = player.m();
        oo.a(b);
        oo.a(c);
        if (f > 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        oo.a(flag);
    }

    static int a(Player player)
    {
        Object aobj[] = new Object[7];
        aobj[0] = player.b_();
        aobj[1] = player.c();
        aobj[2] = player.d();
        aobj[3] = player.f();
        aobj[4] = Long.valueOf(player.h());
        aobj[5] = player.l();
        aobj[6] = player.m();
        return Arrays.hashCode(aobj);
    }

    static boolean a(Player player, Object obj)
    {
        if (obj instanceof Player)
        {
            if (player == obj)
            {
                return true;
            }
            Player player1 = (Player)obj;
            if (pt.a(player1.b_(), player.b_()) && pt.a(player1.c(), player.c()) && pt.a(player1.d(), player.d()) && pt.a(player1.f(), player.f()) && pt.a(Long.valueOf(player1.h()), Long.valueOf(player.h())) && pt.a(player1.l(), player.l()) && pt.a(player1.m(), player.m()))
            {
                return true;
            }
        }
        return false;
    }

    static boolean a(Integer integer)
    {
        return b(integer);
    }

    static boolean a(String s)
    {
        return b(s);
    }

    static String b(Player player)
    {
        return pt.a(player).a("PlayerId", player.b_()).a("DisplayName", player.c()).a("IconImageUri", player.d()).a("IconImageUrl", player.e()).a("HiResImageUri", player.f()).a("HiResImageUrl", player.g()).a("RetrievedTimestamp", Long.valueOf(player.h())).a("Title", player.l()).a("LevelInfo", player.m()).toString();
    }

    static Integer p()
    {
        return B();
    }

    public final volatile Object a()
    {
        return this;
    }

    public final String b_()
    {
        return b;
    }

    public final String c()
    {
        return c;
    }

    public final Uri d()
    {
        return d;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String e()
    {
        return i;
    }

    public final boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public final Uri f()
    {
        return e;
    }

    public final String g()
    {
        return j;
    }

    public final long h()
    {
        return f;
    }

    public final int hashCode()
    {
        return a(this);
    }

    public final long i()
    {
        return h;
    }

    public final int j()
    {
        return g;
    }

    public final boolean k()
    {
        return n;
    }

    public final String l()
    {
        return k;
    }

    public final PlayerLevelInfo m()
    {
        return m;
    }

    public final MostRecentGameInfo n()
    {
        return l;
    }

    public final int o()
    {
        return a;
    }

    public final String toString()
    {
        return b(this);
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        if (!C())
        {
            com.google.android.gms.games.d.a(this, parcel, i1);
            return;
        }
        parcel.writeString(b);
        parcel.writeString(c);
        String s;
        Uri uri;
        String s1;
        if (d == null)
        {
            s = null;
        } else
        {
            s = d.toString();
        }
        parcel.writeString(s);
        uri = e;
        s1 = null;
        if (uri != null)
        {
            s1 = e.toString();
        }
        parcel.writeString(s1);
        parcel.writeLong(f);
    }

}
