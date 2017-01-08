// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;

// Referenced classes of package com.google.android.gms.games.internal.player:
//            MostRecentGameInfo, MostRecentGameInfoEntity, b

public final class MostRecentGameInfoRef extends f
    implements MostRecentGameInfo
{

    private final b c;

    public MostRecentGameInfoRef(DataHolder dataholder, int i, b b1)
    {
        super(dataholder, i);
        c = b1;
    }

    private MostRecentGameInfo h()
    {
        return new MostRecentGameInfoEntity(this);
    }

    public final Object a()
    {
        return h();
    }

    public final String c()
    {
        return e(c.u);
    }

    public final long d()
    {
        return b(c.v);
    }

    public final int describeContents()
    {
        return 0;
    }

    public final Uri e()
    {
        return h(c.w);
    }

    public final boolean equals(Object obj)
    {
        return MostRecentGameInfoEntity.a(this, obj);
    }

    public final Uri f()
    {
        return h(c.x);
    }

    public final Uri g()
    {
        return h(c.y);
    }

    public final int hashCode()
    {
        return MostRecentGameInfoEntity.a(this);
    }

    public final String m_()
    {
        return e(c.t);
    }

    public final String toString()
    {
        return MostRecentGameInfoEntity.b(this);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        ((MostRecentGameInfoEntity)h()).writeToParcel(parcel, i);
    }
}
