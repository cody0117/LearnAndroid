// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            sc, pt, pu

public final class nu
    implements SafeParcelable
{

    public static final sc CREATOR = new sc();
    final int a;
    final List b;
    final List c;
    final List d;
    private final String e;
    private final boolean f;
    private final Set g;
    private final Set h;
    private final Set i;

    nu(int j, List list, String s, boolean flag, List list1, List list2)
    {
        a = j;
        List list3;
        List list4;
        List list5;
        if (list == null)
        {
            list3 = Collections.emptyList();
        } else
        {
            list3 = Collections.unmodifiableList(list);
        }
        b = list3;
        if (s == null)
        {
            s = "";
        }
        e = s;
        f = flag;
        if (list1 == null)
        {
            list4 = Collections.emptyList();
        } else
        {
            list4 = Collections.unmodifiableList(list1);
        }
        c = list4;
        if (list2 == null)
        {
            list5 = Collections.emptyList();
        } else
        {
            list5 = Collections.unmodifiableList(list2);
        }
        d = list5;
        g = a(b);
        h = a(c);
        i = a(d);
    }

    private static Set a(List list)
    {
        if (list.isEmpty())
        {
            return Collections.emptySet();
        } else
        {
            return Collections.unmodifiableSet(new HashSet(list));
        }
    }

    public final String a()
    {
        return e;
    }

    public final boolean b()
    {
        return f;
    }

    public final int describeContents()
    {
        sc _tmp = CREATOR;
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof nu))
            {
                return false;
            }
            nu nu1 = (nu)obj;
            if (!g.equals(nu1.g) || f != nu1.f || !h.equals(nu1.h) || !i.equals(nu1.i))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[4];
        aobj[0] = g;
        aobj[1] = Boolean.valueOf(f);
        aobj[2] = h;
        aobj[3] = i;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("types", g).a("placeIds", i).a("requireOpenNow", Boolean.valueOf(f)).a("requestedUserDataTypes", h).toString();
    }

    public final void writeToParcel(Parcel parcel, int j)
    {
        sc _tmp = CREATOR;
        sc.a(this, parcel);
    }

}
