// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            m, AppContentCondition, AppContentConditionEntity, g

public final class AppContentConditionRef extends m
    implements AppContentCondition
{

    AppContentConditionRef(ArrayList arraylist, int i)
    {
        super(arraylist, 4, i);
    }

    private AppContentCondition f()
    {
        return new AppContentConditionEntity(this);
    }

    public final Object a()
    {
        return f();
    }

    public final String c()
    {
        return e("condition_expected_value");
    }

    public final String d()
    {
        return e("condition_predicate");
    }

    public final int describeContents()
    {
        return 0;
    }

    public final Bundle e()
    {
        return g.d(a, c, "condition_predicate_parameters", b);
    }

    public final boolean equals(Object obj)
    {
        return AppContentConditionEntity.a(this, obj);
    }

    public final String g_()
    {
        return e("condition_default_value");
    }

    public final int hashCode()
    {
        return AppContentConditionEntity.a(this);
    }

    public final String toString()
    {
        return AppContentConditionEntity.b(this);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        ((AppContentConditionEntity)f()).writeToParcel(parcel, i);
    }
}
