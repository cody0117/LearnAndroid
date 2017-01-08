// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.ArrayList;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games.multiplayer.turnbased:
//            TurnBasedMatch, a

public final class TurnBasedMatchEntity
    implements SafeParcelable, TurnBasedMatch
{

    public static final a CREATOR = new a();
    private final int b;
    private final GameEntity c;
    private final String d;
    private final String e;
    private final long f;
    private final String g;
    private final long h;
    private final String i;
    private final int j;
    private final int k;
    private final int l;
    private final byte m[];
    private final ArrayList n;
    private final String o;
    private final byte p[];
    private final int q;
    private final Bundle r;
    private final int s;
    private final boolean t;
    private final String u;
    private final String v;

    TurnBasedMatchEntity(int i1, GameEntity gameentity, String s1, String s2, long l1, String s3, 
            long l2, String s4, int j1, int k1, int i2, byte abyte0[], 
            ArrayList arraylist, String s5, byte abyte1[], int j2, Bundle bundle, int k2, boolean flag, 
            String s6, String s7)
    {
        b = i1;
        c = gameentity;
        d = s1;
        e = s2;
        f = l1;
        g = s3;
        h = l2;
        i = s4;
        j = j1;
        s = k2;
        k = k1;
        l = i2;
        m = abyte0;
        n = arraylist;
        o = s5;
        p = abyte1;
        q = j2;
        r = bundle;
        t = flag;
        u = s6;
        v = s7;
    }

    public TurnBasedMatchEntity(TurnBasedMatch turnbasedmatch)
    {
        b = 2;
        c = new GameEntity(turnbasedmatch.p_());
        d = turnbasedmatch.c();
        e = turnbasedmatch.d();
        f = turnbasedmatch.e();
        g = turnbasedmatch.j();
        h = turnbasedmatch.l();
        i = turnbasedmatch.m();
        j = turnbasedmatch.f();
        s = turnbasedmatch.g();
        k = turnbasedmatch.i();
        l = turnbasedmatch.o();
        o = turnbasedmatch.p();
        q = turnbasedmatch.r();
        r = turnbasedmatch.s();
        t = turnbasedmatch.u();
        u = turnbasedmatch.h();
        v = turnbasedmatch.v();
        byte abyte0[] = turnbasedmatch.n();
        byte abyte1[];
        ArrayList arraylist;
        int i1;
        if (abyte0 == null)
        {
            m = null;
        } else
        {
            m = new byte[abyte0.length];
            System.arraycopy(abyte0, 0, m, 0, abyte0.length);
        }
        abyte1 = turnbasedmatch.q();
        if (abyte1 == null)
        {
            p = null;
        } else
        {
            p = new byte[abyte1.length];
            System.arraycopy(abyte1, 0, p, 0, abyte1.length);
        }
        arraylist = turnbasedmatch.k();
        i1 = arraylist.size();
        n = new ArrayList(i1);
        for (int j1 = 0; j1 < i1; j1++)
        {
            n.add((ParticipantEntity)((Participant)arraylist.get(j1)).a());
        }

    }

    static int a(TurnBasedMatch turnbasedmatch)
    {
        Object aobj[] = new Object[18];
        aobj[0] = turnbasedmatch.p_();
        aobj[1] = turnbasedmatch.c();
        aobj[2] = turnbasedmatch.d();
        aobj[3] = Long.valueOf(turnbasedmatch.e());
        aobj[4] = turnbasedmatch.j();
        aobj[5] = Long.valueOf(turnbasedmatch.l());
        aobj[6] = turnbasedmatch.m();
        aobj[7] = Integer.valueOf(turnbasedmatch.f());
        aobj[8] = Integer.valueOf(turnbasedmatch.g());
        aobj[9] = turnbasedmatch.h();
        aobj[10] = Integer.valueOf(turnbasedmatch.i());
        aobj[11] = Integer.valueOf(turnbasedmatch.o());
        aobj[12] = turnbasedmatch.k();
        aobj[13] = turnbasedmatch.p();
        aobj[14] = Integer.valueOf(turnbasedmatch.r());
        aobj[15] = turnbasedmatch.s();
        aobj[16] = Integer.valueOf(turnbasedmatch.t());
        aobj[17] = Boolean.valueOf(turnbasedmatch.u());
        return Arrays.hashCode(aobj);
    }

    static boolean a(TurnBasedMatch turnbasedmatch, Object obj)
    {
        if (obj instanceof TurnBasedMatch)
        {
            if (turnbasedmatch == obj)
            {
                return true;
            }
            TurnBasedMatch turnbasedmatch1 = (TurnBasedMatch)obj;
            if (pt.a(turnbasedmatch1.p_(), turnbasedmatch.p_()) && pt.a(turnbasedmatch1.c(), turnbasedmatch.c()) && pt.a(turnbasedmatch1.d(), turnbasedmatch.d()) && pt.a(Long.valueOf(turnbasedmatch1.e()), Long.valueOf(turnbasedmatch.e())) && pt.a(turnbasedmatch1.j(), turnbasedmatch.j()) && pt.a(Long.valueOf(turnbasedmatch1.l()), Long.valueOf(turnbasedmatch.l())) && pt.a(turnbasedmatch1.m(), turnbasedmatch.m()) && pt.a(Integer.valueOf(turnbasedmatch1.f()), Integer.valueOf(turnbasedmatch.f())) && pt.a(Integer.valueOf(turnbasedmatch1.g()), Integer.valueOf(turnbasedmatch.g())) && pt.a(turnbasedmatch1.h(), turnbasedmatch.h()) && pt.a(Integer.valueOf(turnbasedmatch1.i()), Integer.valueOf(turnbasedmatch.i())) && pt.a(Integer.valueOf(turnbasedmatch1.o()), Integer.valueOf(turnbasedmatch.o())) && pt.a(turnbasedmatch1.k(), turnbasedmatch.k()) && pt.a(turnbasedmatch1.p(), turnbasedmatch.p()) && pt.a(Integer.valueOf(turnbasedmatch1.r()), Integer.valueOf(turnbasedmatch.r())) && pt.a(turnbasedmatch1.s(), turnbasedmatch.s()) && pt.a(Integer.valueOf(turnbasedmatch1.t()), Integer.valueOf(turnbasedmatch.t())) && pt.a(Boolean.valueOf(turnbasedmatch1.u()), Boolean.valueOf(turnbasedmatch.u())))
            {
                return true;
            }
        }
        return false;
    }

    static String b(TurnBasedMatch turnbasedmatch)
    {
        return pt.a(turnbasedmatch).a("Game", turnbasedmatch.p_()).a("MatchId", turnbasedmatch.c()).a("CreatorId", turnbasedmatch.d()).a("CreationTimestamp", Long.valueOf(turnbasedmatch.e())).a("LastUpdaterId", turnbasedmatch.j()).a("LastUpdatedTimestamp", Long.valueOf(turnbasedmatch.l())).a("PendingParticipantId", turnbasedmatch.m()).a("MatchStatus", Integer.valueOf(turnbasedmatch.f())).a("TurnStatus", Integer.valueOf(turnbasedmatch.g())).a("Description", turnbasedmatch.h()).a("Variant", Integer.valueOf(turnbasedmatch.i())).a("Data", turnbasedmatch.n()).a("Version", Integer.valueOf(turnbasedmatch.o())).a("Participants", turnbasedmatch.k()).a("RematchId", turnbasedmatch.p()).a("PreviousData", turnbasedmatch.q()).a("MatchNumber", Integer.valueOf(turnbasedmatch.r())).a("AutoMatchCriteria", turnbasedmatch.s()).a("AvailableAutoMatchSlots", Integer.valueOf(turnbasedmatch.t())).a("LocallyModified", Boolean.valueOf(turnbasedmatch.u())).a("DescriptionParticipantId", turnbasedmatch.v()).toString();
    }

    public final volatile Object a()
    {
        return this;
    }

    public final String c()
    {
        return d;
    }

    public final String d()
    {
        return e;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final long e()
    {
        return f;
    }

    public final boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public final int f()
    {
        return j;
    }

    public final int g()
    {
        return s;
    }

    public final String h()
    {
        return u;
    }

    public final int hashCode()
    {
        return a(this);
    }

    public final int i()
    {
        return k;
    }

    public final String j()
    {
        return g;
    }

    public final ArrayList k()
    {
        return new ArrayList(n);
    }

    public final long l()
    {
        return h;
    }

    public final String m()
    {
        return i;
    }

    public final byte[] n()
    {
        return m;
    }

    public final int o()
    {
        return l;
    }

    public final String p()
    {
        return o;
    }

    public final Game p_()
    {
        return c;
    }

    public final byte[] q()
    {
        return p;
    }

    public final int r()
    {
        return q;
    }

    public final Bundle s()
    {
        return r;
    }

    public final int t()
    {
        if (r == null)
        {
            return 0;
        } else
        {
            return r.getInt("max_automatch_players");
        }
    }

    public final String toString()
    {
        return b(this);
    }

    public final boolean u()
    {
        return t;
    }

    public final String v()
    {
        return v;
    }

    public final int w()
    {
        return b;
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        com.google.android.gms.games.multiplayer.turnbased.a.a(this, parcel, i1);
    }

}
