// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.l;
import com.google.android.gms.fitness.data.m;
import com.google.android.gms.internal.pt;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.request:
//            ab

public class o
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new ab();
    int a;
    int b;
    private final int c;
    private final DataSource d;
    private final DataType e;
    private l f;
    private final long g;
    private final long h;
    private final PendingIntent i;
    private final long j;
    private final int k;
    private final List l;
    private final long m;
    private final List n = Collections.emptyList();

    o(int i1, DataSource datasource, DataType datatype, IBinder ibinder, int j1, int k1, long l1, long l2, PendingIntent pendingintent, long l3, int i2, 
            List list, long l4)
    {
        c = i1;
        d = datasource;
        e = datatype;
        l l5;
        if (ibinder == null)
        {
            l5 = null;
        } else
        {
            l5 = com.google.android.gms.fitness.data.m.a(ibinder);
        }
        f = l5;
        if (l1 == 0L)
        {
            l1 = j1;
        }
        g = l1;
        j = l3;
        if (l2 == 0L)
        {
            l2 = k1;
        }
        h = l2;
        l = list;
        i = pendingintent;
        k = i2;
        m = l4;
    }

    public final DataSource a()
    {
        return d;
    }

    public final DataType b()
    {
        return e;
    }

    public final PendingIntent c()
    {
        return i;
    }

    public final long d()
    {
        return j;
    }

    public int describeContents()
    {
        return 0;
    }

    public final long e()
    {
        return g;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (this != obj)
            {
                boolean flag1 = obj instanceof o;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                o o1 = (o)obj;
                boolean flag2;
                if (pt.a(d, o1.d) && pt.a(e, o1.e) && g == o1.g && j == o1.j && h == o1.h && k == o1.k && pt.a(l, o1.l))
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

    public final long f()
    {
        return h;
    }

    public final List g()
    {
        return l;
    }

    public final int h()
    {
        return k;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[8];
        aobj[0] = d;
        aobj[1] = e;
        aobj[2] = f;
        aobj[3] = Long.valueOf(g);
        aobj[4] = Long.valueOf(j);
        aobj[5] = Long.valueOf(h);
        aobj[6] = Integer.valueOf(k);
        aobj[7] = l;
        return Arrays.hashCode(aobj);
    }

    public final long i()
    {
        return m;
    }

    final int j()
    {
        return c;
    }

    final IBinder k()
    {
        if (f == null)
        {
            return null;
        } else
        {
            return f.asBinder();
        }
    }

    public final String toString()
    {
        Object aobj[] = new Object[5];
        aobj[0] = e;
        aobj[1] = d;
        aobj[2] = Long.valueOf(g);
        aobj[3] = Long.valueOf(j);
        aobj[4] = Long.valueOf(h);
        return String.format("SensorRegistrationRequest{type %s source %s interval %s fastest %s latency %s}", aobj);
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        ab.a(this, parcel, i1);
    }

}
