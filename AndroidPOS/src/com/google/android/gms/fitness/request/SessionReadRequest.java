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
//            ag

public class SessionReadRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new ag();
    private final int a;
    private final String b;
    private final String c;
    private final long d;
    private final long e;
    private final List f;
    private final List g;
    private boolean h;
    private final boolean i;
    private final List j;

    SessionReadRequest(int k, String s, String s1, long l, long l1, 
            List list, List list1, boolean flag, boolean flag1, List list2)
    {
        a = k;
        b = s;
        c = s1;
        d = l;
        e = l1;
        f = Collections.unmodifiableList(list);
        g = Collections.unmodifiableList(list1);
        h = flag;
        i = flag1;
        j = list2;
    }

    public final String a()
    {
        return b;
    }

    public final String b()
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

    public final List e()
    {
        return j;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (this != obj)
            {
                boolean flag1 = obj instanceof SessionReadRequest;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                SessionReadRequest sessionreadrequest = (SessionReadRequest)obj;
                boolean flag2;
                if (pt.a(b, sessionreadrequest.b) && c.equals(sessionreadrequest.c) && d == sessionreadrequest.d && e == sessionreadrequest.e && pt.a(f, sessionreadrequest.f) && pt.a(g, sessionreadrequest.g) && h == sessionreadrequest.h && j.equals(sessionreadrequest.j) && i == sessionreadrequest.i)
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
        return i;
    }

    public final long g()
    {
        return e;
    }

    public final long h()
    {
        return d;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[4];
        aobj[0] = b;
        aobj[1] = c;
        aobj[2] = Long.valueOf(d);
        aobj[3] = Long.valueOf(e);
        return Arrays.hashCode(aobj);
    }

    public final boolean i()
    {
        return h;
    }

    final int j()
    {
        return a;
    }

    public final String toString()
    {
        return pt.a(this).a("sessionName", b).a("sessionId", c).a("startTimeMillis", Long.valueOf(d)).a("endTimeMillis", Long.valueOf(e)).a("dataTypes", f).a("dataSources", g).a("sessionsFromAllApps", Boolean.valueOf(h)).a("excludedPackages", j).a("useServer", Boolean.valueOf(i)).toString();
    }

    public void writeToParcel(Parcel parcel, int k)
    {
        ag.a(this, parcel);
    }

}
