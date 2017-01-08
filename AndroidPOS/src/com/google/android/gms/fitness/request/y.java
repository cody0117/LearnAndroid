// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.fitness.request:
//            al

public class y
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new al();
    private final int a;
    private final String b;
    private final String c;

    y(int i, String s, String s1)
    {
        a = i;
        b = s;
        c = s1;
    }

    public final String a()
    {
        return b;
    }

    public final String b()
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
                boolean flag1 = obj instanceof y;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                y y1 = (y)obj;
                boolean flag2;
                if (pt.a(b, y1.b) && pt.a(c, y1.c))
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
        return pt.a(this).a("name", b).a("identifier", c).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        al.a(this, parcel);
    }

}
