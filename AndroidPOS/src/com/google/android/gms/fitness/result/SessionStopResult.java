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
//            g

public class SessionStopResult
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new g();
    private final int a;
    private final Status b;
    private final List c;

    SessionStopResult(int i, Status status, List list)
    {
        a = i;
        b = status;
        c = Collections.unmodifiableList(list);
    }

    public final Status a()
    {
        return b;
    }

    public final List b()
    {
        return c;
    }

    final int c()
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
                boolean flag1 = obj instanceof SessionStopResult;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                SessionStopResult sessionstopresult = (SessionStopResult)obj;
                boolean flag2;
                if (b.equals(sessionstopresult.b) && pt.a(c, sessionstopresult.c))
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
        Object aobj[] = new Object[2];
        aobj[0] = b;
        aobj[1] = c;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("status", b).a("sessions", c).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        g.a(this, parcel, i);
    }

}
