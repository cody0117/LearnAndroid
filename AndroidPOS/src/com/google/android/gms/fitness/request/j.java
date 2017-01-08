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
//            s

public class j
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new s();
    private final int a;
    private final String b;

    j(int i, String s1)
    {
        a = i;
        b = s1;
    }

    public final String a()
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
                if (!(obj instanceof j))
                {
                    break label0;
                }
                j j1 = (j)obj;
                if (!pt.a(b, j1.b))
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
        return pt.a(this).a("name", b).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        s.a(this, parcel);
    }

}
