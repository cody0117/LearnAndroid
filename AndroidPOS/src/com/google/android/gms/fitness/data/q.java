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
//            t, Session, DataSet

public class q
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new t();
    final int a;
    private final Session b;
    private final DataSet c;

    q(int i, Session session, DataSet dataset)
    {
        a = i;
        b = session;
        c = dataset;
    }

    public final Session a()
    {
        return b;
    }

    public final DataSet b()
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
            if (obj != this)
            {
                boolean flag1 = obj instanceof q;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                q q1 = (q)obj;
                boolean flag2;
                if (pt.a(b, q1.b) && pt.a(c, q1.c))
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
        return pt.a(this).a("session", b).a("dataSet", c).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        t.a(this, parcel, i);
    }

}
