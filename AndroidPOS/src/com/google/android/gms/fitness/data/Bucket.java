// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.data:
//            e, RawBucket, DataSet, RawDataSet, 
//            Session

public class Bucket
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new e();
    private final int a;
    private final long b;
    private final long c;
    private final Session d;
    private final int e;
    private final List f;
    private final int g;
    private boolean h;

    Bucket(int i, long l, long l1, Session session, int j, 
            List list, int k, boolean flag)
    {
        h = false;
        a = i;
        b = l;
        c = l1;
        d = session;
        e = j;
        f = list;
        g = k;
        h = flag;
    }

    public Bucket(RawBucket rawbucket, List list, List list1)
    {
        this(2, rawbucket.b, rawbucket.c, rawbucket.d, rawbucket.e, a(rawbucket.f, list, list1), rawbucket.g, rawbucket.h);
    }

    public static String a(int i)
    {
        switch (i)
        {
        default:
            return "bug";

        case 1: // '\001'
            return "time";

        case 3: // '\003'
            return "type";

        case 4: // '\004'
            return "segment";

        case 2: // '\002'
            return "session";

        case 0: // '\0'
            return "unknown";
        }
    }

    private static List a(List list, List list1, List list2)
    {
        ArrayList arraylist = new ArrayList(list.size());
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(new DataSet((RawDataSet)iterator.next(), list1, list2))) { }
        return arraylist;
    }

    public final long a(TimeUnit timeunit)
    {
        return timeunit.convert(b, TimeUnit.MILLISECONDS);
    }

    public final Session a()
    {
        return d;
    }

    public final int b()
    {
        return e;
    }

    public final long b(TimeUnit timeunit)
    {
        return timeunit.convert(c, TimeUnit.MILLISECONDS);
    }

    public final List c()
    {
        return f;
    }

    public final int d()
    {
        return g;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean e()
    {
        if (h)
        {
            return true;
        }
        for (Iterator iterator = f.iterator(); iterator.hasNext();)
        {
            if (((DataSet)iterator.next()).c())
            {
                return true;
            }
        }

        return false;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (obj != this)
            {
                boolean flag1 = obj instanceof Bucket;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                Bucket bucket = (Bucket)obj;
                boolean flag2;
                if (b == bucket.b && c == bucket.c && e == bucket.e && pt.a(f, bucket.f) && g == bucket.g && h == bucket.h)
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

    final int f()
    {
        return a;
    }

    public final long g()
    {
        return b;
    }

    public final long h()
    {
        return c;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[4];
        aobj[0] = Long.valueOf(b);
        aobj[1] = Long.valueOf(c);
        aobj[2] = Integer.valueOf(e);
        aobj[3] = Integer.valueOf(g);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("startTime", Long.valueOf(b)).a("endTime", Long.valueOf(c)).a("activity", Integer.valueOf(e)).a("dataSets", f).a("bucketType", a(g)).a("serverHasMoreData", Boolean.valueOf(h)).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.fitness.data.e.a(this, parcel, i);
    }

}
