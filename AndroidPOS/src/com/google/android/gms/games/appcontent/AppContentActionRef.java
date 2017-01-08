// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            m, AppContentAction, AppContentActionEntity, g

public final class AppContentActionRef extends m
    implements AppContentAction
{

    AppContentActionRef(ArrayList arraylist, int i)
    {
        super(arraylist, 1, i);
    }

    private AppContentAction h()
    {
        return new AppContentActionEntity(this);
    }

    public final Object a()
    {
        return h();
    }

    public final String c()
    {
        return e("action_content_description");
    }

    public final Bundle d()
    {
        return com.google.android.gms.games.appcontent.g.d(a, c, "action_data", b);
    }

    public final List d_()
    {
        return com.google.android.gms.games.appcontent.g.c(a, c, "action_conditions", b);
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String e()
    {
        return e("action_label");
    }

    public final boolean equals(Object obj)
    {
        return AppContentActionEntity.a(this, obj);
    }

    public final String f()
    {
        return e("action_label_style");
    }

    public final String g()
    {
        return e("action_type");
    }

    public final int hashCode()
    {
        return AppContentActionEntity.a(this);
    }

    public final String toString()
    {
        return AppContentActionEntity.b(this);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        ((AppContentActionEntity)h()).writeToParcel(parcel, i);
    }
}
