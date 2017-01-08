// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.b.f;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ks, sv

public final class c extends ks
    implements f
{

    public static final sv CREATOR = new sv();
    private static final HashMap d;
    final Set a;
    final int b;
    String c;

    public final Object a()
    {
        return this;
    }

    protected final boolean a(c c1)
    {
        return a.contains(Integer.valueOf(c1.g()));
    }

    protected final Object b(g g)
    {
        switch (g.g())
        {
        default:
            throw new IllegalStateException((new StringBuilder("Unknown safe parcelable id=")).append(g.g()).toString());

        case 2: // '\002'
            return c;
        }
    }

    public final HashMap b()
    {
        return d;
    }

    public final int describeContents()
    {
        sv _tmp = CREATOR;
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
                for (Iterator iterator = d.values().iterator(); iterator.hasNext();)
                {
                    creator1 = (d)iterator.next();
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
        Iterator iterator = d.values().iterator();
        int i = 0;
        while (iterator.hasNext()) 
        {
            a a1 = (d)iterator.next();
            int j;
            if (a(a1))
            {
                j = i + a1.g() + b(a1).hashCode();
            } else
            {
                j = i;
            }
            i = j;
        }
        return i;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        sv _tmp = CREATOR;
        sv.a(this, parcel);
    }

    static 
    {
        HashMap hashmap = new HashMap();
        d = hashmap;
        hashmap.put("url", d("url", 2));
    }

    public ()
    {
        b = 1;
        a = new HashSet();
    }

    a(Set set, int i, String s)
    {
        a = set;
        b = i;
        c = s;
    }
}
