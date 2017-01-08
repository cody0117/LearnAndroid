// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.wearable:
//            e

public class c
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new e();
    final int a;
    private final String b;
    private final String c;
    private final int d;
    private final int e;
    private final boolean f;
    private boolean g;
    private String h;

    c(int i, String s, String s1, int j, int k, boolean flag, boolean flag1, 
            String s2)
    {
        a = i;
        b = s;
        c = s1;
        d = j;
        e = k;
        f = flag;
        g = flag1;
        h = s2;
    }

    public final String a()
    {
        return b;
    }

    public final String b()
    {
        return c;
    }

    public final int c()
    {
        return d;
    }

    public final int d()
    {
        return e;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean e()
    {
        return g;
    }

    public final boolean equals(Object obj)
    {
        c c1;
        if (obj instanceof c)
        {
            if (pt.a(Integer.valueOf(a), Integer.valueOf((c1 = (c)obj).a)) && pt.a(b, c1.b) && pt.a(c, c1.c) && pt.a(Integer.valueOf(d), Integer.valueOf(c1.d)) && pt.a(Integer.valueOf(e), Integer.valueOf(c1.e)) && pt.a(Boolean.valueOf(f), Boolean.valueOf(c1.f)))
            {
                return true;
            }
        }
        return false;
    }

    public final String f()
    {
        return h;
    }

    public final boolean g()
    {
        return f;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[6];
        aobj[0] = Integer.valueOf(a);
        aobj[1] = b;
        aobj[2] = c;
        aobj[3] = Integer.valueOf(d);
        aobj[4] = Integer.valueOf(e);
        aobj[5] = Boolean.valueOf(f);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("ConnectionConfiguration[ ");
        stringbuilder.append((new StringBuilder("mName=")).append(b).toString());
        stringbuilder.append((new StringBuilder(", mAddress=")).append(c).toString());
        stringbuilder.append((new StringBuilder(", mType=")).append(d).toString());
        stringbuilder.append((new StringBuilder(", mRole=")).append(e).toString());
        stringbuilder.append((new StringBuilder(", mEnabled=")).append(f).toString());
        stringbuilder.append((new StringBuilder(", mIsConnected=")).append(g).toString());
        stringbuilder.append((new StringBuilder(", mEnabled=")).append(h).toString());
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.wearable.e.a(this, parcel);
    }

}
