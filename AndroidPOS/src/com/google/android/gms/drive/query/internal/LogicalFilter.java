// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.drive.query.Filter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.drive.query.internal:
//            AbstractFilter, i, FilterHolder, f, 
//            Operator

public class LogicalFilter extends AbstractFilter
{

    public static final android.os.Parcelable.Creator CREATOR = new i();
    final Operator a;
    final List b;
    final int c;

    LogicalFilter(int j, Operator operator, List list)
    {
        c = j;
        a = operator;
        b = list;
    }

    public final Object a(f f1)
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = b.iterator(); iterator.hasNext(); arraylist.add(((FilterHolder)iterator.next()).a().a(f1))) { }
        return f1.a(a, arraylist);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int j)
    {
        i.a(this, parcel, j);
    }

}
