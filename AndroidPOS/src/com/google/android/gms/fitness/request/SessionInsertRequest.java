// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.request:
//            ae

public class SessionInsertRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new ae();
    private final int a;
    private final Session b;
    private final List c;
    private final List d;

    SessionInsertRequest(int i, Session session, List list, List list1)
    {
        a = i;
        b = session;
        c = Collections.unmodifiableList(list);
        d = Collections.unmodifiableList(list1);
    }

    public final Session a()
    {
        return b;
    }

    public final List b()
    {
        return c;
    }

    public final List c()
    {
        return d;
    }

    final int d()
    {
        return a;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (obj != this)
            {
                boolean flag1 = obj instanceof SessionInsertRequest;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                SessionInsertRequest sessioninsertrequest = (SessionInsertRequest)obj;
                boolean flag2;
                if (pt.a(b, sessioninsertrequest.b) && pt.a(c, sessioninsertrequest.c) && pt.a(d, sessioninsertrequest.d))
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
        aobj[0] = b;
        aobj[1] = c;
        aobj[2] = d;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("session", b).a("dataSets", c).a("aggregateDataPoints", d).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ae.a(this, parcel, i);
    }

}
