// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import com.google.android.gms.internal.px;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games:
//            e

public final class PlayerLevel
    implements SafeParcelable
{

    public static final e CREATOR = new e();
    private final int a;
    private final int b;
    private final long c;
    private final long d;

    PlayerLevel(int i, int j, long l, long l1)
    {
        boolean flag = true;
        super();
        boolean flag1;
        if (l >= 0L)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        px.a(flag1, "Min XP must be positive!");
        if (l1 <= l)
        {
            flag = false;
        }
        px.a(flag, "Max XP must be more than min XP!");
        a = i;
        b = j;
        c = l;
        d = l1;
    }

    public PlayerLevel(int i, long l, long l1)
    {
        this(1, i, l, l1);
    }

    public final int a()
    {
        return a;
    }

    public final int b()
    {
        return b;
    }

    public final long c()
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

    public final boolean equals(Object obj)
    {
        if (obj instanceof PlayerLevel)
        {
            if (this == obj)
            {
                return true;
            }
            PlayerLevel playerlevel = (PlayerLevel)obj;
            if (pt.a(Integer.valueOf(playerlevel.b), Integer.valueOf(b)) && pt.a(Long.valueOf(playerlevel.c), Long.valueOf(c)) && pt.a(Long.valueOf(playerlevel.d), Long.valueOf(d)))
            {
                return true;
            }
        }
        return false;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(b);
        aobj[1] = Long.valueOf(c);
        aobj[2] = Long.valueOf(d);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("LevelNumber", Integer.valueOf(b)).a("MinXp", Long.valueOf(c)).a("MaxXp", Long.valueOf(d)).toString();
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        e.a(this, parcel);
    }

}
