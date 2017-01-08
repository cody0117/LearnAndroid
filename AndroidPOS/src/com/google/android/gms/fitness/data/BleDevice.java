// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import com.google.android.gms.internal.rr;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.data:
//            d

public class BleDevice
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new d();
    private final int a;
    private final String b;
    private final String c;
    private final List d;
    private final List e;

    BleDevice(int i, String s, String s1, List list, List list1)
    {
        a = i;
        b = s;
        c = s1;
        d = Collections.unmodifiableList(list);
        e = Collections.unmodifiableList(list1);
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
        return d;
    }

    public final List d()
    {
        return e;
    }

    public int describeContents()
    {
        return 0;
    }

    final int e()
    {
        return a;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (obj != this)
            {
                boolean flag1 = obj instanceof BleDevice;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                BleDevice bledevice = (BleDevice)obj;
                boolean flag2;
                if (c.equals(bledevice.c) && b.equals(bledevice.b) && rr.a(bledevice.d, d) && rr.a(e, bledevice.e))
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
        Object aobj[] = new Object[4];
        aobj[0] = c;
        aobj[1] = b;
        aobj[2] = d;
        aobj[3] = e;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("name", c).a("address", b).a("dataTypes", e).a("supportedProfiles", d).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.fitness.data.d.a(this, parcel);
    }

}
