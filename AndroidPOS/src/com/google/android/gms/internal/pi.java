// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.b.a;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ks, sq, ko

public final class pi extends ks
    implements a
{

    private static final HashMap A;
    public static final sq CREATOR = new sq();
    final Set a;
    final int b;
    String c;
    a d;
    String e;
    String f;
    int g;
    b h;
    String i;
    String j;
    int k;
    String l;
    c m;
    boolean n;
    String o;
    d p;
    String q;
    int r;
    List s;
    List t;
    int u;
    int v;
    String w;
    String x;
    List y;
    boolean z;

    public pi()
    {
        b = 1;
        a = new HashSet();
    }

    pi(Set set, int i1, String s1, a a1, String s2, String s3, int j1, 
            b b1, String s4, String s5, int k1, String s6, c c1, boolean flag, 
            String s7, d d1, String s8, int l1, List list, List list1, int i2, 
            int j2, String s9, String s10, List list2, boolean flag1)
    {
        a = set;
        b = i1;
        c = s1;
        d = a1;
        e = s2;
        f = s3;
        g = j1;
        h = b1;
        i = s4;
        j = s5;
        k = k1;
        l = s6;
        m = c1;
        n = flag;
        o = s7;
        p = d1;
        q = s8;
        r = l1;
        s = list;
        t = list1;
        u = i2;
        v = j2;
        w = s9;
        x = s10;
        y = list2;
        z = flag1;
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
        case 10: // '\n'
        case 11: // '\013'
        case 13: // '\r'
        case 17: // '\021'
        default:
            throw new IllegalStateException((new StringBuilder("Unknown safe parcelable id=")).append(a1.g()).toString());

        case 2: // '\002'
            return c;

        case 3: // '\003'
            return d;

        case 4: // '\004'
            return e;

        case 5: // '\005'
            return f;

        case 6: // '\006'
            return Integer.valueOf(g);

        case 7: // '\007'
            return h;

        case 8: // '\b'
            return i;

        case 9: // '\t'
            return j;

        case 12: // '\f'
            return Integer.valueOf(k);

        case 14: // '\016'
            return l;

        case 15: // '\017'
            return m;

        case 16: // '\020'
            return Boolean.valueOf(n);

        case 18: // '\022'
            return o;

        case 19: // '\023'
            return p;

        case 20: // '\024'
            return q;

        case 21: // '\025'
            return Integer.valueOf(r);

        case 22: // '\026'
            return s;

        case 23: // '\027'
            return t;

        case 24: // '\030'
            return Integer.valueOf(u);

        case 25: // '\031'
            return Integer.valueOf(v);

        case 26: // '\032'
            return w;

        case 27: // '\033'
            return x;

        case 28: // '\034'
            return y;

        case 29: // '\035'
            return Boolean.valueOf(z);
        }
    }

    public final HashMap b()
    {
        return A;
    }

    public final int describeContents()
    {
        sq _tmp = CREATOR;
        return 0;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (!(obj instanceof pi))
            {
                return false;
            }
            if (this == obj)
            {
                return true;
            }
            pi pi1 = (pi)obj;
            kr.a a1;
label1:
            do
            {
                for (Iterator iterator = A.values().iterator(); iterator.hasNext();)
                {
                    a1 = (kr.a)iterator.next();
                    if (!a(a1))
                    {
                        continue label1;
                    }
                    if (pi1.a(a1))
                    {
                        if (!b(a1).equals(pi1.b(a1)))
                        {
                            return false;
                        }
                    } else
                    {
                        return false;
                    }
                }

                break label0;
            } while (!pi1.a(a1));
            return false;
        }
        return true;
    }

    public final int hashCode()
    {
        Iterator iterator = A.values().iterator();
        int i1 = 0;
        while (iterator.hasNext()) 
        {
            kr.a a1 = (kr.a)iterator.next();
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
        sq _tmp = CREATOR;
        com.google.android.gms.internal.sq.a(this, parcel, i1);
    }

    static 
    {
        HashMap hashmap = new HashMap();
        A = hashmap;
        hashmap.put("aboutMe", kr.a.d("aboutMe", 2));
        A.put("ageRange", com.google.android.gms.internal.kr.a.a("ageRange", 3, com/google/android/gms/internal/pi$a));
        A.put("birthday", kr.a.d("birthday", 4));
        A.put("braggingRights", kr.a.d("braggingRights", 5));
        A.put("circledByCount", com.google.android.gms.internal.kr.a.a("circledByCount", 6));
        A.put("cover", com.google.android.gms.internal.kr.a.a("cover", 7, com/google/android/gms/internal/pi$b));
        A.put("currentLocation", kr.a.d("currentLocation", 8));
        A.put("displayName", kr.a.d("displayName", 9));
        A.put("gender", com.google.android.gms.internal.kr.a.a("gender", 12, (new ko()).a("male", 0).a("female", 1).a("other", 2)));
        A.put("id", kr.a.d("id", 14));
        A.put("image", com.google.android.gms.internal.kr.a.a("image", 15, com/google/android/gms/internal/pi$c));
        A.put("isPlusUser", kr.a.c("isPlusUser", 16));
        A.put("language", kr.a.d("language", 18));
        A.put("name", com.google.android.gms.internal.kr.a.a("name", 19, com/google/android/gms/internal/pi$d));
        A.put("nickname", kr.a.d("nickname", 20));
        A.put("objectType", com.google.android.gms.internal.kr.a.a("objectType", 21, (new ko()).a("person", 0).a("page", 1)));
        A.put("organizations", kr.a.b("organizations", 22, com/google/android/gms/internal/pi$f));
        A.put("placesLived", kr.a.b("placesLived", 23, com/google/android/gms/internal/pi$g));
        A.put("plusOneCount", com.google.android.gms.internal.kr.a.a("plusOneCount", 24));
        A.put("relationshipStatus", com.google.android.gms.internal.kr.a.a("relationshipStatus", 25, (new ko()).a("single", 0).a("in_a_relationship", 1).a("engaged", 2).a("married", 3).a("its_complicated", 4).a("open_relationship", 5).a("widowed", 6).a("in_domestic_partnership", 7).a("in_civil_union", 8)));
        A.put("tagline", kr.a.d("tagline", 26));
        A.put("url", kr.a.d("url", 27));
        A.put("urls", kr.a.b("urls", 28, com/google/android/gms/internal/pi$h));
        A.put("verified", kr.a.c("verified", 29));
    }
}
