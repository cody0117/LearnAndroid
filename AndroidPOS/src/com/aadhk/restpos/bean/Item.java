// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;
import android.os.Parcelable;

public class Item
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private boolean askPrice;
    private String background;
    private long categoryId;
    private double cost;
    private String description;
    private String fontColor;
    private long id;
    private String kitchenNoteGroupIds;
    private String modifierGroupIds;
    private String name;
    private int orderQty;
    private boolean picked;
    private String picture;
    private double price;
    private int printerId;
    private int qty;
    private int sequence;
    private boolean stopSaleZeroQty;
    private int tax1Id;
    private int tax2Id;
    private int tax3Id;
    private boolean warn;
    private int warnQty;

    public Item()
    {
    }

    public Item(long l, String s, double d, String s1)
    {
        categoryId = l;
        name = s;
        price = d;
        description = s1;
    }

    protected Item(Parcel parcel)
    {
        boolean flag = true;
        super();
        id = parcel.readLong();
        categoryId = parcel.readLong();
        name = parcel.readString();
        price = parcel.readDouble();
        cost = parcel.readDouble();
        qty = parcel.readInt();
        modifierGroupIds = parcel.readString();
        kitchenNoteGroupIds = parcel.readString();
        printerId = parcel.readInt();
        picture = parcel.readString();
        background = parcel.readString();
        fontColor = parcel.readString();
        description = parcel.readString();
        sequence = parcel.readInt();
        tax1Id = parcel.readInt();
        tax2Id = parcel.readInt();
        tax3Id = parcel.readInt();
        boolean flag1;
        boolean flag2;
        boolean flag3;
        if (parcel.readByte() != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        picked = flag1;
        orderQty = parcel.readInt();
        if (parcel.readByte() != 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        warn = flag2;
        if (parcel.readByte() != 0)
        {
            flag3 = flag;
        } else
        {
            flag3 = false;
        }
        askPrice = flag3;
        if (parcel.readByte() == 0)
        {
            flag = false;
        }
        stopSaleZeroQty = flag;
        warnQty = parcel.readInt();
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
            Item item = (Item)obj;
            if (id != item.id)
            {
                return false;
            }
        }
        return true;
    }

    public String getBackground()
    {
        return background;
    }

    public long getCategoryId()
    {
        return categoryId;
    }

    public double getCost()
    {
        return cost;
    }

    public String getDescription()
    {
        return description;
    }

    public String getFontColor()
    {
        return fontColor;
    }

    public long getId()
    {
        return id;
    }

    public String getKitchenNoteGroupIds()
    {
        return kitchenNoteGroupIds;
    }

    public String getModifierGroupIds()
    {
        return modifierGroupIds;
    }

    public String getName()
    {
        return name;
    }

    public int getOrderQty()
    {
        return orderQty;
    }

    public String getPicture()
    {
        return picture;
    }

    public double getPrice()
    {
        return price;
    }

    public int getPrinterId()
    {
        return printerId;
    }

    public int getQty()
    {
        return qty;
    }

    public int getSequence()
    {
        return sequence;
    }

    public int getTax1Id()
    {
        return tax1Id;
    }

    public int getTax2Id()
    {
        return tax2Id;
    }

    public int getTax3Id()
    {
        return tax3Id;
    }

    public int getWarnQty()
    {
        return warnQty;
    }

    public final int hashCode()
    {
        return 31 + (int)(id ^ id >>> 32);
    }

    public boolean isAskPrice()
    {
        return askPrice;
    }

    public boolean isPicked()
    {
        return picked;
    }

    public boolean isStopSaleZeroQty()
    {
        return stopSaleZeroQty;
    }

    public boolean isWarn()
    {
        return warn;
    }

    public void setAskPrice(boolean flag)
    {
        askPrice = flag;
    }

    public void setBackground(String s)
    {
        background = s;
    }

    public void setCategoryId(long l)
    {
        categoryId = l;
    }

    public void setCost(double d)
    {
        cost = d;
    }

    public void setDescription(String s)
    {
        description = s;
    }

    public void setFontColor(String s)
    {
        fontColor = s;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setKitchenNoteGroupIds(String s)
    {
        kitchenNoteGroupIds = s;
    }

    public void setModifierGroupIds(String s)
    {
        modifierGroupIds = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setOrderQty(int i)
    {
        orderQty = i;
    }

    public void setPicked(boolean flag)
    {
        picked = flag;
    }

    public void setPicture(String s)
    {
        picture = s;
    }

    public void setPrice(double d)
    {
        price = d;
    }

    public void setPrinterId(int i)
    {
        printerId = i;
    }

    public void setQty(int i)
    {
        qty = i;
    }

    public void setSequence(int i)
    {
        sequence = i;
    }

    public void setStopSaleZeroQty(boolean flag)
    {
        stopSaleZeroQty = flag;
    }

    public void setTax1Id(int i)
    {
        tax1Id = i;
    }

    public void setTax2Id(int i)
    {
        tax2Id = i;
    }

    public void setTax3Id(int i)
    {
        tax3Id = i;
    }

    public void setWarn(boolean flag)
    {
        warn = flag;
    }

    public void setWarnQty(int i)
    {
        warnQty = i;
    }

    public final String toString()
    {
        return (new StringBuilder("Item [id=")).append(id).append(", categoryId=").append(categoryId).append(", name=").append(name).append(", price=").append(price).append(", cost=").append(cost).append(", qty=").append(qty).append(", modifierGroupIds=").append(modifierGroupIds).append(", kitchenNoteGroupIds=").append(kitchenNoteGroupIds).append(", printerId=").append(printerId).append(", picture=").append(picture).append(", background=").append(background).append(", fontColor=").append(fontColor).append(", description=").append(description).append(", sequence=").append(sequence).append(", tax1Id=").append(tax1Id).append(", tax2Id=").append(tax2Id).append(", tax3Id=").append(tax3Id).append(", picked=").append(picked).append(", orderQty=").append(orderQty).append(", warn=").append(warn).append(", askPrice=").append(askPrice).append(", stopSaleZeroQty=").append(stopSaleZeroQty).append(", warnQty=").append(warnQty).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        int j = 1;
        parcel.writeLong(id);
        parcel.writeLong(categoryId);
        parcel.writeString(name);
        parcel.writeDouble(price);
        parcel.writeDouble(cost);
        parcel.writeInt(qty);
        parcel.writeString(modifierGroupIds);
        parcel.writeString(kitchenNoteGroupIds);
        parcel.writeInt(printerId);
        parcel.writeString(picture);
        parcel.writeString(background);
        parcel.writeString(fontColor);
        parcel.writeString(description);
        parcel.writeInt(sequence);
        parcel.writeInt(tax1Id);
        parcel.writeInt(tax2Id);
        parcel.writeInt(tax3Id);
        int k;
        int l;
        int i1;
        if (picked)
        {
            k = j;
        } else
        {
            k = 0;
        }
        parcel.writeByte((byte)k);
        parcel.writeInt(orderQty);
        if (warn)
        {
            l = j;
        } else
        {
            l = 0;
        }
        parcel.writeByte((byte)l);
        if (askPrice)
        {
            i1 = j;
        } else
        {
            i1 = 0;
        }
        parcel.writeByte((byte)i1);
        if (!stopSaleZeroQty)
        {
            j = 0;
        }
        parcel.writeByte((byte)j);
        parcel.writeInt(warnQty);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public final Item createFromParcel(Parcel parcel)
        {
            return new Item(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final Item[] newArray(int i)
        {
            return new Item[i];
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
