// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;
import android.os.Parcelable;

public class Currency
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private String code;
    private String desc;
    private int id;
    private String sign;
    private boolean use;

    public Currency()
    {
    }

    protected Currency(Parcel parcel)
    {
        id = parcel.readInt();
        code = parcel.readString();
        sign = parcel.readString();
        desc = parcel.readString();
        boolean flag;
        if (parcel.readByte() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        use = flag;
    }

    public int describeContents()
    {
        return 0;
    }

    public String getCode()
    {
        return code;
    }

    public String getDesc()
    {
        return desc;
    }

    public int getId()
    {
        return id;
    }

    public String getSign()
    {
        return sign;
    }

    public boolean isUse()
    {
        return use;
    }

    public void setCode(String s)
    {
        code = s;
    }

    public void setDesc(String s)
    {
        desc = s;
    }

    public void setId(int i)
    {
        id = i;
    }

    public void setSign(String s)
    {
        sign = s;
    }

    public void setUse(boolean flag)
    {
        use = flag;
    }

    public final String toString()
    {
        return (new StringBuilder("Currency [id=")).append(id).append(", code=").append(code).append(", sign=").append(sign).append(", desc=").append(desc).append(", use=").append(use).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(id);
        parcel.writeString(code);
        parcel.writeString(sign);
        parcel.writeString(desc);
        int j;
        if (use)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        parcel.writeByte((byte)j);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public final Currency createFromParcel(Parcel parcel)
        {
            return new Currency(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final Currency[] newArray(int i)
        {
            return new Currency[i];
        }

        public final volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

        _cls1()
        {
        }
    }

}
