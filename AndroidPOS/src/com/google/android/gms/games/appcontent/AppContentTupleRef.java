// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            AppContentTuple, AppContentTupleEntity

public final class AppContentTupleRef extends f
    implements AppContentTuple
{

    AppContentTupleRef(DataHolder dataholder, int i)
    {
        super(dataholder, i);
    }

    private AppContentTuple d()
    {
        return new AppContentTupleEntity(this);
    }

    public final Object a()
    {
        return d();
    }

    public final String c()
    {
        return e("tuple_value");
    }

    public final int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        return AppContentTupleEntity.a(this, obj);
    }

    public final int hashCode()
    {
        return AppContentTupleEntity.a(this);
    }

    public final String i_()
    {
        return e("tuple_name");
    }

    public final String toString()
    {
        return AppContentTupleEntity.b(this);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        ((AppContentTupleEntity)d()).writeToParcel(parcel, i);
    }
}
