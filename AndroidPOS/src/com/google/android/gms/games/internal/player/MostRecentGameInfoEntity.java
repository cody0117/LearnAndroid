// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games.internal.player:
//            MostRecentGameInfo, a

public final class MostRecentGameInfoEntity
    implements SafeParcelable, MostRecentGameInfo
{

    public static final a CREATOR = new a();
    private final int a;
    private final String b;
    private final String c;
    private final long d;
    private final Uri e;
    private final Uri f;
    private final Uri g;

    MostRecentGameInfoEntity(int i, String s, String s1, long l, Uri uri, Uri uri1, 
            Uri uri2)
    {
        a = i;
        b = s;
        c = s1;
        d = l;
        e = uri;
        f = uri1;
        g = uri2;
    }

    public MostRecentGameInfoEntity(MostRecentGameInfo mostrecentgameinfo)
    {
        a = 2;
        b = mostrecentgameinfo.m_();
        c = mostrecentgameinfo.c();
        d = mostrecentgameinfo.d();
        e = mostrecentgameinfo.e();
        f = mostrecentgameinfo.f();
        g = mostrecentgameinfo.g();
    }

    static int a(MostRecentGameInfo mostrecentgameinfo)
    {
        Object aobj[] = new Object[6];
        aobj[0] = mostrecentgameinfo.m_();
        aobj[1] = mostrecentgameinfo.c();
        aobj[2] = Long.valueOf(mostrecentgameinfo.d());
        aobj[3] = mostrecentgameinfo.e();
        aobj[4] = mostrecentgameinfo.f();
        aobj[5] = mostrecentgameinfo.g();
        return Arrays.hashCode(aobj);
    }

    static boolean a(MostRecentGameInfo mostrecentgameinfo, Object obj)
    {
        if (obj instanceof MostRecentGameInfo)
        {
            if (mostrecentgameinfo == obj)
            {
                return true;
            }
            MostRecentGameInfo mostrecentgameinfo1 = (MostRecentGameInfo)obj;
            if (pt.a(mostrecentgameinfo1.m_(), mostrecentgameinfo.m_()) && pt.a(mostrecentgameinfo1.c(), mostrecentgameinfo.c()) && pt.a(Long.valueOf(mostrecentgameinfo1.d()), Long.valueOf(mostrecentgameinfo.d())) && pt.a(mostrecentgameinfo1.e(), mostrecentgameinfo.e()) && pt.a(mostrecentgameinfo1.f(), mostrecentgameinfo.f()) && pt.a(mostrecentgameinfo1.g(), mostrecentgameinfo.g()))
            {
                return true;
            }
        }
        return false;
    }

    static String b(MostRecentGameInfo mostrecentgameinfo)
    {
        return pt.a(mostrecentgameinfo).a("GameId", mostrecentgameinfo.m_()).a("GameName", mostrecentgameinfo.c()).a("ActivityTimestampMillis", Long.valueOf(mostrecentgameinfo.d())).a("GameIconUri", mostrecentgameinfo.e()).a("GameHiResUri", mostrecentgameinfo.f()).a("GameFeaturedUri", mostrecentgameinfo.g()).toString();
    }

    public final Object a()
    {
        return this;
    }

    public final String c()
    {
        return c;
    }

    public final long d()
    {
        return d;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final Uri e()
    {
        return e;
    }

    public final boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public final Uri f()
    {
        return f;
    }

    public final Uri g()
    {
        return g;
    }

    public final int h()
    {
        return a;
    }

    public final int hashCode()
    {
        return a(this);
    }

    public final String m_()
    {
        return b;
    }

    public final String toString()
    {
        return b(this);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.games.internal.player.a.a(this, parcel, i);
    }

}
