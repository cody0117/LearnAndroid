// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import com.google.android.gms.internal.px;

// Referenced classes of package com.google.android.gms.drive.metadata.internal:
//            d

public class CustomProperty
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new d();
    final int a;
    final CustomPropertyKey b;
    final String c;

    CustomProperty(int i, CustomPropertyKey custompropertykey, String s)
    {
        a = i;
        px.a(custompropertykey, "key");
        b = custompropertykey;
        c = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        d.a(this, parcel, i);
    }

}
