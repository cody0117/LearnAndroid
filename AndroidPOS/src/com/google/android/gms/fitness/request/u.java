// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.fitness.request:
//            ai

public class u
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new ai();
    private final int a;
    private final PendingIntent b;

    u(int i, PendingIntent pendingintent)
    {
        a = i;
        b = pendingintent;
    }

    public final PendingIntent a()
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
            if (this != obj)
            {
                if (!(obj instanceof u))
                {
                    break label0;
                }
                u u1 = (u)obj;
                if (!pt.a(b, u1.b))
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
        return pt.a(this).a("pendingIntent", b).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ai.a(this, parcel, i);
    }

}