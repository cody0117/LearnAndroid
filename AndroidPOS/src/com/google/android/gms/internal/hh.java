// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            nc, ni, nh, px, 
//            hp

public class hh
    implements SafeParcelable
{

    public static final nc CREATOR = new nc();
    public static final int a = Integer.parseInt("-1");
    private static final hp g = (new ni("SsbContext")).a().a("blob").b();
    final int b;
    public final String c;
    final hp d;
    public final int e;
    public final byte f[];

    hh(int i, String s, hp hp, int j, byte abyte0[])
    {
        boolean flag;
        String s1;
        if (j == a || nh.a(j) != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        px.b(flag, (new StringBuilder("Invalid section type ")).append(j).toString());
        b = i;
        c = s;
        d = hp;
        e = j;
        f = abyte0;
        if (e != a && nh.a(e) == null)
        {
            s1 = (new StringBuilder("Invalid section type ")).append(e).toString();
        } else
        if (c != null && f != null)
        {
            s1 = "Both content and blobContent set";
        } else
        {
            s1 = null;
        }
        if (s1 != null)
        {
            throw new IllegalArgumentException(s1);
        } else
        {
            return;
        }
    }

    public int describeContents()
    {
        nc _tmp = CREATOR;
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        nc _tmp = CREATOR;
        nc.a(this, parcel, i);
    }

}
