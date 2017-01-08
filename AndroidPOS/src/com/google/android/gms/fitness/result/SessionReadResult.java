// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.result;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.result:
//            f

public class SessionReadResult
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new f();
    private final int a;
    private final List b;
    private final List c;
    private final Status d;

    SessionReadResult(int i, List list, List list1, Status status)
    {
        a = i;
        b = list;
        c = Collections.unmodifiableList(list1);
        d = status;
    }

    public final List a()
    {
        return b;
    }

    public final List b()
    {
        return c;
    }

    public final Status c()
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
            if (this != obj)
            {
                boolean flag1 = obj instanceof SessionReadResult;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                SessionReadResult sessionreadresult = (SessionReadResult)obj;
                boolean flag2;
                if (d.equals(sessionreadresult.d) && pt.a(b, sessionreadresult.b) && pt.a(c, sessionreadresult.c))
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
        aobj[0] = d;
        aobj[1] = b;
        aobj[2] = c;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("status", d).a("sessions", b).a("sessionDataSets", c).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        f.a(this, parcel, i);
    }

}
