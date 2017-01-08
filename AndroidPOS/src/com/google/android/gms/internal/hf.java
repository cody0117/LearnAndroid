// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            nb

public class hf
    implements SafeParcelable
{

    public static final nb CREATOR = new nb();
    final int a;
    final String b;
    final String c;
    final String d;

    hf(int i, String s, String s1, String s2)
    {
        a = i;
        b = s;
        c = s1;
        d = s2;
    }

    public int describeContents()
    {
        nb _tmp = CREATOR;
        return 0;
    }

    public final String toString()
    {
        Object aobj[] = new Object[3];
        aobj[0] = b;
        aobj[1] = c;
        aobj[2] = d;
        return String.format("DocumentId[packageName=%s, corpusName=%s, uri=%s]", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        nb _tmp = CREATOR;
        nb.a(this, parcel);
    }

}
