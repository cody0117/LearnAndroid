// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.event;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.f;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;

// Referenced classes of package com.google.android.gms.games.event:
//            Event, EventEntity

public final class EventRef extends f
    implements Event
{

    private Event k()
    {
        return new EventEntity(this);
    }

    public final Object a()
    {
        return k();
    }

    public final String c()
    {
        return e("name");
    }

    public final String d()
    {
        return e("description");
    }

    public final int describeContents()
    {
        return 0;
    }

    public final Uri e()
    {
        return h("icon_image_uri");
    }

    public final boolean equals(Object obj)
    {
        return EventEntity.a(this, obj);
    }

    public final String f()
    {
        return e("icon_image_url");
    }

    public final Player g()
    {
        return new PlayerRef(a, b);
    }

    public final long h()
    {
        return b("value");
    }

    public final int hashCode()
    {
        return EventEntity.a(this);
    }

    public final String i()
    {
        return e("formatted_value");
    }

    public final boolean j()
    {
        return d("visibility");
    }

    public final String j_()
    {
        return e("external_event_id");
    }

    public final String toString()
    {
        return EventEntity.b(this);
    }

    public final void writeToParcel(Parcel parcel, int l)
    {
        ((EventEntity)k()).writeToParcel(parcel, l);
    }
}
