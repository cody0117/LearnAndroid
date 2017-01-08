// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;
import android.os.Parcelable;

public class OrderModifier
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private long id;
    private long itemid;
    private long modifierId;
    private String modifierName;
    private double modifierPrice;
    private long orderItemId;
    private long orderid;
    private int qty;
    private int type;

    public OrderModifier()
    {
    }

    public OrderModifier(long l, String s, double d, int i)
    {
        itemid = l;
        modifierName = s;
        modifierPrice = d;
        type = i;
    }

    protected OrderModifier(Parcel parcel)
    {
        id = parcel.readLong();
        itemid = parcel.readLong();
        orderid = parcel.readLong();
        modifierId = parcel.readLong();
        modifierName = parcel.readString();
        orderItemId = parcel.readLong();
        modifierPrice = parcel.readDouble();
        qty = parcel.readInt();
        type = parcel.readInt();
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            OrderModifier ordermodifier = (OrderModifier)obj;
            if (modifierId != ordermodifier.modifierId)
            {
                return false;
            }
        }
        return true;
    }

    public long getId()
    {
        return id;
    }

    public long getItemid()
    {
        return itemid;
    }

    public long getModifierId()
    {
        return modifierId;
    }

    public String getModifierName()
    {
        return modifierName;
    }

    public double getModifierPrice()
    {
        return modifierPrice;
    }

    public long getOrderItemId()
    {
        return orderItemId;
    }

    public long getOrderid()
    {
        return orderid;
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
        return 31 + (int)(modifierId ^ modifierId >>> 32);
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setItemid(long l)
    {
        itemid = l;
    }

    public void setModifierId(long l)
    {
        modifierId = l;
    }

    public void setModifierName(String s)
    {
        modifierName = s;
    }

    public void setModifierPrice(double d)
    {
        modifierPrice = d;
    }

    public void setOrderItemId(long l)
    {
        orderItemId = l;
    }

    public void setOrderid(long l)
    {
        orderid = l;
    }

    public void setQty(int i)
    {
        qty = i;
    }

    public void setType(int i)
    {
        type = i;
    }

    public final String toString()
    {
        return (new StringBuilder("OrderModifier [id=")).append(id).append(", itemid=").append(itemid).append(", orderid=").append(orderid).append(", modifierId=").append(modifierId).append(", modifierName=").append(modifierName).append(", orderItemId=").append(orderItemId).append(", price=").append(modifierPrice).append(", qty=").append(qty).append(", type=").append(type).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeLong(id);
        parcel.writeLong(itemid);
        parcel.writeLong(orderid);
        parcel.writeLong(modifierId);
        parcel.writeString(modifierName);
        parcel.writeLong(orderItemId);
        parcel.writeDouble(modifierPrice);
        parcel.writeInt(qty);
        parcel.writeInt(type);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public final OrderModifier createFromParcel(Parcel parcel)
        {
            return new OrderModifier(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final OrderModifier[] newArray(int i)
        {
            return new OrderModifier[i];
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
