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
//            sa

public class nq
    implements SafeParcelable
{

    public static final sa CREATOR = new sa();
    final int a;
    final boolean b;
    final List c;
    private final Set d;

    nq(int i, boolean flag, List list)
    {
        a = i;
        b = flag;
        List list1;
        if (list == null)
        {
            list1 = Collections.emptyList();
        } else
        {
            list1 = Collections.unmodifiableList(list);
        }
        c = list1;
        if (c.isEmpty())
        {
            d = Collections.emptySet();
            return;
        } else
        {
            d = Collections.unmodifiableSet(new HashSet(c));
            return;
        }
    }

    public final boolean a()
    {
        return b;
    }

    public int describeContents()
    {
        sa _tmp = CREATOR;
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof nq))
            {
                return false;
            }
            nq nq1 = (nq)obj;
            if (!d.equals(nq1.d) || b != nq1.b)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[2];
        aobj[0] = d;
        aobj[1] = Boolean.valueOf(b);
        return Arrays.hashCode(aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        sa _tmp = CREATOR;
        sa.a(this, parcel);
    }

}
