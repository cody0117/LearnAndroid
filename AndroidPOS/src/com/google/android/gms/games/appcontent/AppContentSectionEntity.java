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
//            AppContentSection, e, AppContentAction, AppContentActionEntity, 
//            AppContentCard, AppContentCardEntity

public final class AppContentSectionEntity
    implements SafeParcelable, AppContentSection
{

    public static final e CREATOR = new e();
    private final int a;
    private final ArrayList b;
    private final Uri c;
    private final ArrayList d;
    private final String e;
    private final Bundle f;
    private final String g;
    private final String h;
    private final String i;

    AppContentSectionEntity(int k, ArrayList arraylist, Uri uri, ArrayList arraylist1, String s, Bundle bundle, String s1, 
            String s2, String s3)
    {
        a = k;
        b = arraylist;
        c = uri;
        d = arraylist1;
        e = s;
        f = bundle;
        g = s1;
        h = s2;
        i = s3;
    }

    public AppContentSectionEntity(AppContentSection appcontentsection)
    {
        int k = 0;
        super();
        a = 1;
        c = appcontentsection.c();
        e = appcontentsection.e();
        f = appcontentsection.f();
        g = appcontentsection.g();
        h = appcontentsection.h();
        i = appcontentsection.i();
        List list = appcontentsection.h_();
        int l = list.size();
        b = new ArrayList(l);
        for (int i1 = 0; i1 < l; i1++)
        {
            b.add((AppContentActionEntity)((AppContentAction)list.get(i1)).a());
        }

        List list1 = appcontentsection.d();
        int j1 = list1.size();
        d = new ArrayList(j1);
        for (; k < j1; k++)
        {
            d.add((AppContentCardEntity)((AppContentCard)list1.get(k)).a());
        }

    }

    static int a(AppContentSection appcontentsection)
    {
        Object aobj[] = new Object[8];
        aobj[0] = appcontentsection.h_();
        aobj[1] = appcontentsection.c();
        aobj[2] = appcontentsection.d();
        aobj[3] = appcontentsection.e();
        aobj[4] = appcontentsection.f();
        aobj[5] = appcontentsection.g();
        aobj[6] = appcontentsection.h();
        aobj[7] = appcontentsection.i();
        return Arrays.hashCode(aobj);
    }

    static boolean a(AppContentSection appcontentsection, Object obj)
    {
        if (obj instanceof AppContentSection)
        {
            if (appcontentsection == obj)
            {
                return true;
            }
            AppContentSection appcontentsection1 = (AppContentSection)obj;
            if (pt.a(appcontentsection1.h_(), appcontentsection.h_()) && pt.a(appcontentsection1.c(), appcontentsection.c()) && pt.a(appcontentsection1.d(), appcontentsection.d()) && pt.a(appcontentsection1.e(), appcontentsection.e()) && pt.a(appcontentsection1.f(), appcontentsection.f()) && pt.a(appcontentsection1.g(), appcontentsection.g()) && pt.a(appcontentsection1.h(), appcontentsection.h()) && pt.a(appcontentsection1.i(), appcontentsection.i()))
            {
                return true;
            }
        }
        return false;
    }

    static String b(AppContentSection appcontentsection)
    {
        return pt.a(appcontentsection).a("Actions", appcontentsection.h_()).a("BackgroundImageUri", appcontentsection.c()).a("Cards", appcontentsection.d()).a("ContentDescription", appcontentsection.e()).a("ExtraData", appcontentsection.f()).a("Subtitle", appcontentsection.g()).a("Title", appcontentsection.h()).a("Type", appcontentsection.i()).toString();
    }

    public final Object a()
    {
        return this;
    }

    public final Uri c()
    {
        return c;
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

    public final Bundle f()
    {
        return f;
    }

    public final String g()
    {
        return g;
    }

    public final String h()
    {
        return h;
    }

    public final List h_()
    {
        return new ArrayList(b);
    }

    public final int hashCode()
    {
        return a(this);
    }

    public final String i()
    {
        return i;
    }

    public final int j()
    {
        return a;
    }

    public final String toString()
    {
        return b(this);
    }

    public final void writeToParcel(Parcel parcel, int k)
    {
        com.google.android.gms.games.appcontent.e.a(this, parcel, k);
    }

}
