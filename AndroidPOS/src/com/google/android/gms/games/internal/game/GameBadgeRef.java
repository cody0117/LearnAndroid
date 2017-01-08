// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;

// Referenced classes of package com.google.android.gms.games.internal.game:
//            GameBadge, GameBadgeEntity

public final class GameBadgeRef extends f
    implements GameBadge
{

    GameBadgeRef(DataHolder dataholder, int i)
    {
        super(dataholder, i);
    }

    private GameBadge f()
    {
        return new GameBadgeEntity(this);
    }

    public final Object a()
    {
        return f();
    }

    public final String c()
    {
        return e("badge_title");
    }

    public final String d()
    {
        return e("badge_description");
    }

    public final int describeContents()
    {
        return 0;
    }

    public final Uri e()
    {
        return h("badge_icon_image_uri");
    }

    public final boolean equals(Object obj)
    {
        return GameBadgeEntity.a(this, obj);
    }

    public final int hashCode()
    {
        return GameBadgeEntity.a(this);
    }

    public final int l_()
    {
        return c("badge_type");
    }

    public final String toString()
    {
        return GameBadgeEntity.b(this);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        ((GameBadgeEntity)f()).writeToParcel(parcel, i);
    }
}
