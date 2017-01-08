// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.px;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games:
//            f, PlayerLevel

public final class PlayerLevelInfo
    implements SafeParcelable
{

    public static final f CREATOR = new f();
    private final int a;
    private final long b;
    private final long c;
    private final PlayerLevel d;
    private final PlayerLevel e;

    PlayerLevelInfo(int i, long l, long l1, PlayerLevel playerlevel, PlayerLevel playerlevel1)
    {
        boolean flag;
        if (l != -1L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        px.a(flag);
        px.a(playerlevel);
        px.a(playerlevel1);
        a = i;
        b = l;
        c = l1;
        d = playerlevel;
        e = playerlevel1;
    }

    public PlayerLevelInfo(long l, long l1, PlayerLevel playerlevel, PlayerLevel playerlevel1)
    {
        this(1, l, l1, playerlevel, playerlevel1);
    }

    public final int a()
    {
        return a;
    }

    public final long b()
    {
        return b;
    }

    public final long c()
    {
        return c;
    }

    public final PlayerLevel d()
    {
        return d;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final PlayerLevel e()
    {
        return e;
    }

    public final boolean equals(Object obj)
    {
        if (obj instanceof PlayerLevelInfo)
        {
            if (obj == this)
            {
                return true;
            }
            PlayerLevelInfo playerlevelinfo = (PlayerLevelInfo)obj;
            if (pt.a(Long.valueOf(b), Long.valueOf(playerlevelinfo.b)) && pt.a(Long.valueOf(c), Long.valueOf(playerlevelinfo.c)) && pt.a(d, playerlevelinfo.d) && pt.a(e, playerlevelinfo.e))
            {
                return true;
            }
        }
        return false;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[4];
        aobj[0] = Long.valueOf(b);
        aobj[1] = Long.valueOf(c);
        aobj[2] = d;
        aobj[3] = e;
        return Arrays.hashCode(aobj);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        f.a(this, parcel, i);
    }

}
