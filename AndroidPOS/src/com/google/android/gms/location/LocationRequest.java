// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.location:
//            f

public final class LocationRequest
    implements SafeParcelable
{

    public static final f CREATOR = new f();
    int a;
    long b;
    long c;
    boolean d;
    long e;
    int f;
    float g;
    long h;
    private final int i;

    public LocationRequest()
    {
        i = 1;
        a = 102;
        b = 0x36ee80L;
        c = 0x927c0L;
        d = false;
        e = 0x7fffffffffffffffL;
        f = 0x7fffffff;
        g = 0.0F;
        h = 0L;
    }

    LocationRequest(int j, int k, long l, long l1, boolean flag, 
            long l2, int i1, float f1, long l3)
    {
        i = j;
        a = k;
        b = l;
        c = l1;
        d = flag;
        e = l2;
        f = i1;
        g = f1;
        h = l3;
    }

    final int a()
    {
        return i;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof LocationRequest))
            {
                return false;
            }
            LocationRequest locationrequest = (LocationRequest)obj;
            if (a != locationrequest.a || b != locationrequest.b || c != locationrequest.c || d != locationrequest.d || e != locationrequest.e || f != locationrequest.f || g != locationrequest.g)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[7];
        aobj[0] = Integer.valueOf(a);
        aobj[1] = Long.valueOf(b);
        aobj[2] = Long.valueOf(c);
        aobj[3] = Boolean.valueOf(d);
        aobj[4] = Long.valueOf(e);
        aobj[5] = Integer.valueOf(f);
        aobj[6] = Float.valueOf(g);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        StringBuilder stringbuilder;
        StringBuilder stringbuilder1;
        stringbuilder = new StringBuilder();
        stringbuilder1 = stringbuilder.append("Request[");
        a;
        JVM INSTR tableswitch 100 105: default 56
    //                   100 230
    //                   101 56
    //                   102 236
    //                   103 56
    //                   104 242
    //                   105 248;
           goto _L1 _L2 _L1 _L3 _L1 _L4 _L5
_L1:
        String s = "???";
_L7:
        stringbuilder1.append(s);
        if (a != 105)
        {
            stringbuilder.append(" requested=");
            stringbuilder.append((new StringBuilder()).append(b).append("ms").toString());
        }
        stringbuilder.append(" fastest=");
        stringbuilder.append((new StringBuilder()).append(c).append("ms").toString());
        if (e != 0x7fffffffffffffffL)
        {
            long l = e - SystemClock.elapsedRealtime();
            stringbuilder.append(" expireIn=");
            stringbuilder.append((new StringBuilder()).append(l).append("ms").toString());
        }
        if (f != 0x7fffffff)
        {
            stringbuilder.append(" num=").append(f);
        }
        stringbuilder.append(']');
        return stringbuilder.toString();
_L2:
        s = "PRIORITY_HIGH_ACCURACY";
        continue; /* Loop/switch isn't completed */
_L3:
        s = "PRIORITY_BALANCED_POWER_ACCURACY";
        continue; /* Loop/switch isn't completed */
_L4:
        s = "PRIORITY_LOW_POWER";
        continue; /* Loop/switch isn't completed */
_L5:
        s = "PRIORITY_NO_POWER";
        if (true) goto _L7; else goto _L6
_L6:
    }

    public final void writeToParcel(Parcel parcel, int j)
    {
        com.google.android.gms.location.f.a(this, parcel);
    }

}
