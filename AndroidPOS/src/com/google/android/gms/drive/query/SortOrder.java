// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.drive.query:
//            b

public class SortOrder
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new b();
    final List a;
    final boolean b;
    final int c;

    SortOrder(int i, List list, boolean flag)
    {
        c = i;
        a = list;
        b = flag;
    }

    public int describeContents()
    {
        return 0;
    }

    public final String toString()
    {
        Locale locale = Locale.US;
        Object aobj[] = new Object[2];
        aobj[0] = TextUtils.join(",", a);
        aobj[1] = Boolean.valueOf(b);
        return String.format(locale, "SortOrder[%s, %s]", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.drive.query.b.a(this, parcel);
    }

}
