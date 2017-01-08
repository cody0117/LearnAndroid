// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.fitness.request:
//            l

public class e
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new l();
    private final int a;
    private final DataSet b;

    e(int i, DataSet dataset)
    {
        a = i;
        b = dataset;
    }

    public final DataSet a()
    {
        return b;
    }

    final int b()
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
                if (!(obj instanceof e))
                {
                    break label0;
                }
                e e1 = (e)obj;
                if (!pt.a(b, e1.b))
                {
                    break label0;
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[1];
        aobj[0] = b;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("dataSet", b).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        l.a(this, parcel, i);
    }

}
