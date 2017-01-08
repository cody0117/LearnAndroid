// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

public class Item
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private String background;
    private long categoryId;
    private String description;
    private String fontColor;
    private long id;
    private boolean isPicked;
    private boolean isWarn;
    private String modifierGroupIds;
    private String name;
    private int num;
    private String picture;
    private double price;
    private int printerId;
    private int qty;
    private int sequence;
    private List supplements;
    private int tax1Id;
    private int tax2Id;
    private int warnQty;

    public Item()
    {
        supplements = new ArrayList();
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
        num = parcel.readInt();
        modifierGroupIds = parcel.readString();
        printerId = parcel.readInt();
        picture = parcel.readString();
        background = parcel.readString();
        fontColor = parcel.readString();
        description = parcel.readString();
        sequence = parcel.readInt();
        tax1Id = parcel.readInt();
        tax2Id = parcel.readInt();
        boolean flag1;
        if (parcel.readByte() != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        isPicked = flag1;
        qty = parcel.readInt();
        if (parcel.readByte() == 0)
        {
            flag = false;
        }
        isWarn = flag;
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

    public String getModifierGroupIds()
    {
        return modifierGroupIds;
    }

    public String getName()
    {
        return name;
    }

    public int getNum()
    {
        return num;
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

    public List getSupplements()
    {
        return supplements;
    }

    public int getTax1Id()
    {
        return tax1Id;
    }

    public int getTax2Id()
    {
        return tax2Id;
    }

    public int getWarnQty()
    {
        return warnQty;
    }

    public final int hashCode()
    {
        return 31 + (int)(id ^ id >>> 32);
    }

    public boolean isPicked()
    {
        return isPicked;
    }

    public boolean isWarn()
    {
        return isWarn;
    }

    public void setBackground(String s)
    {
        background = s;
    }

    public void setCategoryId(long l)
    {
        categoryId = l;
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

    public void setModifierGroupIds(String s)
    {
        modifierGroupIds = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setNum(int i)
    {
        num = i;
    }

    public void setPicked(boolean flag)
    {
        isPicked = flag;
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

    public void setSupplements(List list)
    {
        supplements = list;
    }

    public void setTax1Id(int i)
    {
        tax1Id = i;
    }

    public void setTax2Id(int i)
    {
        tax2Id = i;
    }

    public void setWarn(boolean flag)
    {
        isWarn = flag;
    }

    public void setWarnQty(int i)
    {
        warnQty = i;
    }

    public final String toString()
    {
        return (new StringBuilder("Item [id=")).append(id).append(", categoryId=").append(categoryId).append(", name=").append(name).append(", price=").append(price).append(", num=").append(num).append(", modifierGroupId=").append(modifierGroupIds).append(", printerId=").append(printerId).append(", picture=").append(picture).append(",background=").append(background).append(",fontColor=").append(fontColor).append(", description=").append(description).append(", sequence=").append(sequence).append(", tax1Id=").append(tax1Id).append(", tax2Id=").append(tax2Id).append(", isPicked=").append(isPicked).append(", supplements=").append(supplements).append(", qty=").append(qty).append(", isWarn=").append(isWarn).append(", warnQty=").append(warnQty).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        int j = 1;
        parcel.writeLong(id);
        parcel.writeLong(categoryId);
        parcel.writeString(name);
        parcel.writeDouble(price);
        parcel.writeInt(num);
        parcel.writeString(modifierGroupIds);
        parcel.writeInt(printerId);
        parcel.writeString(picture);
        parcel.writeString(background);
        parcel.writeString(fontColor);
        parcel.writeString(description);
        parcel.writeInt(sequence);
        parcel.writeInt(tax1Id);
        parcel.writeInt(tax2Id);
        int k;
        if (isPicked)
        {
            k = j;
        } else
        {
            k = 0;
        }
        parcel.writeByte((byte)k);
        parcel.writeInt(qty);
        if (!isWarn)
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
