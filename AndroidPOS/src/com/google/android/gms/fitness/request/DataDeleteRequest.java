// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.request:
//            k

public class DataDeleteRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new k();
    private final int a;
    private final long b;
    private final long c;
    private final List d;
    private final List e;
    private final List f;
    private final boolean g;
    private final boolean h;

    DataDeleteRequest(int i, long l, long l1, List list, List list1, 
            List list2, boolean flag, boolean flag1)
    {
        a = i;
        b = l;
        c = l1;
        d = Collections.unmodifiableList(list);
        e = Collections.unmodifiableList(list1);
        f = list2;
        g = flag;
        h = flag1;
    }

    public final List a()
    {
        return d;
    }

    public final List b()
    {
        return e;
    }

    public final List c()
    {
        return f;
    }

    final int d()
    {
        return a;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean e()
    {
        return g;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (obj != this)
            {
                boolean flag1 = obj instanceof DataDeleteRequest;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                DataDeleteRequest datadeleterequest = (DataDeleteRequest)obj;
                boolean flag2;
                if (b == datadeleterequest.b && c == datadeleterequest.c && pt.a(d, datadeleterequest.d) && pt.a(e, datadeleterequest.e) && pt.a(f, datadeleterequest.f) && g == datadeleterequest.g && h == datadeleterequest.h)
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                flag = false;
                if (!flag2)
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    public final boolean f()
    {
        return h;
    }

    public final long g()
    {
        return c;
    }

    public final long h()
    {
        return b;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[2];
        aobj[0] = Long.valueOf(b);
        aobj[1] = Long.valueOf(c);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("startTimeMillis", Long.valueOf(b)).a("endTimeMillis", Long.valueOf(c)).a("dataSources", d).a("dateTypes", e).a("sessions", f).a("deleteAllData", Boolean.valueOf(g)).a("deleteAllSessions", Boolean.valueOf(h)).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        k.a(this, parcel);
    }

}
