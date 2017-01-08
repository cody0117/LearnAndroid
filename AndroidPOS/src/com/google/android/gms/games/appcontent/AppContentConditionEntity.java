// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            AppContentCondition, d

public final class AppContentConditionEntity
    implements SafeParcelable, AppContentCondition
{

    public static final d CREATOR = new d();
    private final int a;
    private final String b;
    private final String c;
    private final String d;
    private final Bundle e;

    AppContentConditionEntity(int i, String s, String s1, String s2, Bundle bundle)
    {
        a = i;
        b = s;
        c = s1;
        d = s2;
        e = bundle;
    }

    public AppContentConditionEntity(AppContentCondition appcontentcondition)
    {
        a = 1;
        b = appcontentcondition.g_();
        c = appcontentcondition.g_();
        d = appcontentcondition.d();
        e = appcontentcondition.e();
    }

    static int a(AppContentCondition appcontentcondition)
    {
        Object aobj[] = new Object[4];
        aobj[0] = appcontentcondition.g_();
        aobj[1] = appcontentcondition.c();
        aobj[2] = appcontentcondition.d();
        aobj[3] = appcontentcondition.e();
        return Arrays.hashCode(aobj);
    }

    static boolean a(AppContentCondition appcontentcondition, Object obj)
    {
        if (obj instanceof AppContentCondition)
        {
            if (appcontentcondition == obj)
            {
                return true;
            }
            AppContentCondition appcontentcondition1 = (AppContentCondition)obj;
            if (pt.a(appcontentcondition1.g_(), appcontentcondition.g_()) && pt.a(appcontentcondition1.c(), appcontentcondition.c()) && pt.a(appcontentcondition1.d(), appcontentcondition.d()) && pt.a(appcontentcondition1.e(), appcontentcondition.e()))
            {
                return true;
            }
        }
        return false;
    }

    static String b(AppContentCondition appcontentcondition)
    {
        return pt.a(appcontentcondition).a("DefaultValue", appcontentcondition.g_()).a("ExpectedValue", appcontentcondition.c()).a("Predicate", appcontentcondition.d()).a("PredicateParameters", appcontentcondition.e()).toString();
    }

    public final Object a()
    {
        return this;
    }

    public final String c()
    {
        return c;
    }

    public final String d()
    {
        return d;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final Bundle e()
    {
        return e;
    }

    public final boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public final int f()
    {
        return a;
    }

    public final String g_()
    {
        return b;
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
        com.google.android.gms.games.appcontent.d.a(this, parcel);
    }

}
