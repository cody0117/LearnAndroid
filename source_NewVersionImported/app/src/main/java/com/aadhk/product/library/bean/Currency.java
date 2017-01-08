// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.bean;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.aadhk.product.library.bean:
//            a

public class Currency
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new a();
    private String a;
    private String b;
    private String c;
    private boolean d;

    public Currency()
    {
    }

    protected Currency(Parcel parcel)
    {
        a = parcel.readString();
        b = parcel.readString();
        c = parcel.readString();
        boolean flag;
        if (parcel.readByte() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        d = flag;
    }

    public final String a()
    {
        return a;
    }

    public final void a(String s)
    {
        a = s;
    }

    public final void a(boolean flag)
    {
        d = flag;
    }

    public final String b()
    {
        return b;
    }

    public final void b(String s)
    {
        b = s;
    }

    public final String c()
    {
        return c;
    }

    public final void c(String s)
    {
        c = s;
    }

    public final boolean d()
    {
        return d;
    }

    public int describeContents()
    {
        return 0;
    }

    public final String toString()
    {
        return (new StringBuilder("Currency [code=")).append(a).append(", sign=").append(b).append(", desc=").append(c).append(", isDefault=").append(d).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(a);
        parcel.writeString(b);
        parcel.writeString(c);
        int j;
        if (d)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        parcel.writeByte((byte)j);
    }

}
