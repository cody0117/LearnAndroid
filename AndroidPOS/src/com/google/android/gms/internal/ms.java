// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;

// Referenced classes of package com.google.android.gms.internal:
//            rv

public class ms
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new rv();
    private final int a;
    private final DataSource b;

    ms(int i, DataSource datasource)
    {
        a = i;
        b = datasource;
    }

    public final DataSource a()
    {
        return b;
    }

    final int b()
    {
        return a;
    }

    public int describeContents()
    {
        return 0;
    }

    public final String toString()
    {
        Object aobj[] = new Object[1];
        aobj[0] = b;
        return String.format("ApplicationUnregistrationRequest{%s}", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        rv.a(this, parcel, i);
    }

}
