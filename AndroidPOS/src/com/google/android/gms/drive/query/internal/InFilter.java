// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.drive.metadata.g;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.Collection;
import java.util.Iterator;

// Referenced classes of package com.google.android.gms.drive.query.internal:
//            AbstractFilter, h, e, f

public class InFilter extends AbstractFilter
{

    public static final h CREATOR = new h();
    final MetadataBundle a;
    final int b;
    private final g c;

    InFilter(int i, MetadataBundle metadatabundle)
    {
        b = i;
        a = metadatabundle;
        c = (g)e.a(metadatabundle);
    }

    public final Object a(f f1)
    {
        return f1.a(c, ((Collection)a.a(c)).iterator().next());
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        h.a(this, parcel, i);
    }

}
