// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.b.e;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ks, su

public final class e extends ks
    implements e
{

    public static final su CREATOR = new su();
    private static final HashMap f;
    final Set a;
    final int b;
    int c;
    String d;
    int e;

    public final Object a()
    {
        return this;
    }

    protected final boolean a(e e1)
    {
        return a.contains(Integer.valueOf(e1.a()));
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
        su _tmp = CREATOR;
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
        su _tmp = CREATOR;
        su.a(this, parcel);
    }

    static 
    {
        HashMap hashmap = new HashMap();
        f = hashmap;
        hashmap.put("height", f("height", 2));
        f.put("url", f("url", 3));
        f.put("width", f("width", 4));
    }

    public ()
    {
        b = 1;
        a = new HashSet();
    }

    a(Set set, int i, int j, String s, int k)
    {
        a = set;
        b = i;
        c = j;
        d = s;
        e = k;
    }
}
