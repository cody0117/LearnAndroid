// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.request:
//            p

public class DataSourcesRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new p();
    private final int a;
    private final List b;
    private final List c;
    private final boolean d;

    DataSourcesRequest(int i, List list, List list1, boolean flag)
    {
        a = i;
        b = list;
        c = list1;
        d = flag;
    }

    public final List a()
    {
        return Collections.unmodifiableList(b);
    }

    public final boolean b()
    {
        return d;
    }

    final int c()
    {
        return a;
    }

    final List d()
    {
        return c;
    }

    public int describeContents()
    {
        return 0;
    }

    public final String toString()
    {
        pu pu1 = pt.a(this).a("dataTypes", b).a("sourceTypes", c);
        if (d)
        {
            pu1.a("includeDbOnlySources", "true");
        }
        return pu1.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        p.a(this, parcel);
    }

}
