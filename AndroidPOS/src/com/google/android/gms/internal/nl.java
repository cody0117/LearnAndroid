// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            ry, pt

public class nl
    implements SafeParcelable
{

    public static final ry CREATOR = new ry();
    static final List a = Collections.emptyList();
    LocationRequest b;
    boolean c;
    boolean d;
    boolean e;
    List f;
    final String g;
    private final int h;

    nl(int i, LocationRequest locationrequest, boolean flag, boolean flag1, boolean flag2, List list, String s)
    {
        h = i;
        b = locationrequest;
        c = flag;
        d = flag1;
        e = flag2;
        f = list;
        g = s;
    }

    final int a()
    {
        return h;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        nl nl1;
        if (obj instanceof nl)
        {
            if (pt.a(b, (nl1 = (nl)obj).b) && c == nl1.c && d == nl1.d && e == nl1.e && pt.a(f, nl1.f))
            {
                return true;
            }
        }
        return false;
    }

    public final int hashCode()
    {
        return b.hashCode();
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(b.toString());
        stringbuilder.append(" requestNlpDebugInfo=");
        stringbuilder.append(c);
        stringbuilder.append(" restorePendingIntentListeners=");
        stringbuilder.append(d);
        stringbuilder.append(" triggerUpdate=");
        stringbuilder.append(e);
        stringbuilder.append(" clients=");
        stringbuilder.append(f);
        if (g != null)
        {
            stringbuilder.append(" tag=");
            stringbuilder.append(g);
        }
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ry.a(this, parcel, i);
    }

}
