// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.achievement;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.f;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
import com.google.android.gms.internal.oo;

// Referenced classes of package com.google.android.gms.games.achievement:
//            Achievement, AchievementEntity

public final class AchievementRef extends f
    implements Achievement
{

    private Achievement r()
    {
        return new AchievementEntity(this);
    }

    public final Object a()
    {
        return r();
    }

    public final int c()
    {
        return c("type");
    }

    public final String c_()
    {
        return e("external_achievement_id");
    }

    public final String d()
    {
        return e("name");
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String e()
    {
        return e("description");
    }

    public final Uri f()
    {
        return h("unlocked_icon_image_uri");
    }

    public final String g()
    {
        return e("unlocked_icon_image_url");
    }

    public final Uri h()
    {
        return h("revealed_icon_image_uri");
    }

    public final String i()
    {
        return e("revealed_icon_image_url");
    }

    public final int j()
    {
        boolean flag = true;
        if (c("type") != flag)
        {
            flag = false;
        }
        oo.a(flag);
        return c("total_steps");
    }

    public final String k()
    {
        boolean flag = true;
        if (c("type") != flag)
        {
            flag = false;
        }
        oo.a(flag);
        return e("formatted_total_steps");
    }

    public final Player l()
    {
        return new PlayerRef(a, b);
    }

    public final int m()
    {
        return c("state");
    }

    public final int n()
    {
        boolean flag = true;
        if (c("type") != flag)
        {
            flag = false;
        }
        oo.a(flag);
        return c("current_steps");
    }

    public final String o()
    {
        boolean flag = true;
        if (c("type") != flag)
        {
            flag = false;
        }
        oo.a(flag);
        return e("formatted_current_steps");
    }

    public final long p()
    {
        return b("last_updated_timestamp");
    }

    public final long q()
    {
        if (!a("instance_xp_value") || i("instance_xp_value"))
        {
            return b("definition_xp_value");
        } else
        {
            return b("instance_xp_value");
        }
    }

    public final String toString()
    {
        return AchievementEntity.a(this);
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        ((AchievementEntity)r()).writeToParcel(parcel, i1);
    }
}
