// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.cast;

import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.nt;
import java.util.Arrays;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.cast:
//            c

public class LaunchOptions
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new c();
    private final int a;
    private boolean b;
    private String c;

    public LaunchOptions()
    {
        Locale locale = Locale.getDefault();
        StringBuilder stringbuilder = new StringBuilder(20);
        stringbuilder.append(locale.getLanguage());
        String s = locale.getCountry();
        if (!TextUtils.isEmpty(s))
        {
            stringbuilder.append('-').append(s);
        }
        String s1 = locale.getVariant();
        if (!TextUtils.isEmpty(s1))
        {
            stringbuilder.append('-').append(s1);
        }
        this(1, false, stringbuilder.toString());
    }

    LaunchOptions(int i, boolean flag, String s)
    {
        a = i;
        b = flag;
        c = s;
    }

    final int a()
    {
        return a;
    }

    public final boolean b()
    {
        return b;
    }

    public final String c()
    {
        return c;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof LaunchOptions))
            {
                return false;
            }
            LaunchOptions launchoptions = (LaunchOptions)obj;
            if (b != launchoptions.b || !nt.a(c, launchoptions.c))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[2];
        aobj[0] = Boolean.valueOf(b);
        aobj[1] = c;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = Boolean.valueOf(b);
        aobj[1] = c;
        return String.format("LaunchOptions(relaunchIfRunning=%b, language=%s)", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.cast.c.a(this, parcel);
    }

}
