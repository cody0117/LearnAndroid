// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.px;

// Referenced classes of package com.google.android.gms.games.snapshot:
//            c, d

public final class SnapshotMetadataChangeEntity extends c
    implements SafeParcelable
{

    public static final d CREATOR = new d();
    private final int b;
    private final String c;
    private final Long d;
    private final Uri e;
    private a f;

    SnapshotMetadataChangeEntity()
    {
        this(4, null, null, null, null);
    }

    SnapshotMetadataChangeEntity(int i, String s, Long long1, a a1, Uri uri)
    {
        boolean flag = true;
        super();
        b = i;
        c = s;
        d = long1;
        f = a1;
        e = uri;
        if (f != null)
        {
            if (e != null)
            {
                flag = false;
            }
            px.a(flag, "Cannot set both a URI and an image");
        } else
        if (e != null)
        {
            if (f != null)
            {
                flag = false;
            }
            px.a(flag, "Cannot set both a URI and an image");
            return;
        }
    }

    public final int a()
    {
        return b;
    }

    public final String b()
    {
        return c;
    }

    public final Long c()
    {
        return d;
    }

    public final a d()
    {
        return f;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final Uri e()
    {
        return e;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.games.snapshot.d.a(this, parcel, i);
    }

}
