// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            AppContentCard, c, AppContentAction, AppContentActionEntity, 
//            AppContentAnnotation, AppContentAnnotationEntity, AppContentCondition, AppContentConditionEntity

public final class AppContentCardEntity
    implements SafeParcelable, AppContentCard
{

    public static final c CREATOR = new c();
    private final int a;
    private final ArrayList b;
    private final ArrayList c;
    private final ArrayList d;
    private final String e;
    private final int f;
    private final String g;
    private final Bundle h;
    private final Uri i;
    private final Uri j;
    private final String k;
    private final String l;
    private final int m;
    private final String n;

    AppContentCardEntity(int i1, ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2, String s, int j1, String s1, 
            Bundle bundle, Uri uri, Uri uri1, String s2, String s3, int k1, String s4)
    {
        a = i1;
        b = arraylist;
        c = arraylist1;
        d = arraylist2;
        e = s;
        f = j1;
        g = s1;
        h = bundle;
        i = uri;
        j = uri1;
        k = s2;
        l = s3;
        m = k1;
        n = s4;
    }

    public AppContentCardEntity(AppContentCard appcontentcard)
    {
        int i1 = 0;
        super();
        a = 1;
        e = appcontentcard.e();
        f = appcontentcard.f();
        g = appcontentcard.g();
        h = appcontentcard.h();
        i = appcontentcard.i();
        j = appcontentcard.j();
        l = appcontentcard.l();
        k = appcontentcard.k();
        m = appcontentcard.m();
        n = appcontentcard.n();
        List list = appcontentcard.f_();
        int j1 = list.size();
        b = new ArrayList(j1);
        for (int k1 = 0; k1 < j1; k1++)
        {
            b.add((AppContentActionEntity)((AppContentAction)list.get(k1)).a());
        }

        List list1 = appcontentcard.c();
        int l1 = list1.size();
        c = new ArrayList(l1);
        for (int i2 = 0; i2 < l1; i2++)
        {
            c.add((AppContentAnnotationEntity)((AppContentAnnotation)list1.get(i2)).a());
        }

        List list2 = appcontentcard.d();
        int j2 = list2.size();
        d = new ArrayList(j2);
        for (; i1 < j2; i1++)
        {
            d.add((AppContentConditionEntity)((AppContentCondition)list2.get(i1)).a());
        }

    }

    static int a(AppContentCard appcontentcard)
    {
        Object aobj[] = new Object[13];
        aobj[0] = appcontentcard.f_();
        aobj[1] = appcontentcard.c();
        aobj[2] = appcontentcard.d();
        aobj[3] = appcontentcard.e();
        aobj[4] = Integer.valueOf(appcontentcard.f());
        aobj[5] = appcontentcard.g();
        aobj[6] = appcontentcard.h();
        aobj[7] = appcontentcard.i();
        aobj[8] = appcontentcard.j();
        aobj[9] = appcontentcard.k();
        aobj[10] = appcontentcard.l();
        aobj[11] = Integer.valueOf(appcontentcard.m());
        aobj[12] = appcontentcard.n();
        return Arrays.hashCode(aobj);
    }

    static boolean a(AppContentCard appcontentcard, Object obj)
    {
        if (obj instanceof AppContentCard)
        {
            if (appcontentcard == obj)
            {
                return true;
            }
            AppContentCard appcontentcard1 = (AppContentCard)obj;
            if (pt.a(appcontentcard1.f_(), appcontentcard.f_()) && pt.a(appcontentcard1.c(), appcontentcard.c()) && pt.a(appcontentcard1.d(), appcontentcard.d()) && pt.a(appcontentcard1.e(), appcontentcard.e()) && pt.a(Integer.valueOf(appcontentcard1.f()), Integer.valueOf(appcontentcard.f())) && pt.a(appcontentcard1.g(), appcontentcard.g()) && pt.a(appcontentcard1.h(), appcontentcard.h()) && pt.a(appcontentcard1.i(), appcontentcard.i()) && pt.a(appcontentcard1.j(), appcontentcard.j()) && pt.a(appcontentcard1.k(), appcontentcard.k()) && pt.a(appcontentcard1.l(), appcontentcard.l()) && pt.a(Integer.valueOf(appcontentcard1.m()), Integer.valueOf(appcontentcard.m())) && pt.a(appcontentcard1.n(), appcontentcard.n()))
            {
                return true;
            }
        }
        return false;
    }

    static String b(AppContentCard appcontentcard)
    {
        return pt.a(appcontentcard).a("Actions", appcontentcard.f_()).a("Annotations", appcontentcard.c()).a("Conditions", appcontentcard.d()).a("ContentDescription", appcontentcard.e()).a("CurrentSteps", Integer.valueOf(appcontentcard.f())).a("Description", appcontentcard.g()).a("ExtraData", appcontentcard.h()).a("IconImageUri", appcontentcard.i()).a("ImageUri", appcontentcard.j()).a("Subtitle", appcontentcard.k()).a("Title", appcontentcard.l()).a("TotalSteps", Integer.valueOf(appcontentcard.m())).a("Type", appcontentcard.n()).toString();
    }

    public final Object a()
    {
        return this;
    }

    public final List c()
    {
        return new ArrayList(c);
    }

    public final List d()
    {
        return new ArrayList(d);
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String e()
    {
        return e;
    }

    public final boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public final int f()
    {
        return f;
    }

    public final List f_()
    {
        return new ArrayList(b);
    }

    public final String g()
    {
        return g;
    }

    public final Bundle h()
    {
        return h;
    }

    public final int hashCode()
    {
        return a(this);
    }

    public final Uri i()
    {
        return i;
    }

    public final Uri j()
    {
        return j;
    }

    public final String k()
    {
        return k;
    }

    public final String l()
    {
        return l;
    }

    public final int m()
    {
        return m;
    }

    public final String n()
    {
        return n;
    }

    public final int o()
    {
        return a;
    }

    public final String toString()
    {
        return b(this);
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        com.google.android.gms.games.appcontent.c.a(this, parcel, i1);
    }

}
