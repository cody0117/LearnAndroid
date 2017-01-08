// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.Bucket;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.pt;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.request:
//            n

public class DataReadRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new n();
    private final int a;
    private final List b;
    private final List c;
    private final long d;
    private final long e;
    private final List f;
    private final List g;
    private final int h;
    private final long i;
    private final DataSource j;
    private final int k;
    private final boolean l;
    private final boolean m;

    DataReadRequest(int i1, List list, List list1, long l1, long l2, 
            List list2, List list3, int j1, long l3, DataSource datasource, int k1, 
            boolean flag, boolean flag1)
    {
        a = i1;
        b = Collections.unmodifiableList(list);
        c = Collections.unmodifiableList(list1);
        d = l1;
        e = l2;
        f = Collections.unmodifiableList(list2);
        g = Collections.unmodifiableList(list3);
        h = j1;
        i = l3;
        j = datasource;
        k = k1;
        l = flag;
        m = flag1;
    }

    public final List a()
    {
        return b;
    }

    public final List b()
    {
        return c;
    }

    public final List c()
    {
        return f;
    }

    public final List d()
    {
        return g;
    }

    public int describeContents()
    {
        return 0;
    }

    public final int e()
    {
        return h;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (this != obj)
            {
                boolean flag1 = obj instanceof DataReadRequest;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                DataReadRequest datareadrequest = (DataReadRequest)obj;
                boolean flag2;
                if (b.equals(datareadrequest.b) && c.equals(datareadrequest.c) && d == datareadrequest.d && e == datareadrequest.e && h == datareadrequest.h && g.equals(datareadrequest.g) && f.equals(datareadrequest.f) && pt.a(j, datareadrequest.j) && i == datareadrequest.i && m == datareadrequest.m)
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

    public final DataSource f()
    {
        return j;
    }

    public final int g()
    {
        return k;
    }

    public final boolean h()
    {
        return m;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(h);
        aobj[1] = Long.valueOf(d);
        aobj[2] = Long.valueOf(e);
        return Arrays.hashCode(aobj);
    }

    public final boolean i()
    {
        return l;
    }

    final int j()
    {
        return a;
    }

    public final long k()
    {
        return e;
    }

    public final long l()
    {
        return d;
    }

    public final long m()
    {
        return i;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("DataReadRequest{");
        if (!b.isEmpty())
        {
            for (Iterator iterator3 = b.iterator(); iterator3.hasNext(); stringbuilder.append(((DataType)iterator3.next()).c()).append(" ")) { }
        }
        if (!c.isEmpty())
        {
            for (Iterator iterator2 = c.iterator(); iterator2.hasNext(); stringbuilder.append(((DataSource)iterator2.next()).i()).append(" ")) { }
        }
        if (h != 0)
        {
            stringbuilder.append("bucket by ").append(Bucket.a(h));
            if (i > 0L)
            {
                stringbuilder.append(" >").append(i).append("ms");
            }
            stringbuilder.append(": ");
        }
        if (!f.isEmpty())
        {
            for (Iterator iterator1 = f.iterator(); iterator1.hasNext(); stringbuilder.append(((DataType)iterator1.next()).c()).append(" ")) { }
        }
        if (!g.isEmpty())
        {
            for (Iterator iterator = g.iterator(); iterator.hasNext(); stringbuilder.append(((DataSource)iterator.next()).i()).append(" ")) { }
        }
        Object aobj[] = new Object[4];
        aobj[0] = Long.valueOf(d);
        aobj[1] = Long.valueOf(d);
        aobj[2] = Long.valueOf(e);
        aobj[3] = Long.valueOf(e);
        stringbuilder.append(String.format("(%tF %tT - %tF %tT)", aobj));
        if (j != null)
        {
            stringbuilder.append("activities: ").append(j.i());
        }
        if (m)
        {
            stringbuilder.append(" +server");
        }
        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        n.a(this, parcel, i1);
    }

}
