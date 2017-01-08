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
//            c

public class DataSourcesResult
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new c();
    private final int a;
    private final List b;
    private final Status c;

    DataSourcesResult(int i, List list, Status status)
    {
        a = i;
        b = Collections.unmodifiableList(list);
        c = status;
    }

    public final List a()
    {
        return b;
    }

    public final Status b()
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
                boolean flag1 = obj instanceof DataSourcesResult;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                DataSourcesResult datasourcesresult = (DataSourcesResult)obj;
                boolean flag2;
                if (c.equals(datasourcesresult.c) && pt.a(b, datasourcesresult.b))
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
        aobj[0] = c;
        aobj[1] = b;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("status", c).a("dataSets", b).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.fitness.result.c.a(this, parcel, i);
    }

}
