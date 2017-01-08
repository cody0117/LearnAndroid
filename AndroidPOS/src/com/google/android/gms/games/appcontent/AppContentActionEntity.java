// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            AppContentAction, a, AppContentCondition, AppContentConditionEntity

public final class AppContentActionEntity
    implements SafeParcelable, AppContentAction
{

    public static final a CREATOR = new a();
    private final int a;
    private final ArrayList b;
    private final String c;
    private final Bundle d;
    private final String e;
    private final String f;
    private final String g;

    AppContentActionEntity(int i, ArrayList arraylist, String s, Bundle bundle, String s1, String s2, String s3)
    {
        a = i;
        b = arraylist;
        c = s;
        d = bundle;
        e = s1;
        f = s2;
        g = s3;
    }

    public AppContentActionEntity(AppContentAction appcontentaction)
    {
        a = 1;
        c = appcontentaction.c();
        d = appcontentaction.d();
        e = appcontentaction.e();
        f = appcontentaction.f();
        g = appcontentaction.g();
        List list = appcontentaction.d_();
        int i = list.size();
        b = new ArrayList(i);
        for (int j = 0; j < i; j++)
        {
            b.add((AppContentConditionEntity)((AppContentCondition)list.get(j)).a());
        }

    }

    static int a(AppContentAction appcontentaction)
    {
        Object aobj[] = new Object[6];
        aobj[0] = appcontentaction.d_();
        aobj[1] = appcontentaction.c();
        aobj[2] = appcontentaction.d();
        aobj[3] = appcontentaction.e();
        aobj[4] = appcontentaction.f();
        aobj[5] = appcontentaction.g();
        return Arrays.hashCode(aobj);
    }

    static boolean a(AppContentAction appcontentaction, Object obj)
    {
        if (obj instanceof AppContentAction)
        {
            if (appcontentaction == obj)
            {
                return true;
            }
            AppContentAction appcontentaction1 = (AppContentAction)obj;
            if (pt.a(appcontentaction1.d_(), appcontentaction.d_()) && pt.a(appcontentaction1.c(), appcontentaction.c()) && pt.a(appcontentaction1.d(), appcontentaction.d()) && pt.a(appcontentaction1.e(), appcontentaction.e()) && pt.a(appcontentaction1.f(), appcontentaction.f()) && pt.a(appcontentaction1.g(), appcontentaction.g()))
            {
                return true;
            }
        }
        return false;
    }

    static String b(AppContentAction appcontentaction)
    {
        return pt.a(appcontentaction).a("Conditions", appcontentaction.d_()).a("ContentDescription", appcontentaction.c()).a("Extras", appcontentaction.d()).a("Label", appcontentaction.e()).a("LabelStyle", appcontentaction.f()).a("Type", appcontentaction.g()).toString();
    }

    public final Object a()
    {
        return this;
    }

    public final String c()
    {
        return c;
    }

    public final Bundle d()
    {
        return d;
    }

    public final List d_()
    {
        return new ArrayList(b);
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

    public final String f()
    {
        return f;
    }

    public final String g()
    {
        return g;
    }

    public final int h()
    {
        return a;
    }

    public final int hashCode()
    {
        return a(this);
    }

    public final String toString()
    {
        return b(this);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.games.appcontent.a.a(this, parcel);
    }

}
