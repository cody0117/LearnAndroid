// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;

// Referenced classes of package com.google.android.gms.games.snapshot:
//            SnapshotContents, a

public final class SnapshotContentsEntity
    implements SafeParcelable, SnapshotContents
{

    public static final a CREATOR = new a();
    private static final Object a = new Object();
    private final int b;
    private Contents c;

    SnapshotContentsEntity(int i, Contents contents)
    {
        b = i;
        c = contents;
    }

    public final int a()
    {
        return b;
    }

    public final Contents b()
    {
        return c;
    }

    public final boolean c()
    {
        return c == null;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.games.snapshot.a.a(this, parcel, i);
    }

}
