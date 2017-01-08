// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.internal.LogicalFilter;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.drive.query:
//            a, SortOrder

public class Query
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new a();
    final LogicalFilter a;
    final String b;
    final SortOrder c;
    final List d;
    final int e;

    Query(int i, LogicalFilter logicalfilter, String s, SortOrder sortorder, List list)
    {
        e = i;
        a = logicalfilter;
        b = s;
        c = sortorder;
        d = list;
    }

    public int describeContents()
    {
        return 0;
    }

    public final String toString()
    {
        Locale locale = Locale.US;
        Object aobj[] = new Object[3];
        aobj[0] = a;
        aobj[1] = c;
        aobj[2] = b;
        return String.format(locale, "Query[%s,%s,PageToken=%s]", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.drive.query.a.a(this, parcel, i);
    }

}
