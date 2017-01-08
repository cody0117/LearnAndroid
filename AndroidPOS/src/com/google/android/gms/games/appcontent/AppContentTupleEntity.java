// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            AppContentTuple, f

public final class AppContentTupleEntity
    implements SafeParcelable, AppContentTuple
{

    public static final f CREATOR = new f();
    private final int a;
    private final String b;
    private final String c;

    AppContentTupleEntity(int i, String s, String s1)
    {
        a = i;
        b = s;
        c = s1;
    }

    public AppContentTupleEntity(AppContentTuple appcontenttuple)
    {
        a = 1;
        b = appcontenttuple.i_();
        c = appcontenttuple.c();
    }

    static int a(AppContentTuple appcontenttuple)
    {
        Object aobj[] = new Object[2];
        aobj[0] = appcontenttuple.i_();
        aobj[1] = appcontenttuple.c();
        return Arrays.hashCode(aobj);
    }

    static boolean a(AppContentTuple appcontenttuple, Object obj)
    {
        if (obj instanceof AppContentTuple)
        {
            if (appcontenttuple == obj)
            {
                return true;
            }
            AppContentTuple appcontenttuple1 = (AppContentTuple)obj;
            if (pt.a(appcontenttuple1.i_(), appcontenttuple.i_()) && pt.a(appcontenttuple1.c(), appcontenttuple.c()))
            {
                return true;
            }
        }
        return false;
    }

    static String b(AppContentTuple appcontenttuple)
    {
        return pt.a(appcontenttuple).a("Name", appcontenttuple.i_()).a("Value", appcontenttuple.c()).toString();
    }

    public final Object a()
    {
        return this;
    }

    public final String c()
    {
        return c;
    }

    public final int d()
    {
        return a;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public final int hashCode()
    {
        return a(this);
    }

    public final String i_()
    {
        return b;
    }

    public final String toString()
    {
        return b(this);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        f.a(this, parcel);
    }

}
