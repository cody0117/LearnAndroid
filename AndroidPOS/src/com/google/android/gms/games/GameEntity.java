// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games:
//            Game, a, b

public final class GameEntity extends GamesDowngradeableSafeParcel
    implements Game
{

    public static final android.os.Parcelable.Creator CREATOR = new a();
    private final int a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final String f;
    private final String g;
    private final Uri h;
    private final Uri i;
    private final Uri j;
    private final boolean k;
    private final boolean l;
    private final String m;
    private final int n;
    private final int o;
    private final int p;
    private final boolean q;
    private final boolean r;
    private final String s;
    private final String t;
    private final String u;
    private final boolean v;
    private final boolean w;
    private final boolean x;
    private final String y;

    GameEntity(int i1, String s1, String s2, String s3, String s4, String s5, String s6, 
            Uri uri, Uri uri1, Uri uri2, boolean flag, boolean flag1, String s7, int j1, 
            int k1, int l1, boolean flag2, boolean flag3, String s8, String s9, String s10, 
            boolean flag4, boolean flag5, boolean flag6, String s11)
    {
        a = i1;
        b = s1;
        c = s2;
        d = s3;
        e = s4;
        f = s5;
        g = s6;
        h = uri;
        s = s8;
        i = uri1;
        t = s9;
        j = uri2;
        u = s10;
        k = flag;
        l = flag1;
        m = s7;
        n = j1;
        o = k1;
        p = l1;
        q = flag2;
        r = flag3;
        v = flag4;
        w = flag5;
        x = flag6;
        y = s11;
    }

    public GameEntity(Game game)
    {
        a = 5;
        b = game.a_();
        d = game.d();
        e = game.e();
        f = game.f();
        g = game.g();
        c = game.c();
        h = game.h();
        s = game.i();
        i = game.j();
        t = game.k();
        j = game.l();
        u = game.m();
        k = game.n();
        l = game.q();
        m = game.r();
        n = game.s();
        o = game.t();
        p = game.u();
        q = game.v();
        r = game.w();
        v = game.o();
        w = game.p();
        x = game.x();
        y = game.y();
    }

    static Integer A()
    {
        return B();
    }

    static int a(Game game)
    {
        Object aobj[] = new Object[21];
        aobj[0] = game.a_();
        aobj[1] = game.c();
        aobj[2] = game.d();
        aobj[3] = game.e();
        aobj[4] = game.f();
        aobj[5] = game.g();
        aobj[6] = game.h();
        aobj[7] = game.j();
        aobj[8] = game.l();
        aobj[9] = Boolean.valueOf(game.n());
        aobj[10] = Boolean.valueOf(game.q());
        aobj[11] = game.r();
        aobj[12] = Integer.valueOf(game.s());
        aobj[13] = Integer.valueOf(game.t());
        aobj[14] = Integer.valueOf(game.u());
        aobj[15] = Boolean.valueOf(game.v());
        aobj[16] = Boolean.valueOf(game.w());
        aobj[17] = Boolean.valueOf(game.o());
        aobj[18] = Boolean.valueOf(game.p());
        aobj[19] = Boolean.valueOf(game.x());
        aobj[20] = game.y();
        return Arrays.hashCode(aobj);
    }

    static boolean a(Game game, Object obj)
    {
        if (obj instanceof Game)
        {
            if (game == obj)
            {
                return true;
            }
            Game game1 = (Game)obj;
            if (pt.a(game1.a_(), game.a_()) && pt.a(game1.c(), game.c()) && pt.a(game1.d(), game.d()) && pt.a(game1.e(), game.e()) && pt.a(game1.f(), game.f()) && pt.a(game1.g(), game.g()) && pt.a(game1.h(), game.h()) && pt.a(game1.j(), game.j()) && pt.a(game1.l(), game.l()) && pt.a(Boolean.valueOf(game1.n()), Boolean.valueOf(game.n())) && pt.a(Boolean.valueOf(game1.q()), Boolean.valueOf(game.q())) && pt.a(game1.r(), game.r()) && pt.a(Integer.valueOf(game1.s()), Integer.valueOf(game.s())) && pt.a(Integer.valueOf(game1.t()), Integer.valueOf(game.t())) && pt.a(Integer.valueOf(game1.u()), Integer.valueOf(game.u())) && pt.a(Boolean.valueOf(game1.v()), Boolean.valueOf(game.v())))
            {
                Boolean boolean1 = Boolean.valueOf(game1.w());
                boolean flag;
                if (game.w() && pt.a(Boolean.valueOf(game1.o()), Boolean.valueOf(game.o())) && pt.a(Boolean.valueOf(game1.p()), Boolean.valueOf(game.p())))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (pt.a(boolean1, Boolean.valueOf(flag)) && pt.a(Boolean.valueOf(game1.x()), Boolean.valueOf(game.x())) && pt.a(game1.y(), game.y()))
                {
                    return true;
                }
            }
        }
        return false;
    }

    static boolean a(Integer integer)
    {
        return b(integer);
    }

    static boolean a(String s1)
    {
        return b(s1);
    }

    static String b(Game game)
    {
        return pt.a(game).a("ApplicationId", game.a_()).a("DisplayName", game.c()).a("PrimaryCategory", game.d()).a("SecondaryCategory", game.e()).a("Description", game.f()).a("DeveloperName", game.g()).a("IconImageUri", game.h()).a("IconImageUrl", game.i()).a("HiResImageUri", game.j()).a("HiResImageUrl", game.k()).a("FeaturedImageUri", game.l()).a("FeaturedImageUrl", game.m()).a("PlayEnabledGame", Boolean.valueOf(game.n())).a("InstanceInstalled", Boolean.valueOf(game.q())).a("InstancePackageName", game.r()).a("AchievementTotalCount", Integer.valueOf(game.t())).a("LeaderboardCount", Integer.valueOf(game.u())).a("RealTimeMultiplayerEnabled", Boolean.valueOf(game.v())).a("TurnBasedMultiplayerEnabled", Boolean.valueOf(game.w())).a("AreSnapshotsEnabled", Boolean.valueOf(game.x())).a("ThemeColor", game.y()).toString();
    }

    public final volatile Object a()
    {
        return this;
    }

    public final String a_()
    {
        return b;
    }

    public final String c()
    {
        return c;
    }

    public final String d()
    {
        return d;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String e()
    {
        return e;
    }

    public final boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public final String f()
    {
        return f;
    }

    public final String g()
    {
        return g;
    }

    public final Uri h()
    {
        return h;
    }

    public final int hashCode()
    {
        return a(this);
    }

    public final String i()
    {
        return s;
    }

    public final Uri j()
    {
        return i;
    }

    public final String k()
    {
        return t;
    }

    public final Uri l()
    {
        return j;
    }

    public final String m()
    {
        return u;
    }

    public final boolean n()
    {
        return k;
    }

    public final boolean o()
    {
        return v;
    }

    public final boolean p()
    {
        return w;
    }

    public final boolean q()
    {
        return l;
    }

    public final String r()
    {
        return m;
    }

    public final int s()
    {
        return n;
    }

    public final int t()
    {
        return o;
    }

    public final String toString()
    {
        return b(this);
    }

    public final int u()
    {
        return p;
    }

    public final boolean v()
    {
        return q;
    }

    public final boolean w()
    {
        return r;
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        int j1 = 1;
        if (!C())
        {
            com.google.android.gms.games.b.a(this, parcel, i1);
            return;
        }
        parcel.writeString(b);
        parcel.writeString(c);
        parcel.writeString(d);
        parcel.writeString(e);
        parcel.writeString(f);
        parcel.writeString(g);
        String s1;
        String s2;
        Uri uri;
        String s3;
        int k1;
        if (h == null)
        {
            s1 = null;
        } else
        {
            s1 = h.toString();
        }
        parcel.writeString(s1);
        if (i == null)
        {
            s2 = null;
        } else
        {
            s2 = i.toString();
        }
        parcel.writeString(s2);
        uri = j;
        s3 = null;
        if (uri != null)
        {
            s3 = j.toString();
        }
        parcel.writeString(s3);
        if (k)
        {
            k1 = j1;
        } else
        {
            k1 = 0;
        }
        parcel.writeInt(k1);
        if (!l)
        {
            j1 = 0;
        }
        parcel.writeInt(j1);
        parcel.writeString(m);
        parcel.writeInt(n);
        parcel.writeInt(o);
        parcel.writeInt(p);
    }

    public final boolean x()
    {
        return x;
    }

    public final String y()
    {
        return y;
    }

    public final int z()
    {
        return a;
    }

}
