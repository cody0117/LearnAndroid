// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;

// Referenced classes of package com.google.android.gms.games:
//            Game, GameEntity

public final class GameRef extends f
    implements Game
{

    public GameRef(DataHolder dataholder, int i1)
    {
        super(dataholder, i1);
    }

    private Game z()
    {
        return new GameEntity(this);
    }

    public final Object a()
    {
        return z();
    }

    public final String a_()
    {
        return e("external_game_id");
    }

    public final String c()
    {
        return e("display_name");
    }

    public final String d()
    {
        return e("primary_category");
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String e()
    {
        return e("secondary_category");
    }

    public final boolean equals(Object obj)
    {
        return GameEntity.a(this, obj);
    }

    public final String f()
    {
        return e("game_description");
    }

    public final String g()
    {
        return e("developer_name");
    }

    public final Uri h()
    {
        return h("game_icon_image_uri");
    }

    public final int hashCode()
    {
        return GameEntity.a(this);
    }

    public final String i()
    {
        return e("game_icon_image_url");
    }

    public final Uri j()
    {
        return h("game_hi_res_image_uri");
    }

    public final String k()
    {
        return e("game_hi_res_image_url");
    }

    public final Uri l()
    {
        return h("featured_image_uri");
    }

    public final String m()
    {
        return e("featured_image_url");
    }

    public final boolean n()
    {
        return d("play_enabled_game");
    }

    public final boolean o()
    {
        return d("muted");
    }

    public final boolean p()
    {
        return d("identity_sharing_confirmed");
    }

    public final boolean q()
    {
        return c("installed") > 0;
    }

    public final String r()
    {
        return e("package_name");
    }

    public final int s()
    {
        return c("gameplay_acl_status");
    }

    public final int t()
    {
        return c("achievement_total_count");
    }

    public final String toString()
    {
        return GameEntity.b(this);
    }

    public final int u()
    {
        return c("leaderboard_count");
    }

    public final boolean v()
    {
        return c("real_time_support") > 0;
    }

    public final boolean w()
    {
        return c("turn_based_support") > 0;
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        ((GameEntity)z()).writeToParcel(parcel, i1);
    }

    public final boolean x()
    {
        return c("snapshots_enabled") > 0;
    }

    public final String y()
    {
        return e("theme_color");
    }
}
