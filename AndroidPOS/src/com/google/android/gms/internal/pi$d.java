// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.b.g;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ks, sw

public final class h extends ks
    implements g
{

    public static final sw CREATOR = new sw();
    private static final HashMap i;
    final Set a;
    final int b;
    String c;
    String d;
    String e;
    String f;
    String g;
    String h;

    public final Object a()
    {
        return this;
    }

    protected final boolean a(h h1)
    {
        return a.contains(Integer.valueOf(h1.g()));
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
            return h;
        }
    }

    public final HashMap b()
    {
        return i;
    }

    public final int describeContents()
    {
        sw _tmp = CREATOR;
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
                for (Iterator iterator = i.values().iterator(); iterator.hasNext();)
                {
                    creator1 = (i)iterator.next();
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
        Iterator iterator = i.values().iterator();
        int j = 0;
        while (iterator.hasNext()) 
        {
            a a1 = (i)iterator.next();
            int k;
            if (a(a1))
            {
                k = j + a1.g() + b(a1).hashCode();
            } else
            {
                k = j;
            }
            j = k;
        }
        return j;
    }

    public final void writeToParcel(Parcel parcel, int j)
    {
        sw _tmp = CREATOR;
        sw.a(this, parcel);
    }

    static 
    {
        HashMap hashmap = new HashMap();
        i = hashmap;
        hashmap.put("familyName", d("familyName", 2));
        i.put("formatted", d("formatted", 3));
        i.put("givenName", d("givenName", 4));
        i.put("honorificPrefix", d("honorificPrefix", 5));
        i.put("honorificSuffix", d("honorificSuffix", 6));
        i.put("middleName", d("middleName", 7));
    }

    public ()
    {
        b = 1;
        a = new HashSet();
    }

    a(Set set, int j, String s, String s1, String s2, String s3, String s4, 
            String s5)
    {
        a = set;
        b = j;
        c = s;
        d = s1;
        e = s2;
        f = s3;
        g = s4;
        h = s5;
    }
}
