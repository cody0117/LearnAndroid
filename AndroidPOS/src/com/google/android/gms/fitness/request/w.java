// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.fitness.request:
//            ak

public class w
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new ak();
    private final int a;
    private final Session b;

    w(int i, Session session)
    {
        a = i;
        b = session;
    }

    public final Session a()
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
                if (!(obj instanceof w))
                {
                    break label0;
                }
                w w1 = (w)obj;
                if (!pt.a(b, w1.b))
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
        return pt.a(this).a("session", b).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ak.a(this, parcel, i);
    }

}
