// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.drive.metadata.a;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.query.internal:
//            AbstractFilter, b, e, f

public class FieldOnlyFilter extends AbstractFilter
{

    public static final android.os.Parcelable.Creator CREATOR = new b();
    final MetadataBundle a;
    final int b;
    private final a c;

    FieldOnlyFilter(int i, MetadataBundle metadatabundle)
    {
        b = i;
        a = metadatabundle;
        c = com.google.android.gms.drive.query.internal.e.a(metadatabundle);
    }

    public final Object a(f f1)
    {
        return f1.a(c);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.drive.query.internal.b.a(this, parcel, i);
    }

}
