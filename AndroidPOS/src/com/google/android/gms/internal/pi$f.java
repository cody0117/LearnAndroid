// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.b.h;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ks, sx, ko

public final class k extends ks
    implements h
{

    public static final sx CREATOR = new sx();
    private static final HashMap l;
    final Set a;
    final int b;
    String c;
    String d;
    String e;
    String f;
    String g;
    boolean h;
    String i;
    String j;
    int k;

    public final Object a()
    {
        return this;
    }

    protected final boolean a(k k1)
    {
        return a.contains(Integer.valueOf(k1.g()));
    }

    protected final Object b(g g1)
    {
        switch (g1.g())
        {
        default:
            throw new IllegalStateException((new StringBuilder("Unknown safe parcelable id=")).append(g1.g()).toString());

        case 2: // '\002'
            return c;

        case 3: // '\003'
            return d;

        case 4: // '\004'
            return e;

        case 5: // '\005'
            return f;

        case 6: // '\006'
            return g;

        case 7: // '\007'
            return Boolean.valueOf(h);

        case 8: // '\b'
            return i;

        case 9: // '\t'
            return j;

        case 10: // '\n'
            return Integer.valueOf(k);
        }
    }

    public final HashMap b()
    {
        return l;
    }

    public final int describeContents()
    {
        sx _tmp = CREATOR;
        return 0;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (!(obj instanceof CREATOR))
            {
                return false;
            }
            if (this == obj)
            {
                return true;
            }
            CREATOR creator = (CREATOR)obj;
            CREATOR creator1;
label1:
            do
            {
                for (Iterator iterator = l.values().iterator(); iterator.hasNext();)
                {
                    creator1 = (l)iterator.next();
                    if (!a(creator1))
                    {
                        continue label1;
                    }
                    if (creator.a(creator1))
                    {
                        if (!b(creator1).equals(creator.b(creator1)))
                        {
                            return false;
                        }
                    } else
                    {
                        return false;
                    }
                }

                break label0;
            } while (!creator.a(creator1));
            return false;
        }
        return true;
    }

    public final int hashCode()
    {
        Iterator iterator = l.values().iterator();
        int i1 = 0;
        while (iterator.hasNext()) 
        {
            a a1 = (l)iterator.next();
            int j1;
            if (a(a1))
            {
                j1 = i1 + a1.g() + b(a1).hashCode();
            } else
            {
                j1 = i1;
            }
            i1 = j1;
        }
        return i1;
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        sx _tmp = CREATOR;
        sx.a(this, parcel);
    }

    static 
    {
        HashMap hashmap = new HashMap();
        l = hashmap;
        hashmap.put("department", d("department", 2));
        l.put("description", d("description", 3));
        l.put("endDate", d("endDate", 4));
        l.put("location", d("location", 5));
        l.put("name", d("name", 6));
        l.put("primary", c("primary", 7));
        l.put("startDate", d("startDate", 8));
        l.put("title", d("title", 9));
        l.put("type", a("type", 10, (new ko()).a("work", 0).a("school", 1)));
    }

    public ()
    {
        b = 1;
        a = new HashSet();
    }

    a(Set set, int i1, String s, String s1, String s2, String s3, String s4, 
            boolean flag, String s5, String s6, int j1)
    {
        a = set;
        b = i1;
        c = s;
        d = s1;
        e = s2;
        f = s3;
        g = s4;
        h = flag;
        i = s5;
        j = s6;
        k = j1;
    }
}
