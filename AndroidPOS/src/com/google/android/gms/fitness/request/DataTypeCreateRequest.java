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
//            r

public class DataTypeCreateRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new r();
    private final int a;
    private final String b;
    private final List c;

    DataTypeCreateRequest(int i, String s, List list)
    {
        a = i;
        b = s;
        c = Collections.unmodifiableList(list);
    }

    public final String a()
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
            if (obj != this)
            {
                boolean flag1 = obj instanceof DataTypeCreateRequest;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                DataTypeCreateRequest datatypecreaterequest = (DataTypeCreateRequest)obj;
                boolean flag2;
                if (pt.a(b, datatypecreaterequest.b) && pt.a(c, datatypecreaterequest.c))
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
        return pt.a(this).a("name", b).a("fields", c).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        r.a(this, parcel);
    }

}
