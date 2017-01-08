// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            qh, qf

public final class ko
    implements SafeParcelable, qh
{

    public static final qf CREATOR = new qf();
    private final int a;
    private final HashMap b;
    private final HashMap c;
    private final ArrayList d;

    public ko()
    {
        a = 1;
        b = new HashMap();
        c = new HashMap();
        d = null;
    }

    ko(int i, ArrayList arraylist)
    {
        a = i;
        b = new HashMap();
        c = new HashMap();
        d = null;
        a(arraylist);
    }

    private void a(ArrayList arraylist)
    {
        a a1;
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); a(a1.b, a1.c))
        {
            a1 = (a)iterator.next();
        }

    }

    final int a()
    {
        return a;
    }

    public final ko a(String s, int i)
    {
        b.put(s, Integer.valueOf(i));
        c.put(Integer.valueOf(i), s);
        return this;
    }

    public final Object a(Object obj)
    {
        Integer integer = (Integer)obj;
        String s = (String)c.get(integer);
        if (s == null && b.containsKey("gms_unknown"))
        {
            s = "gms_unknown";
        }
        return s;
    }

    final ArrayList b()
    {
        ArrayList arraylist = new ArrayList();
        String s;
        for (Iterator iterator = b.keySet().iterator(); iterator.hasNext(); arraylist.add(new a(s, ((Integer)b.get(s)).intValue())))
        {
            s = (String)iterator.next();
        }

        return arraylist;
    }

    public final int describeContents()
    {
        qf _tmp = CREATOR;
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        qf _tmp = CREATOR;
        qf.a(this, parcel);
    }


    private class a
        implements SafeParcelable
    {

        public static final qg CREATOR = new qg();
        final int a;
        final String b;
        final int c;

        public final int describeContents()
        {
            qg _tmp = CREATOR;
            return 0;
        }

        public final void writeToParcel(Parcel parcel, int i)
        {
            qg _tmp = CREATOR;
            qg.a(this, parcel);
        }


        a(int i, String s, int j)
        {
            a = i;
            b = s;
            c = j;
        }

        a(String s, int i)
        {
            a = 1;
            b = s;
            c = i;
        }
    }

}
