// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.request;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.request:
//            GameRequest, a

public final class GameRequestEntity
    implements SafeParcelable, GameRequest
{

    public static final a CREATOR = new a();
    private final int a;
    private final GameEntity b;
    private final PlayerEntity c;
    private final byte d[];
    private final String e;
    private final ArrayList f;
    private final int g;
    private final long h;
    private final long i;
    private final Bundle j;
    private final int k;

    GameRequestEntity(int i1, GameEntity gameentity, PlayerEntity playerentity, byte abyte0[], String s, ArrayList arraylist, int j1, 
            long l1, long l2, Bundle bundle, int k1)
    {
        a = i1;
        b = gameentity;
        c = playerentity;
        d = abyte0;
        e = s;
        f = arraylist;
        g = j1;
        h = l1;
        i = l2;
        j = bundle;
        k = k1;
    }

    public GameRequestEntity(GameRequest gamerequest)
    {
        a = 2;
        b = new GameEntity(gamerequest.e());
        c = new PlayerEntity(gamerequest.f());
        e = gamerequest.d();
        g = gamerequest.h();
        h = gamerequest.i();
        i = gamerequest.j();
        k = gamerequest.k();
        byte abyte0[] = gamerequest.g();
        List list;
        int i1;
        if (abyte0 == null)
        {
            d = null;
        } else
        {
            d = new byte[abyte0.length];
            System.arraycopy(abyte0, 0, d, 0, abyte0.length);
        }
        list = gamerequest.l();
        i1 = list.size();
        f = new ArrayList(i1);
        j = new Bundle();
        for (int j1 = 0; j1 < i1; j1++)
        {
            Player player = (Player)((Player)list.get(j1)).a();
            String s = player.b_();
            f.add((PlayerEntity)player);
            j.putInt(s, gamerequest.a_(s));
        }

    }

    static int a(GameRequest gamerequest)
    {
        Object aobj[] = new Object[8];
        aobj[0] = gamerequest.e();
        aobj[1] = gamerequest.l();
        aobj[2] = gamerequest.d();
        aobj[3] = gamerequest.f();
        aobj[4] = c(gamerequest);
        aobj[5] = Integer.valueOf(gamerequest.h());
        aobj[6] = Long.valueOf(gamerequest.i());
        aobj[7] = Long.valueOf(gamerequest.j());
        return Arrays.hashCode(aobj);
    }

    static boolean a(GameRequest gamerequest, Object obj)
    {
        if (obj instanceof GameRequest)
        {
            if (gamerequest == obj)
            {
                return true;
            }
            GameRequest gamerequest1 = (GameRequest)obj;
            if (pt.a(gamerequest1.e(), gamerequest.e()) && pt.a(gamerequest1.l(), gamerequest.l()) && pt.a(gamerequest1.d(), gamerequest.d()) && pt.a(gamerequest1.f(), gamerequest.f()) && Arrays.equals(c(gamerequest1), c(gamerequest)) && pt.a(Integer.valueOf(gamerequest1.h()), Integer.valueOf(gamerequest.h())) && pt.a(Long.valueOf(gamerequest1.i()), Long.valueOf(gamerequest.i())) && pt.a(Long.valueOf(gamerequest1.j()), Long.valueOf(gamerequest.j())))
            {
                return true;
            }
        }
        return false;
    }

    static String b(GameRequest gamerequest)
    {
        return pt.a(gamerequest).a("Game", gamerequest.e()).a("Sender", gamerequest.f()).a("Recipients", gamerequest.l()).a("Data", gamerequest.g()).a("RequestId", gamerequest.d()).a("Type", Integer.valueOf(gamerequest.h())).a("CreationTimestamp", Long.valueOf(gamerequest.i())).a("ExpirationTimestamp", Long.valueOf(gamerequest.j())).toString();
    }

    private static int[] c(GameRequest gamerequest)
    {
        List list = gamerequest.l();
        int i1 = list.size();
        int ai[] = new int[i1];
        for (int j1 = 0; j1 < i1; j1++)
        {
            ai[j1] = gamerequest.a_(((Player)list.get(j1)).b_());
        }

        return ai;
    }

    public final volatile Object a()
    {
        return this;
    }

    public final int a_(String s)
    {
        return j.getInt(s, 0);
    }

    public final int b()
    {
        return a;
    }

    public final Bundle c()
    {
        return j;
    }

    public final String d()
    {
        return e;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final Game e()
    {
        return b;
    }

    public final boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public final Player f()
    {
        return c;
    }

    public final byte[] g()
    {
        return d;
    }

    public final int h()
    {
        return g;
    }

    public final int hashCode()
    {
        return a(this);
    }

    public final long i()
    {
        return h;
    }

    public final long j()
    {
        return i;
    }

    public final int k()
    {
        return k;
    }

    public final List l()
    {
        return new ArrayList(f);
    }

    public final String toString()
    {
        return b(this);
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        com.google.android.gms.games.request.a.a(this, parcel, i1);
    }

}
