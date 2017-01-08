// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.b.d;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ks, st

public final class d extends ks
    implements d
{

    public static final st CREATOR = new st();
    private static final HashMap e;
    final Set a;
    final int b;
    int c;
    int d;

    public final Object a()
    {
        return this;
    }

    protected final boolean a(d d1)
    {
        return a.contains(Integer.valueOf(d1.a()));
    }

    protected final Object b(a a1)
    {
        switch (a1.a())
        {
        default:
            throw new IllegalStateException((new StringBuilder("Unknown safe parcelable id=")).append(a1.a()).toString());

        case 2: // '\002'
            return Integer.valueOf(c);

        case 3: // '\003'
            return Integer.valueOf(d);
        }
    }

    public final HashMap b()
    {
        return e;
    }

    public final int describeContents()
    {
        st _tmp = CREATOR;
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
                for (Iterator iterator = e.values().iterator(); iterator.hasNext();)
                {
                    creator1 = (e)iterator.next();
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
        Iterator iterator = e.values().iterator();
        int i = 0;
        while (iterator.hasNext()) 
        {
            a a1 = (e)iterator.next();
            int j;
            if (a(a1))
            {
                j = i + a1.a() + b(a1).hashCode();
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
        st _tmp = CREATOR;
        st.a(this, parcel);
    }

    static 
    {
        HashMap hashmap = new HashMap();
        e = hashmap;
        hashmap.put("leftImageOffset", e("leftImageOffset", 2));
        e.put("topImageOffset", e("topImageOffset", 3));
    }

    public ()
    {
        b = 1;
        a = new HashSet();
    }

    a(Set set, int i, int j, int k)
    {
        a = set;
        b = i;
        c = j;
        d = k;
    }
}
