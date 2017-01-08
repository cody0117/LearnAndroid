// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;
import android.os.Parcelable;

public class Modifier
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private double cost;
    private long groupId;
    private long id;
    private String name;
    private double price;
    private int qty;
    private boolean required;
    private int type;

    public Modifier()
    {
    }

    protected Modifier(Parcel parcel)
    {
        id = parcel.readLong();
        groupId = parcel.readLong();
        name = parcel.readString();
        price = parcel.readDouble();
        cost = parcel.readDouble();
        qty = parcel.readInt();
        type = parcel.readInt();
        boolean flag;
        if (parcel.readByte() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        required = flag;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        Modifier modifier;
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        modifier = (Modifier)obj;
        if (id != modifier.id)
        {
            return false;
        }
        if (name != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (modifier.name == null) goto _L1; else goto _L3
_L3:
        return false;
        if (name.equals(modifier.name)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public double getCost()
    {
        return cost;
    }

    public long getGroupId()
    {
        return groupId;
    }

    public long getId()
    {
        return id;
    }

    public String getName()
    {
        return name;
    }

    public double getPrice()
    {
        return price;
    }

    public int getQty()
    {
        return qty;
    }

    public int getType()
    {
        return type;
    }

    public final int hashCode()
    {
        int i = 31 * (31 + (int)(id ^ id >>> 32));
        int j;
        if (name == null)
        {
            j = 0;
        } else
        {
            j = name.hashCode();
        }
        return j + i;
    }

    public boolean isRequired()
    {
        return required;
    }

    public void setCost(double d)
    {
        cost = d;
    }

    public void setGroupId(long l)
    {
        groupId = l;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setPrice(double d)
    {
        price = d;
    }

    public void setQty(int i)
    {
        qty = i;
    }

    public void setRequired(boolean flag)
    {
        required = flag;
    }

    public void setType(int i)
    {
        type = i;
    }

    public final String toString()
    {
        return (new StringBuilder("Modifier [id=")).append(id).append(", groupId=").append(groupId).append(", name=").append(name).append(", price=").append(price).append(", cost=").append(cost).append(", qty=").append(qty).append(", type=").append(type).append(", required=").append(required).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeLong(id);
        parcel.writeLong(groupId);
        parcel.writeString(name);
        parcel.writeDouble(price);
        parcel.writeDouble(cost);
        parcel.writeInt(qty);
        parcel.writeInt(type);
        int j;
        if (required)
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

        public final Modifier createFromParcel(Parcel parcel)
        {
            return new Modifier(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final Modifier[] newArray(int i)
        {
            return new Modifier[i];
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
