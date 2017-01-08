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
    private int a;
    private String b;
    private String c;
    private String d;
    private boolean e;

    public Currency()
    {
    }

    protected Currency(Parcel parcel)
    {
        a = parcel.readInt();
        b = parcel.readString();
        c = parcel.readString();
        d = parcel.readString();
        boolean flag;
        if (parcel.readByte() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        e = flag;
    }

    public int describeContents()
    {
        return 0;
    }

    public final String toString()
    {
        return (new StringBuilder("Currency [id=")).append(a).append(", code=").append(b).append(", sign=").append(c).append(", desc=").append(d).append(", use=").append(e).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(a);
        parcel.writeString(b);
        parcel.writeString(c);
        parcel.writeString(d);
        int j;
        if (e)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        parcel.writeByte((byte)j);
    }

}
