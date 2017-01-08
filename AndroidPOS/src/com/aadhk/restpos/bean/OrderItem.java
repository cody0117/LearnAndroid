// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.bean:
//            OrderModifier

public class OrderItem
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private long billId;
    private String cancelReason;
    private String categoryName;
    private double discountAmt;
    private String discountName;
    private String endTime;
    private long id;
    protected double itemCost;
    private long itemId;
    protected String itemName;
    protected double itemPrice;
    private String kitchenNoteGroupId;
    private String modifierGroupId;
    private long orderId;
    private List orderModifiers;
    private int orderQty;
    private int printerId;
    private int qty;
    private String remark;
    private boolean selected;
    private String startTime;
    private int status;
    protected boolean stopSaleZeroQty;
    private String tableName;
    private int tax1Id;
    private int tax2Id;
    private int tax3Id;
    private boolean warn;
    private int warnQty;

    public OrderItem()
    {
        orderModifiers = new ArrayList();
    }

    protected OrderItem(Parcel parcel)
    {
        boolean flag = true;
        super();
        id = parcel.readLong();
        itemId = parcel.readLong();
        orderId = parcel.readLong();
        billId = parcel.readLong();
        categoryName = parcel.readString();
        itemName = parcel.readString();
        tableName = parcel.readString();
        itemPrice = parcel.readDouble();
        itemCost = parcel.readDouble();
        qty = parcel.readInt();
        remark = parcel.readString();
        startTime = parcel.readString();
        endTime = parcel.readString();
        cancelReason = parcel.readString();
        status = parcel.readInt();
        boolean flag1;
        boolean flag2;
        if (parcel.readByte() == flag)
        {
            orderModifiers = new ArrayList();
            parcel.readList(orderModifiers, com/aadhk/restpos/bean/OrderModifier.getClassLoader());
        } else
        {
            orderModifiers = null;
        }
        printerId = parcel.readInt();
        tax1Id = parcel.readInt();
        tax2Id = parcel.readInt();
        tax3Id = parcel.readInt();
        modifierGroupId = parcel.readString();
        kitchenNoteGroupId = parcel.readString();
        discountName = parcel.readString();
        discountAmt = parcel.readDouble();
        if (parcel.readByte() != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        selected = flag1;
        orderQty = parcel.readInt();
        if (parcel.readByte() != 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        warn = flag2;
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
            OrderItem orderitem = (OrderItem)obj;
            if (itemId != orderitem.itemId)
            {
                return false;
            }
        }
        return true;
    }

    public long getBillId()
    {
        return billId;
    }

    public String getCancelReason()
    {
        return cancelReason;
    }

    public String getCategoryName()
    {
        return categoryName;
    }

    public double getDiscountAmt()
    {
        return discountAmt;
    }

    public String getDiscountName()
    {
        return discountName;
    }

    public String getEndTime()
    {
        return endTime;
    }

    public long getId()
    {
        return id;
    }

    public double getItemCost()
    {
        return itemCost;
    }

    public long getItemId()
    {
        return itemId;
    }

    public String getItemName()
    {
        return itemName;
    }

    public double getItemPrice()
    {
        return itemPrice;
    }

    public String getKitchenNoteGroupId()
    {
        return kitchenNoteGroupId;
    }

    public String getModifierGroupId()
    {
        return modifierGroupId;
    }

    public long getOrderId()
    {
        return orderId;
    }

    public List getOrderModifiers()
    {
        return orderModifiers;
    }

    public int getOrderQty()
    {
        return orderQty;
    }

    public int getPrinterId()
    {
        return printerId;
    }

    public int getQty()
    {
        return qty;
    }

    public String getRemark()
    {
        return remark;
    }

    public String getStartTime()
    {
        return startTime;
    }

    public int getStatus()
    {
        return status;
    }

    public String getTableName()
    {
        return tableName;
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
        return 31 + (int)(itemId ^ itemId >>> 32);
    }

    public boolean isSelected()
    {
        return selected;
    }

    public boolean isStopSaleZeroQty()
    {
        return stopSaleZeroQty;
    }

    public boolean isWarn()
    {
        return warn;
    }

    public void setBillId(long l)
    {
        billId = l;
    }

    public void setCancelReason(String s)
    {
        cancelReason = s;
    }

    public void setCategoryName(String s)
    {
        categoryName = s;
    }

    public void setDiscountAmt(double d)
    {
        discountAmt = d;
    }

    public void setDiscountName(String s)
    {
        discountName = s;
    }

    public void setEndTime(String s)
    {
        endTime = s;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setItemCost(double d)
    {
        itemCost = d;
    }

    public void setItemId(long l)
    {
        itemId = l;
    }

    public void setItemName(String s)
    {
        itemName = s;
    }

    public void setItemPrice(double d)
    {
        itemPrice = d;
    }

    public void setKitchenNoteGroupId(String s)
    {
        kitchenNoteGroupId = s;
    }

    public void setModifierGroupId(String s)
    {
        modifierGroupId = s;
    }

    public void setOrderId(long l)
    {
        orderId = l;
    }

    public void setOrderModifiers(List list)
    {
        orderModifiers = list;
    }

    public void setOrderQty(int i)
    {
        orderQty = i;
    }

    public void setPrinterId(int i)
    {
        printerId = i;
    }

    public void setQty(int i)
    {
        qty = i;
    }

    public void setRemark(String s)
    {
        remark = s;
    }

    public void setSelected(boolean flag)
    {
        selected = flag;
    }

    public void setStartTime(String s)
    {
        startTime = s;
    }

    public void setStatus(int i)
    {
        status = i;
    }

    public void setStopSaleZeroQty(boolean flag)
    {
        stopSaleZeroQty = flag;
    }

    public void setTableName(String s)
    {
        tableName = s;
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
        return (new StringBuilder("OrderItem [id=")).append(id).append(", itemId=").append(itemId).append(", orderId=").append(orderId).append(", billId=").append(billId).append(", categoryName=").append(categoryName).append(", itemName=").append(itemName).append(", tableName=").append(tableName).append(", itemPrice=").append(itemPrice).append(", itemCost=").append(itemCost).append(", stopSaleZeroQty=").append(stopSaleZeroQty).append(", qty=").append(qty).append(", remark=").append(remark).append(", startTime=").append(startTime).append(", endTime=").append(endTime).append(", cancelReason=").append(cancelReason).append(", status=").append(status).append(", orderModifiers=").append(orderModifiers).append(", printerId=").append(printerId).append(", tax1Id=").append(tax1Id).append(", tax2Id=").append(tax2Id).append(", tax3Id=").append(tax3Id).append(", modifierGroupId=").append(modifierGroupId).append(", kitchenNoteGroupId=").append(kitchenNoteGroupId).append(", discountName=").append(discountName).append(", discountAmt=").append(discountAmt).append(", orderQty=").append(orderQty).append(", warn=").append(warn).append(", warnQty=").append(warnQty).append(", selected=").append(selected).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        int j = 1;
        parcel.writeLong(id);
        parcel.writeLong(itemId);
        parcel.writeLong(orderId);
        parcel.writeLong(billId);
        parcel.writeString(categoryName);
        parcel.writeString(itemName);
        parcel.writeString(tableName);
        parcel.writeDouble(itemPrice);
        parcel.writeDouble(itemCost);
        parcel.writeInt(qty);
        parcel.writeString(remark);
        parcel.writeString(startTime);
        parcel.writeString(endTime);
        parcel.writeString(cancelReason);
        parcel.writeInt(status);
        int k;
        int l;
        if (orderModifiers == null)
        {
            parcel.writeByte((byte)0);
        } else
        {
            parcel.writeByte(j);
            parcel.writeList(orderModifiers);
        }
        parcel.writeInt(printerId);
        parcel.writeInt(tax1Id);
        parcel.writeInt(tax2Id);
        parcel.writeInt(tax3Id);
        parcel.writeString(modifierGroupId);
        parcel.writeString(kitchenNoteGroupId);
        parcel.writeString(discountName);
        parcel.writeDouble(discountAmt);
        if (selected)
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

        public final OrderItem createFromParcel(Parcel parcel)
        {
            return new OrderItem(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final OrderItem[] newArray(int i)
        {
            return new OrderItem[i];
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
