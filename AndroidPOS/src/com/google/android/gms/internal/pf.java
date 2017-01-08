// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.a.b;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ks, sp, pd

public final class pf extends ks
    implements b
{

    public static final sp CREATOR = new sp();
    private static final HashMap h;
    final Set a;
    final int b;
    String c;
    pd d;
    String e;
    pd f;
    String g;

    public pf()
    {
        b = 1;
        a = new HashSet();
    }

    pf(Set set, int i, String s, pd pd1, String s1, pd pd2, String s2)
    {
        a = set;
        b = i;
        c = s;
        d = pd1;
        e = s1;
        f = pd2;
        g = s2;
    }

    public final Object a()
    {
        return this;
    }

    protected final boolean a(kr.a a1)
    {
        return a.contains(Integer.valueOf(a1.g()));
    }

    protected final Object b(kr.a a1)
    {
        switch (a1.g())
        {
        case 3: // '\003'
        default:
            throw new IllegalStateException((new StringBuilder("Unknown safe parcelable id=")).append(a1.g()).toString());

        case 2: // '\002'
            return c;

        case 4: // '\004'
            return d;

        case 5: // '\005'
            return e;

        case 6: // '\006'
            return f;

        case 7: // '\007'
            return g;
        }
    }

    public final HashMap b()
    {
        return h;
    }

    public final int describeContents()
    {
        sp _tmp = CREATOR;
        return 0;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (!(obj instanceof pf))
            {
                return false;
            }
            if (this == obj)
            {
                return true;
            }
            pf pf1 = (pf)obj;
            kr.a a1;
label1:
            do
            {
                for (Iterator iterator = h.values().iterator(); iterator.hasNext();)
                {
                    a1 = (kr.a)iterator.next();
                    if (!a(a1))
                    {
                        continue label1;
                    }
                    if (pf1.a(a1))
                    {
                        if (!b(a1).equals(pf1.b(a1)))
                        {
                            return false;
                        }
                    } else
                    {
                        return false;
                    }
                }

                break label0;
            } while (!pf1.a(a1));
            return false;
        }
        return true;
    }

    public final int hashCode()
    {
        Iterator iterator = h.values().iterator();
        int i = 0;
        while (iterator.hasNext()) 
        {
            kr.a a1 = (kr.a)iterator.next();
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
        sp _tmp = CREATOR;
        sp.a(this, parcel, i);
    }

    static 
    {
        HashMap hashmap = new HashMap();
        h = hashmap;
        hashmap.put("id", kr.a.d("id", 2));
        h.put("result", kr.a.a("result", 4, com/google/android/gms/internal/pd));
        h.put("startDate", kr.a.d("startDate", 5));
        h.put("target", kr.a.a("target", 6, com/google/android/gms/internal/pd));
        h.put("type", kr.a.d("type", 7));
    }
}
