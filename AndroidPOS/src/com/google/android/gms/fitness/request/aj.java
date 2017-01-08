// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.pt;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.fitness.request:
//            h

public class aj
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new h();
    private final int a;
    private final DataType b;
    private final DataSource c;

    aj(int i, DataType datatype, DataSource datasource)
    {
        a = i;
        b = datatype;
        c = datasource;
    }

    final int a()
    {
        return a;
    }

    public final DataType b()
    {
        return b;
    }

    public final DataSource c()
    {
        return c;
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
                boolean flag1 = obj instanceof aj;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                aj aj1 = (aj)obj;
                boolean flag2;
                if (pt.a(c, aj1.c) && pt.a(b, aj1.b))
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

    public void writeToParcel(Parcel parcel, int i)
    {
        h.a(this, parcel, i);
    }

}
