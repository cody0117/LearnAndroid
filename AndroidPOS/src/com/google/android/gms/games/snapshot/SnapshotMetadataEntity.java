// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games.snapshot:
//            SnapshotMetadata, e

public final class SnapshotMetadataEntity
    implements SafeParcelable, SnapshotMetadata
{

    public static final e CREATOR = new e();
    private final int a;
    private final GameEntity b;
    private final PlayerEntity c;
    private final String d;
    private final Uri e;
    private final String f;
    private final String g;
    private final String h;
    private final long i;
    private final long j;
    private final float k;
    private final String l;
    private final boolean m;

    SnapshotMetadataEntity(int i1, GameEntity gameentity, PlayerEntity playerentity, String s, Uri uri, String s1, String s2, 
            String s3, long l1, long l2, float f1, String s4, 
            boolean flag)
    {
        a = i1;
        b = gameentity;
        c = playerentity;
        d = s;
        e = uri;
        f = s1;
        k = f1;
        g = s2;
        h = s3;
        i = l1;
        j = l2;
        l = s4;
        m = flag;
    }

    public SnapshotMetadataEntity(SnapshotMetadata snapshotmetadata)
    {
        a = 4;
        b = new GameEntity(snapshotmetadata.s_());
        c = new PlayerEntity(snapshotmetadata.c());
        d = snapshotmetadata.d();
        e = snapshotmetadata.e();
        f = snapshotmetadata.f();
        k = snapshotmetadata.g();
        g = snapshotmetadata.i();
        h = snapshotmetadata.j();
        i = snapshotmetadata.k();
        j = snapshotmetadata.l();
        l = snapshotmetadata.h();
        m = snapshotmetadata.m();
    }

    static int a(SnapshotMetadata snapshotmetadata)
    {
        Object aobj[] = new Object[11];
        aobj[0] = snapshotmetadata.s_();
        aobj[1] = snapshotmetadata.c();
        aobj[2] = snapshotmetadata.d();
        aobj[3] = snapshotmetadata.e();
        aobj[4] = Float.valueOf(snapshotmetadata.g());
        aobj[5] = snapshotmetadata.i();
        aobj[6] = snapshotmetadata.j();
        aobj[7] = Long.valueOf(snapshotmetadata.k());
        aobj[8] = Long.valueOf(snapshotmetadata.l());
        aobj[9] = snapshotmetadata.h();
        aobj[10] = Boolean.valueOf(snapshotmetadata.m());
        return Arrays.hashCode(aobj);
    }

    static boolean a(SnapshotMetadata snapshotmetadata, Object obj)
    {
        if (obj instanceof SnapshotMetadata)
        {
            if (snapshotmetadata == obj)
            {
                return true;
            }
            SnapshotMetadata snapshotmetadata1 = (SnapshotMetadata)obj;
            if (pt.a(snapshotmetadata1.s_(), snapshotmetadata.s_()) && pt.a(snapshotmetadata1.c(), snapshotmetadata.c()) && pt.a(snapshotmetadata1.d(), snapshotmetadata.d()) && pt.a(snapshotmetadata1.e(), snapshotmetadata.e()) && pt.a(Float.valueOf(snapshotmetadata1.g()), Float.valueOf(snapshotmetadata.g())) && pt.a(snapshotmetadata1.i(), snapshotmetadata.i()) && pt.a(snapshotmetadata1.j(), snapshotmetadata.j()) && pt.a(Long.valueOf(snapshotmetadata1.k()), Long.valueOf(snapshotmetadata.k())) && pt.a(Long.valueOf(snapshotmetadata1.l()), Long.valueOf(snapshotmetadata.l())) && pt.a(snapshotmetadata1.h(), snapshotmetadata.h()) && pt.a(Boolean.valueOf(snapshotmetadata1.m()), Boolean.valueOf(snapshotmetadata.m())))
            {
                return true;
            }
        }
        return false;
    }

    static String b(SnapshotMetadata snapshotmetadata)
    {
        return pt.a(snapshotmetadata).a("Game", snapshotmetadata.s_()).a("Owner", snapshotmetadata.c()).a("SnapshotId", snapshotmetadata.d()).a("CoverImageUri", snapshotmetadata.e()).a("CoverImageUrl", snapshotmetadata.f()).a("CoverImageAspectRatio", Float.valueOf(snapshotmetadata.g())).a("Description", snapshotmetadata.j()).a("LastModifiedTimestamp", Long.valueOf(snapshotmetadata.k())).a("PlayedTime", Long.valueOf(snapshotmetadata.l())).a("UniqueName", snapshotmetadata.h()).a("ChangePending", Boolean.valueOf(snapshotmetadata.m())).toString();
    }

    public final volatile Object a()
    {
        return this;
    }

    public final Player c()
    {
        return c;
    }

    public final String d()
    {
        return d;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final Uri e()
    {
        return e;
    }

    public final boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public final String f()
    {
        return f;
    }

    public final float g()
    {
        return k;
    }

    public final String h()
    {
        return l;
    }

    public final int hashCode()
    {
        return a(this);
    }

    public final String i()
    {
        return g;
    }

    public final String j()
    {
        return h;
    }

    public final long k()
    {
        return i;
    }

    public final long l()
    {
        return j;
    }

    public final boolean m()
    {
        return m;
    }

    public final int n()
    {
        return a;
    }

    public final Game s_()
    {
        return b;
    }

    public final String toString()
    {
        return b(this);
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        com.google.android.gms.games.snapshot.e.a(this, parcel, i1);
    }

}
