// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.b.c;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ks, ss, ko

public final class e extends ks
    implements c
{

    public static final ss CREATOR = new ss();
    private static final HashMap f;
    final Set a;
    final int b;
    a c;
    b d;
    int e;

    public final Object a()
    {
        return this;
    }

    protected final boolean a(e e1)
    {
        return a.contains(Integer.valueOf(e1.g()));
    }

    protected final Object b(g g)
    {
        switch (g.g())
        {
        default:
            throw new IllegalStateException((new StringBuilder("Unknown safe parcelable id=")).append(g.g()).toString());

        case 2: // '\002'
            return c;

        case 3: // '\003'
            return d;

        case 4: // '\004'
            return Integer.valueOf(e);
        }
    }

    public final HashMap b()
    {
        return f;
    }

    public final int describeContents()
    {
        ss _tmp = CREATOR;
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
        ss _tmp = CREATOR;
        ss.a(this, parcel, i);
    }

    static 
    {
        HashMap hashmap = new HashMap();
        f = hashmap;
        hashmap.put("coverInfo", a("coverInfo", 2, com/google/android/gms/internal/pi$b$a));
        f.put("coverPhoto", a("coverPhoto", 3, com/google/android/gms/internal/pi$b$b));
        f.put("layout", a("layout", 4, (new ko()).a("banner", 0)));
    }

    public b()
    {
        b = 1;
        a = new HashSet();
    }

    b(Set set, int i, a a1, b b1, int j)
    {
        a = set;
        b = i;
        c = a1;
        d = b1;
        e = j;
    }
}
