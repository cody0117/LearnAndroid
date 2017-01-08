// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.internal:
//            sm, pt

public class ov
    implements SafeParcelable
{

    public static final sm CREATOR = new sm();
    public final int a;
    public final String b;
    public final int c;
    public final int d;
    public final String e;
    public final String f;
    public final boolean g;
    public final String h;

    public ov(int i, String s, int j, int k, String s1, String s2, boolean flag, 
            String s3)
    {
        a = i;
        b = s;
        c = j;
        d = k;
        e = s1;
        f = s2;
        g = flag;
        h = s3;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        ov ov1;
        if (this != obj)
        {
            if (obj instanceof ov)
            {
                if (!b.equals((ov1 = (ov)obj).b) || c != ov1.c || d != ov1.d || !pt.a(h, ov1.h) || !pt.a(e, ov1.e) || !pt.a(f, ov1.f) || g != ov1.g)
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[6];
        aobj[0] = b;
        aobj[1] = Integer.valueOf(c);
        aobj[2] = Integer.valueOf(d);
        aobj[3] = e;
        aobj[4] = f;
        aobj[5] = Boolean.valueOf(g);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("PlayLoggerContext[");
        stringbuilder.append("package=").append(b).append(',');
        stringbuilder.append("versionCode=").append(a).append(',');
        stringbuilder.append("logSource=").append(d).append(',');
        stringbuilder.append("logSourceName=").append(h).append(',');
        stringbuilder.append("uploadAccount=").append(e).append(',');
        stringbuilder.append("loggingId=").append(f).append(',');
        stringbuilder.append("logAndroidId=").append(g);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        sm.a(this, parcel);
    }

}
