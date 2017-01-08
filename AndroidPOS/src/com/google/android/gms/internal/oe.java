// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            sj, px

public final class oe
    implements SafeParcelable
{

    public static final sj CREATOR = new sj();
    public static final oe a;
    public static final oe b;
    public static final Set c;
    final int d;
    final String e;
    final int f;

    oe(int i, String s, int j)
    {
        px.a(s);
        d = i;
        e = s;
        f = j;
    }

    private static oe a(String s, int i)
    {
        return new oe(0, s, i);
    }

    public final int describeContents()
    {
        sj _tmp = CREATOR;
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof oe))
            {
                return false;
            }
            oe oe1 = (oe)obj;
            if (!e.equals(oe1.e) || f != oe1.f)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        return e.hashCode();
    }

    public final String toString()
    {
        return e;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        sj _tmp = CREATOR;
        sj.a(this, parcel);
    }

    static 
    {
        a = a("test_type", 1);
        b = a("labeled_place", 6);
        oe aoe[] = new oe[2];
        aoe[0] = a;
        aoe[1] = b;
        c = Collections.unmodifiableSet(new HashSet(Arrays.asList(aoe)));
    }
}
