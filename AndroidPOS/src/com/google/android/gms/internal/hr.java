// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            nk, hf, hd

public class hr
    implements SafeParcelable
{

    public static final nk CREATOR = new nk();
    final int a;
    final hf b;
    final long c;
    final int d;
    public final String e;
    final hd f;

    hr(int i, hf hf, long l, int j, String s, hd hd)
    {
        a = i;
        b = hf;
        c = l;
        d = j;
        e = s;
        f = hd;
    }

    public int describeContents()
    {
        nk _tmp = CREATOR;
        return 0;
    }

    public final String toString()
    {
        Object aobj[] = new Object[3];
        aobj[0] = b;
        aobj[1] = Long.valueOf(c);
        aobj[2] = Integer.valueOf(d);
        return String.format("UsageInfo[documentId=%s, timestamp=%d, usageType=%d]", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        nk _tmp = CREATOR;
        nk.a(this, parcel, i);
    }

}
