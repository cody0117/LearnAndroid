// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.internal:
//            sk, pt, pu

public class oh
    implements SafeParcelable
{

    public static final sk CREATOR = new sk();
    public static final oh a;
    public final int b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;

    public oh(int i, String s, String s1, String s2, String s3)
    {
        b = i;
        c = s;
        d = s1;
        e = s2;
        f = s3;
    }

    private oh(String s, Locale locale)
    {
        this(1, s, locale.toString(), null, null);
    }

    public int describeContents()
    {
        sk _tmp = CREATOR;
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || !(obj instanceof oh))
            {
                return false;
            }
            oh oh1 = (oh)obj;
            if (!d.equals(oh1.d) || !c.equals(oh1.c) || !pt.a(e, oh1.e) || !pt.a(f, oh1.f))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = c;
        aobj[1] = d;
        aobj[2] = e;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("clientPackageName", c).a("locale", d).a("accountName", e).a("gCoreClientName", f).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        sk _tmp = CREATOR;
        sk.a(this, parcel);
    }

    static 
    {
        a = new oh("com.google.android.gms", Locale.ENGLISH);
    }
}
