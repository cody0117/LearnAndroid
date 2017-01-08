// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.f;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.Player;

// Referenced classes of package com.google.android.gms.games.snapshot:
//            SnapshotMetadata, SnapshotMetadataEntity

public final class SnapshotMetadataRef extends f
    implements SnapshotMetadata
{

    private final Game c;
    private final Player d;

    private SnapshotMetadata n()
    {
        return new SnapshotMetadataEntity(this);
    }

    public final Object a()
    {
        return n();
    }

    public final Player c()
    {
        return d;
    }

    public final String d()
    {
        return e("external_snapshot_id");
    }

    public final int describeContents()
    {
        return 0;
    }

    public final Uri e()
    {
        return h("cover_icon_image_uri");
    }

    public final boolean equals(Object obj)
    {
        return SnapshotMetadataEntity.a(this, obj);
    }

    public final String f()
    {
        return e("cover_icon_image_url");
    }

    public final float g()
    {
        float f1 = f("cover_icon_image_height");
        float f2 = f("cover_icon_image_width");
        if (f1 == 0.0F)
        {
            return 0.0F;
        } else
        {
            return f2 / f1;
        }
    }

    public final String h()
    {
        return e("unique_name");
    }

    public final int hashCode()
    {
        return SnapshotMetadataEntity.a(this);
    }

    public final String i()
    {
        return e("title");
    }

    public final String j()
    {
        return e("description");
    }

    public final long k()
    {
        return b("last_modified_timestamp");
    }

    public final long l()
    {
        return b("duration");
    }

    public final boolean m()
    {
        return c("pending_change_count") > 0;
    }

    public final Game s_()
    {
        return c;
    }

    public final String toString()
    {
        return SnapshotMetadataEntity.b(this);
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        ((SnapshotMetadataEntity)n()).writeToParcel(parcel, i1);
    }
}
