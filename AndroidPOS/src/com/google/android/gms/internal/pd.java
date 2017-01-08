// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.a.a;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ks, so

public final class pd extends ks
    implements a
{

    public static final so CREATOR = new so();
    private static final HashMap ae;
    String A;
    String B;
    String C;
    pd D;
    String E;
    String F;
    String G;
    String H;
    pd I;
    double J;
    pd K;
    double L;
    String M;
    pd N;
    List O;
    String P;
    String Q;
    String R;
    String S;
    pd T;
    String U;
    String V;
    String W;
    pd X;
    String Y;
    String Z;
    final Set a;
    String aa;
    String ab;
    String ac;
    String ad;
    final int b;
    pd c;
    List d;
    pd e;
    String f;
    String g;
    String h;
    List i;
    int j;
    List k;
    pd l;
    List m;
    String n;
    String o;
    pd p;
    String q;
    String r;
    String s;
    List t;
    String u;
    String v;
    String w;
    String x;
    String y;
    String z;

    public pd()
    {
        b = 1;
        a = new HashSet();
    }

    pd(Set set, int i1, pd pd1, List list, pd pd2, String s1, String s2, 
            String s3, List list1, int j1, List list2, pd pd3, List list3, String s4, 
            String s5, pd pd4, String s6, String s7, String s8, List list4, String s9, 
            String s10, String s11, String s12, String s13, String s14, String s15, String s16, 
            String s17, pd pd5, String s18, String s19, String s20, String s21, pd pd6, 
            double d1, pd pd7, double d2, String s22, pd pd8, 
            List list5, String s23, String s24, String s25, String s26, pd pd9, String s27, 
            String s28, String s29, pd pd10, String s30, String s31, String s32, String s33, 
            String s34, String s35)
    {
        a = set;
        b = i1;
        c = pd1;
        d = list;
        e = pd2;
        f = s1;
        g = s2;
        h = s3;
        i = list1;
        j = j1;
        k = list2;
        l = pd3;
        m = list3;
        n = s4;
        o = s5;
        p = pd4;
        q = s6;
        r = s7;
        s = s8;
        t = list4;
        u = s9;
        v = s10;
        w = s11;
        x = s12;
        y = s13;
        z = s14;
        A = s15;
        B = s16;
        C = s17;
        D = pd5;
        E = s18;
        F = s19;
        G = s20;
        H = s21;
        I = pd6;
        J = d1;
        K = pd7;
        L = d2;
        M = s22;
        N = pd8;
        O = list5;
        P = s23;
        Q = s24;
        R = s25;
        S = s26;
        T = pd9;
        U = s27;
        V = s28;
        W = s29;
        X = pd10;
        Y = s30;
        Z = s31;
        aa = s32;
        ab = s33;
        ac = s34;
        ad = s35;
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
        case 35: // '#'
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
            return g;

        case 7: // '\007'
            return h;

        case 8: // '\b'
            return i;

        case 9: // '\t'
            return Integer.valueOf(j);

        case 10: // '\n'
            return k;

        case 11: // '\013'
            return l;

        case 12: // '\f'
            return m;

        case 13: // '\r'
            return n;

        case 14: // '\016'
            return o;

        case 15: // '\017'
            return p;

        case 16: // '\020'
            return q;

        case 17: // '\021'
            return r;

        case 18: // '\022'
            return s;

        case 19: // '\023'
            return t;

        case 20: // '\024'
            return u;

        case 21: // '\025'
            return v;

        case 22: // '\026'
            return w;

        case 23: // '\027'
            return x;

        case 24: // '\030'
            return y;

        case 25: // '\031'
            return z;

        case 26: // '\032'
            return A;

        case 27: // '\033'
            return B;

        case 28: // '\034'
            return C;

        case 29: // '\035'
            return D;

        case 30: // '\036'
            return E;

        case 31: // '\037'
            return F;

        case 32: // ' '
            return G;

        case 33: // '!'
            return H;

        case 34: // '"'
            return I;

        case 36: // '$'
            return Double.valueOf(J);

        case 37: // '%'
            return K;

        case 38: // '&'
            return Double.valueOf(L);

        case 39: // '\''
            return M;

        case 40: // '('
            return N;

        case 41: // ')'
            return O;

        case 42: // '*'
            return P;

        case 43: // '+'
            return Q;

        case 44: // ','
            return R;

        case 45: // '-'
            return S;

        case 46: // '.'
            return T;

        case 47: // '/'
            return U;

        case 48: // '0'
            return V;

        case 49: // '1'
            return W;

        case 50: // '2'
            return X;

        case 51: // '3'
            return Y;

        case 52: // '4'
            return Z;

        case 53: // '5'
            return aa;

        case 54: // '6'
            return ab;

        case 55: // '7'
            return ac;

        case 56: // '8'
            return ad;
        }
    }

    public final HashMap b()
    {
        return ae;
    }

    public final int describeContents()
    {
        so _tmp = CREATOR;
        return 0;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (!(obj instanceof pd))
            {
                return false;
            }
            if (this == obj)
            {
                return true;
            }
            pd pd1 = (pd)obj;
            kr.a a1;
label1:
            do
            {
                for (Iterator iterator = ae.values().iterator(); iterator.hasNext();)
                {
                    a1 = (kr.a)iterator.next();
                    if (!a(a1))
                    {
                        continue label1;
                    }
                    if (pd1.a(a1))
                    {
                        if (!b(a1).equals(pd1.b(a1)))
                        {
                            return false;
                        }
                    } else
                    {
                        return false;
                    }
                }

                break label0;
            } while (!pd1.a(a1));
            return false;
        }
        return true;
    }

    public final int hashCode()
    {
        Iterator iterator = ae.values().iterator();
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
        so _tmp = CREATOR;
        com.google.android.gms.internal.so.a(this, parcel, i1);
    }

    static 
    {
        HashMap hashmap = new HashMap();
        ae = hashmap;
        hashmap.put("about", com.google.android.gms.internal.kr.a.a("about", 2, com/google/android/gms/internal/pd));
        ae.put("additionalName", com.google.android.gms.internal.kr.a.a("additionalName"));
        ae.put("address", com.google.android.gms.internal.kr.a.a("address", 4, com/google/android/gms/internal/pd));
        ae.put("addressCountry", kr.a.d("addressCountry", 5));
        ae.put("addressLocality", kr.a.d("addressLocality", 6));
        ae.put("addressRegion", kr.a.d("addressRegion", 7));
        ae.put("associated_media", kr.a.b("associated_media", 8, com/google/android/gms/internal/pd));
        ae.put("attendeeCount", com.google.android.gms.internal.kr.a.a("attendeeCount", 9));
        ae.put("attendees", kr.a.b("attendees", 10, com/google/android/gms/internal/pd));
        ae.put("audio", com.google.android.gms.internal.kr.a.a("audio", 11, com/google/android/gms/internal/pd));
        ae.put("author", kr.a.b("author", 12, com/google/android/gms/internal/pd));
        ae.put("bestRating", kr.a.d("bestRating", 13));
        ae.put("birthDate", kr.a.d("birthDate", 14));
        ae.put("byArtist", com.google.android.gms.internal.kr.a.a("byArtist", 15, com/google/android/gms/internal/pd));
        ae.put("caption", kr.a.d("caption", 16));
        ae.put("contentSize", kr.a.d("contentSize", 17));
        ae.put("contentUrl", kr.a.d("contentUrl", 18));
        ae.put("contributor", kr.a.b("contributor", 19, com/google/android/gms/internal/pd));
        ae.put("dateCreated", kr.a.d("dateCreated", 20));
        ae.put("dateModified", kr.a.d("dateModified", 21));
        ae.put("datePublished", kr.a.d("datePublished", 22));
        ae.put("description", kr.a.d("description", 23));
        ae.put("duration", kr.a.d("duration", 24));
        ae.put("embedUrl", kr.a.d("embedUrl", 25));
        ae.put("endDate", kr.a.d("endDate", 26));
        ae.put("familyName", kr.a.d("familyName", 27));
        ae.put("gender", kr.a.d("gender", 28));
        ae.put("geo", com.google.android.gms.internal.kr.a.a("geo", 29, com/google/android/gms/internal/pd));
        ae.put("givenName", kr.a.d("givenName", 30));
        ae.put("height", kr.a.d("height", 31));
        ae.put("id", kr.a.d("id", 32));
        ae.put("image", kr.a.d("image", 33));
        ae.put("inAlbum", com.google.android.gms.internal.kr.a.a("inAlbum", 34, com/google/android/gms/internal/pd));
        ae.put("latitude", kr.a.b("latitude", 36));
        ae.put("location", com.google.android.gms.internal.kr.a.a("location", 37, com/google/android/gms/internal/pd));
        ae.put("longitude", kr.a.b("longitude", 38));
        ae.put("name", kr.a.d("name", 39));
        ae.put("partOfTVSeries", com.google.android.gms.internal.kr.a.a("partOfTVSeries", 40, com/google/android/gms/internal/pd));
        ae.put("performers", kr.a.b("performers", 41, com/google/android/gms/internal/pd));
        ae.put("playerType", kr.a.d("playerType", 42));
        ae.put("postOfficeBoxNumber", kr.a.d("postOfficeBoxNumber", 43));
        ae.put("postalCode", kr.a.d("postalCode", 44));
        ae.put("ratingValue", kr.a.d("ratingValue", 45));
        ae.put("reviewRating", com.google.android.gms.internal.kr.a.a("reviewRating", 46, com/google/android/gms/internal/pd));
        ae.put("startDate", kr.a.d("startDate", 47));
        ae.put("streetAddress", kr.a.d("streetAddress", 48));
        ae.put("text", kr.a.d("text", 49));
        ae.put("thumbnail", com.google.android.gms.internal.kr.a.a("thumbnail", 50, com/google/android/gms/internal/pd));
        ae.put("thumbnailUrl", kr.a.d("thumbnailUrl", 51));
        ae.put("tickerSymbol", kr.a.d("tickerSymbol", 52));
        ae.put("type", kr.a.d("type", 53));
        ae.put("url", kr.a.d("url", 54));
        ae.put("width", kr.a.d("width", 55));
        ae.put("worstRating", kr.a.d("worstRating", 56));
    }
}
