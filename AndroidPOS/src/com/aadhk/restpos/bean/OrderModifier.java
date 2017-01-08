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
    private double modifierCost;
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
        modifierName = parcel.readString();
        orderItemId = parcel.readLong();
        modifierPrice = parcel.readDouble();
        modifierCost = parcel.readDouble();
        qty = parcel.readInt();
        type = parcel.readInt();
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
        OrderModifier ordermodifier;
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        ordermodifier = (OrderModifier)obj;
        if (itemid != ordermodifier.itemid)
        {
            return false;
        }
        if (modifierName != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (ordermodifier.modifierName == null) goto _L1; else goto _L3
_L3:
        return false;
        if (modifierName.equals(ordermodifier.modifierName)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public long getId()
    {
        return id;
    }

    public long getItemid()
    {
        return itemid;
    }

    public double getModifierCost()
    {
        return modifierCost;
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
        int i = 31 * (31 + (int)(itemid ^ itemid >>> 32));
        int j;
        if (modifierName == null)
        {
            j = 0;
        } else
        {
            j = modifierName.hashCode();
        }
        return j + i;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setItemid(long l)
    {
        itemid = l;
    }

    public void setModifierCost(double d)
    {
        modifierCost = d;
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
        return (new StringBuilder("OrderModifier [id=")).append(id).append(", itemid=").append(itemid).append(", orderid=").append(orderid).append(", modifierName=").append(modifierName).append(", orderItemId=").append(orderItemId).append(", modifierPrice=").append(modifierPrice).append(", modifierCost=").append(modifierCost).append(", qty=").append(qty).append(", type=").append(type).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeLong(id);
        parcel.writeLong(itemid);
        parcel.writeLong(orderid);
        parcel.writeString(modifierName);
        parcel.writeLong(orderItemId);
        parcel.writeDouble(modifierPrice);
        parcel.writeDouble(modifierCost);
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
