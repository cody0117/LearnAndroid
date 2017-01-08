// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            m, AppContentCard, AppContentCardEntity, g

public final class AppContentCardRef extends m
    implements AppContentCard
{

    AppContentCardRef(ArrayList arraylist, int i1)
    {
        super(arraylist, 0, i1);
    }

    private AppContentCard o()
    {
        return new AppContentCardEntity(this);
    }

    public final Object a()
    {
        return o();
    }

    public final List c()
    {
        return com.google.android.gms.games.appcontent.g.b(a, c, "card_annotations", b);
    }

    public final List d()
    {
        return com.google.android.gms.games.appcontent.g.c(a, c, "card_conditions", b);
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String e()
    {
        return e("card_content_description");
    }

    public final boolean equals(Object obj)
    {
        return AppContentCardEntity.a(this, obj);
    }

    public final int f()
    {
        return c("card_current_steps");
    }

    public final List f_()
    {
        return com.google.android.gms.games.appcontent.g.a(a, c, "card_actions", b);
    }

    public final String g()
    {
        return e("card_description");
    }

    public final Bundle h()
    {
        return com.google.android.gms.games.appcontent.g.d(a, c, "card_data", b);
    }

    public final int hashCode()
    {
        return AppContentCardEntity.a(this);
    }

    public final Uri i()
    {
        return h("card_icon_image_uri");
    }

    public final Uri j()
    {
        return h("card_image_uri");
    }

    public final String k()
    {
        return e("card_subtitle");
    }

    public final String l()
    {
        return e("card_title");
    }

    public final int m()
    {
        return c("card_total_steps");
    }

    public final String n()
    {
        return e("card_type");
    }

    public final String toString()
    {
        return AppContentCardEntity.b(this);
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        ((AppContentCardEntity)o()).writeToParcel(parcel, i1);
    }
}
