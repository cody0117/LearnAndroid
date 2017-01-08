// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.achievement;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games.achievement:
//            Achievement, a

public final class AchievementEntity
    implements SafeParcelable, Achievement
{

    public static final a CREATOR = new a();
    private final int a;
    private final String b;
    private final int c;
    private final String d;
    private final String e;
    private final Uri f;
    private final String g;
    private final Uri h;
    private final String i;
    private final int j;
    private final String k;
    private final PlayerEntity l;
    private final int m;
    private final int n;
    private final String o;
    private final long p;
    private final long q;

    AchievementEntity(int i1, String s, int j1, String s1, String s2, Uri uri, String s3, 
            Uri uri1, String s4, int k1, String s5, PlayerEntity playerentity, int l1, int i2, 
            String s6, long l2, long l3)
    {
        a = i1;
        b = s;
        c = j1;
        d = s1;
        e = s2;
        f = uri;
        g = s3;
        h = uri1;
        i = s4;
        j = k1;
        k = s5;
        l = playerentity;
        m = l1;
        n = i2;
        o = s6;
        p = l2;
        q = l3;
    }

    public AchievementEntity(Achievement achievement)
    {
        a = 1;
        b = achievement.c_();
        c = achievement.c();
        d = achievement.d();
        e = achievement.e();
        f = achievement.f();
        g = achievement.g();
        h = achievement.h();
        i = achievement.i();
        l = (PlayerEntity)achievement.l().a();
        m = achievement.m();
        p = achievement.p();
        q = achievement.q();
        if (achievement.c() == 1)
        {
            j = achievement.j();
            k = achievement.k();
            n = achievement.n();
            o = achievement.o();
        } else
        {
            j = 0;
            k = null;
            n = 0;
            o = null;
        }
        oo.a(b);
        oo.a(e);
    }

    static String a(Achievement achievement)
    {
        pu pu1 = pt.a(achievement).a("Id", achievement.c_()).a("Type", Integer.valueOf(achievement.c())).a("Name", achievement.d()).a("Description", achievement.e()).a("Player", achievement.l()).a("State", Integer.valueOf(achievement.m()));
        if (achievement.c() == 1)
        {
            pu1.a("CurrentSteps", Integer.valueOf(achievement.n()));
            pu1.a("TotalSteps", Integer.valueOf(achievement.j()));
        }
        return pu1.toString();
    }

    public final volatile Object a()
    {
        return this;
    }

    public final int c()
    {
        return c;
    }

    public final String c_()
    {
        return b;
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
        if (!(obj instanceof Achievement)) goto _L2; else goto _L1
_L1:
        if (this != obj) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        Achievement achievement = (Achievement)obj;
        boolean flag;
        boolean flag1;
        if (c() == 1)
        {
            flag1 = pt.a(Integer.valueOf(achievement.n()), Integer.valueOf(n()));
            flag = pt.a(Integer.valueOf(achievement.j()), Integer.valueOf(j()));
        } else
        {
            flag = true;
            flag1 = true;
        }
        if (pt.a(achievement.c_(), c_()) && pt.a(achievement.d(), d()) && pt.a(Integer.valueOf(achievement.c()), Integer.valueOf(c())) && pt.a(achievement.e(), e()) && pt.a(Long.valueOf(achievement.q()), Long.valueOf(q())) && pt.a(Integer.valueOf(achievement.m()), Integer.valueOf(m())) && pt.a(Long.valueOf(achievement.p()), Long.valueOf(p())) && pt.a(achievement.l(), l()) && flag1 && flag) goto _L3; else goto _L2
_L2:
        return false;
    }

    public final Uri f()
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
        int i1;
        int j1;
        Object aobj[];
        if (c() == 1)
        {
            j1 = n();
            i1 = j();
        } else
        {
            i1 = 0;
            j1 = 0;
        }
        aobj = new Object[10];
        aobj[0] = c_();
        aobj[1] = d();
        aobj[2] = Integer.valueOf(c());
        aobj[3] = e();
        aobj[4] = Long.valueOf(q());
        aobj[5] = Integer.valueOf(m());
        aobj[6] = Long.valueOf(p());
        aobj[7] = l();
        aobj[8] = Integer.valueOf(j1);
        aobj[9] = Integer.valueOf(i1);
        return Arrays.hashCode(aobj);
    }

    public final String i()
    {
        return i;
    }

    public final int j()
    {
        return j;
    }

    public final String k()
    {
        return k;
    }

    public final Player l()
    {
        return l;
    }

    public final int m()
    {
        return m;
    }

    public final int n()
    {
        return n;
    }

    public final String o()
    {
        return o;
    }

    public final long p()
    {
        return p;
    }

    public final long q()
    {
        return q;
    }

    public final int r()
    {
        return a;
    }

    public final String toString()
    {
        return a(this);
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        com.google.android.gms.games.achievement.a.a(this, parcel, i1);
    }

}
