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
//            m, AppContentSection, AppContentSectionEntity, AppContentCardRef, 
//            g

public final class AppContentSectionRef extends m
    implements AppContentSection
{

    private final int d;

    private AppContentSection j()
    {
        return new AppContentSectionEntity(this);
    }

    public final Object a()
    {
        return j();
    }

    public final Uri c()
    {
        return h("section_background_image_uri");
    }

    public final List d()
    {
        ArrayList arraylist = new ArrayList(d);
        for (int k = 0; k < d; k++)
        {
            arraylist.add(new AppContentCardRef(c, k + b));
        }

        return arraylist;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String e()
    {
        return e("section_content_description");
    }

    public final boolean equals(Object obj)
    {
        return AppContentSectionEntity.a(this, obj);
    }

    public final Bundle f()
    {
        return com.google.android.gms.games.appcontent.g.d(a, c, "section_data", b);
    }

    public final String g()
    {
        return e("section_subtitle");
    }

    public final String h()
    {
        return e("section_title");
    }

    public final List h_()
    {
        return com.google.android.gms.games.appcontent.g.a(a, c, "section_actions", b);
    }

    public final int hashCode()
    {
        return AppContentSectionEntity.a(this);
    }

    public final String i()
    {
        return e("section_type");
    }

    public final String toString()
    {
        return AppContentSectionEntity.b(this);
    }

    public final void writeToParcel(Parcel parcel, int k)
    {
        ((AppContentSectionEntity)j()).writeToParcel(parcel, k);
    }
}
