// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games.snapshot:
//            Snapshot, b, SnapshotMetadataEntity, SnapshotContentsEntity, 
//            SnapshotMetadata, SnapshotContents

public final class SnapshotEntity
    implements SafeParcelable, Snapshot
{

    public static final b CREATOR = new b();
    private final int a;
    private final SnapshotMetadataEntity b;
    private final SnapshotContentsEntity c;

    SnapshotEntity(int i, SnapshotMetadata snapshotmetadata, SnapshotContentsEntity snapshotcontentsentity)
    {
        a = i;
        b = new SnapshotMetadataEntity(snapshotmetadata);
        c = snapshotcontentsentity;
    }

    public final volatile Object a()
    {
        return this;
    }

    public final SnapshotMetadata b()
    {
        return b;
    }

    public final SnapshotContents c()
    {
        if (c.c())
        {
            return null;
        } else
        {
            return c;
        }
    }

    public final int d()
    {
        return a;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (!(obj instanceof Snapshot)) goto _L2; else goto _L1
_L1:
        if (this != obj) goto _L4; else goto _L3
_L3:
        Snapshot snapshot;
        return true;
_L4:
        if (pt.a((snapshot = (Snapshot)obj).b(), b()) && pt.a(snapshot.c(), c())) goto _L3; else goto _L2
_L2:
        return false;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[2];
        aobj[0] = b();
        aobj[1] = c();
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        pu pu1 = pt.a(this).a("Metadata", b());
        boolean flag;
        if (c() != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return pu1.a("HasContents", Boolean.valueOf(flag)).toString();
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.games.snapshot.b.a(this, parcel, i);
    }

}
