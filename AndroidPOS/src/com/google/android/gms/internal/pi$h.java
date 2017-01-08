// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.b.j;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ks, sz, ko

public final class e extends ks
    implements j
{

    public static final sz CREATOR = new sz();
    private static final HashMap f;
    final Set a;
    final int b;
    String c;
    int d;
    String e;
    private final int g;

    public static int e()
    {
        return 4;
    }

    public final Object a()
    {
        return this;
    }

    protected final boolean a(e e1)
    {
        return a.contains(Integer.valueOf(e1.g()));
    }

    protected final Object b(g g1)
    {
        switch (g1.g())
        {
        default:
            throw new IllegalStateException((new StringBuilder("Unknown safe parcelable id=")).append(g1.g()).toString());

        case 5: // '\005'
            return c;

        case 6: // '\006'
            return Integer.valueOf(d);

        case 4: // '\004'
            return e;
        }
    }

    public final HashMap b()
    {
        return f;
    }

    public final int describeContents()
    {
        sz _tmp = CREATOR;
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
                for (Iterator iterator = f.values().iterator(); iterator.hasNext();)
                {
                    creator1 = (f)iterator.next();
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
        Iterator iterator = f.values().iterator();
        int i = 0;
        while (iterator.hasNext()) 
        {
            a a1 = (f)iterator.next();
            int k;
            if (a(a1))
            {
                k = i + a1.g() + b(a1).hashCode();
            } else
            {
                k = i;
            }
            i = k;
        }
        return i;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        sz _tmp = CREATOR;
        sz.a(this, parcel);
    }

    static 
    {
        HashMap hashmap = new HashMap();
        f = hashmap;
        hashmap.put("label", d("label", 5));
        f.put("type", a("type", 6, (new ko()).a("home", 0).a("work", 1).a("blog", 2).a("profile", 3).a("other", 4).a("otherProfile", 5).a("contributor", 6).a("website", 7)));
        f.put("value", d("value", 4));
    }

    public ()
    {
        g = 4;
        b = 1;
        a = new HashSet();
    }

    a(Set set, int i, String s, int k, String s1)
    {
        g = 4;
        a = set;
        b = i;
        c = s;
        d = k;
        e = s1;
    }
}
