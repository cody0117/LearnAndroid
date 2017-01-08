// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.drive.metadata.a;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.query.internal:
//            AbstractFilter, g, e, f

public class HasFilter extends AbstractFilter
{

    public static final g CREATOR = new g();
    final MetadataBundle a;
    final int b;
    final a c;

    HasFilter(int i, MetadataBundle metadatabundle)
    {
        b = i;
        a = metadatabundle;
        c = com.google.android.gms.drive.query.internal.e.a(metadatabundle);
    }

    public final Object a(f f1)
    {
        return f1.a(c, a.a(c));
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.drive.query.internal.g.a(this, parcel, i);
    }

}
