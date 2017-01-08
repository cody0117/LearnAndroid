// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games.internal.game:
//            GameBadge, c, d

public final class GameBadgeEntity extends GamesDowngradeableSafeParcel
    implements GameBadge
{

    public static final d CREATOR = new c();
    private final int a;
    private int b;
    private String c;
    private String d;
    private Uri e;

    GameBadgeEntity(int i, int j, String s, String s1, Uri uri)
    {
        a = i;
        b = j;
        c = s;
        d = s1;
        e = uri;
    }

    public GameBadgeEntity(GameBadge gamebadge)
    {
        a = 1;
        b = gamebadge.l_();
        c = gamebadge.c();
        d = gamebadge.d();
        e = gamebadge.e();
    }

    static int a(GameBadge gamebadge)
    {
        Object aobj[] = new Object[4];
        aobj[0] = Integer.valueOf(gamebadge.l_());
        aobj[1] = gamebadge.c();
        aobj[2] = gamebadge.d();
        aobj[3] = gamebadge.e();
        return Arrays.hashCode(aobj);
    }

    static boolean a(GameBadge gamebadge, Object obj)
    {
        if (obj instanceof GameBadge)
        {
            if (gamebadge == obj)
            {
                return true;
            }
            GameBadge gamebadge1 = (GameBadge)obj;
            if (pt.a(Integer.valueOf(gamebadge1.l_()), gamebadge.c()) && pt.a(gamebadge1.d(), gamebadge.e()))
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

    static String b(GameBadge gamebadge)
    {
        return pt.a(gamebadge).a("Type", Integer.valueOf(gamebadge.l_())).a("Title", gamebadge.c()).a("Description", gamebadge.d()).a("IconImageUri", gamebadge.e()).toString();
    }

    static Integer g()
    {
        return B();
    }

    public final Object a()
    {
        return this;
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

    public final Uri e()
    {
        return e;
    }

    public final boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public final int f()
    {
        return a;
    }

    public final int hashCode()
    {
        return a(this);
    }

    public final int l_()
    {
        return b;
    }

    public final String toString()
    {
        return b(this);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        if (!C())
        {
            com.google.android.gms.games.internal.game.d.a(this, parcel, i);
            return;
        }
        parcel.writeInt(b);
        parcel.writeString(c);
        parcel.writeString(d);
        String s;
        if (e == null)
        {
            s = null;
        } else
        {
            s = e.toString();
        }
        parcel.writeString(s);
    }

}
