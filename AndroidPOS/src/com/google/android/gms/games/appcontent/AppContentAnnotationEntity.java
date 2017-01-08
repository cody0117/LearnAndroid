// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            AppContentAnnotation, b

public final class AppContentAnnotationEntity
    implements SafeParcelable, AppContentAnnotation
{

    public static final b CREATOR = new b();
    private final int a;
    private final String b;
    private final Uri c;
    private final String d;
    private final String e;

    AppContentAnnotationEntity(int i, String s, Uri uri, String s1, String s2)
    {
        a = i;
        b = s;
        c = uri;
        d = s1;
        e = s2;
    }

    public AppContentAnnotationEntity(AppContentAnnotation appcontentannotation)
    {
        a = 1;
        b = appcontentannotation.e_();
        c = appcontentannotation.c();
        d = appcontentannotation.d();
        e = appcontentannotation.e();
    }

    static int a(AppContentAnnotation appcontentannotation)
    {
        Object aobj[] = new Object[4];
        aobj[0] = appcontentannotation.e_();
        aobj[1] = appcontentannotation.c();
        aobj[2] = appcontentannotation.d();
        aobj[3] = appcontentannotation.e();
        return Arrays.hashCode(aobj);
    }

    static boolean a(AppContentAnnotation appcontentannotation, Object obj)
    {
        if (obj instanceof AppContentAnnotation)
        {
            if (appcontentannotation == obj)
            {
                return true;
            }
            AppContentAnnotation appcontentannotation1 = (AppContentAnnotation)obj;
            if (pt.a(appcontentannotation1.e_(), appcontentannotation.e_()) && pt.a(appcontentannotation1.c(), appcontentannotation.c()) && pt.a(appcontentannotation1.d(), appcontentannotation.d()) && pt.a(appcontentannotation1.e(), appcontentannotation.e()))
            {
                return true;
            }
        }
        return false;
    }

    static String b(AppContentAnnotation appcontentannotation)
    {
        return pt.a(appcontentannotation).a("Description", appcontentannotation.e_()).a("ImageUri", appcontentannotation.c()).a("Title", appcontentannotation.d()).a("Type", appcontentannotation.e()).toString();
    }

    public final Object a()
    {
        return this;
    }

    public final Uri c()
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

    public final String e()
    {
        return e;
    }

    public final String e_()
    {
        return b;
    }

    public final boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public final int f()
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
        com.google.android.gms.games.appcontent.b.a(this, parcel, i);
    }

}
