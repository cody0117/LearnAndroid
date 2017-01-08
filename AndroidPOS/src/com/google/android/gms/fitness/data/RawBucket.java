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
//            o, Bucket, DataSet, RawDataSet, 
//            Session

public final class RawBucket
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new o();
    final int a;
    final long b;
    final long c;
    final Session d;
    final int e;
    final List f;
    final int g;
    final boolean h;

    RawBucket(int i, long l, long l1, Session session, int j, 
            List list, int k, boolean flag)
    {
        a = i;
        b = l;
        c = l1;
        d = session;
        e = j;
        f = list;
        g = k;
        h = flag;
    }

    public RawBucket(Bucket bucket, List list, List list1)
    {
        a = 2;
        b = bucket.a(TimeUnit.MILLISECONDS);
        c = bucket.b(TimeUnit.MILLISECONDS);
        d = bucket.a();
        e = bucket.b();
        g = bucket.d();
        h = bucket.e();
        List list2 = bucket.c();
        f = new ArrayList(list2.size());
        DataSet dataset;
        for (Iterator iterator = list2.iterator(); iterator.hasNext(); f.add(new RawDataSet(dataset, list, list1)))
        {
            dataset = (DataSet)iterator.next();
        }

    }

    public final int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (this != obj)
            {
                boolean flag1 = obj instanceof RawBucket;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                RawBucket rawbucket = (RawBucket)obj;
                boolean flag2;
                if (b == rawbucket.b && c == rawbucket.c && e == rawbucket.e && pt.a(f, rawbucket.f) && g == rawbucket.g && h == rawbucket.h)
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

    public final int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Long.valueOf(b);
        aobj[1] = Long.valueOf(c);
        aobj[2] = Integer.valueOf(g);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("startTime", Long.valueOf(b)).a("endTime", Long.valueOf(c)).a("activity", Integer.valueOf(e)).a("dataSets", f).a("bucketType", Integer.valueOf(g)).a("serverHasMoreData", Boolean.valueOf(h)).toString();
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        o.a(this, parcel, i);
    }

}
