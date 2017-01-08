// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.fitness.data:
//            s, a

public class Session
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new s();
    private final int a;
    private final long b;
    private final long c;
    private final String d;
    private final String e;
    private final String f;
    private final int g;
    private final a h;

    Session(int i, long l, long l1, String s1, String s2, 
            String s3, int j, a a1)
    {
        a = i;
        b = l;
        c = l1;
        d = s1;
        e = s2;
        f = s3;
        g = j;
        h = a1;
    }

    public final String a()
    {
        return d;
    }

    public final String b()
    {
        return e;
    }

    public final String c()
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

    public final a e()
    {
        return h;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (obj != this)
            {
                boolean flag1 = obj instanceof Session;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                Session session = (Session)obj;
                boolean flag2;
                if (b == session.b && c == session.c && pt.a(d, session.d) && pt.a(e, session.e) && pt.a(f, session.f) && pt.a(h, session.h) && g == session.g)
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
        Object aobj[] = new Object[3];
        aobj[0] = Long.valueOf(b);
        aobj[1] = Long.valueOf(c);
        aobj[2] = e;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("startTime", Long.valueOf(b)).a("endTime", Long.valueOf(c)).a("name", d).a("identifier", e).a("description", f).a("activity", Integer.valueOf(g)).a("application", h).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        s.a(this, parcel, i);
    }

}
