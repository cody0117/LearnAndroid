// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.net.Uri;
import android.os.Parcel;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            m, AppContentAnnotation, AppContentAnnotationEntity

public final class AppContentAnnotationRef extends m
    implements AppContentAnnotation
{

    AppContentAnnotationRef(ArrayList arraylist, int i)
    {
        super(arraylist, 2, i);
    }

    private AppContentAnnotation f()
    {
        return new AppContentAnnotationEntity(this);
    }

    public final Object a()
    {
        return f();
    }

    public final Uri c()
    {
        return h("annotation_image_uri");
    }

    public final String d()
    {
        return e("annotation_title");
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String e()
    {
        return e("annotation_type");
    }

    public final String e_()
    {
        return e("annotation_description");
    }

    public final boolean equals(Object obj)
    {
        return AppContentAnnotationEntity.a(this, obj);
    }

    public final int hashCode()
    {
        return AppContentAnnotationEntity.a(this);
    }

    public final String toString()
    {
        return AppContentAnnotationEntity.b(this);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        ((AppContentAnnotationEntity)f()).writeToParcel(parcel, i);
    }
}
