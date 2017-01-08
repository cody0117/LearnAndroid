// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

public class Order
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private double amount;
    private long billId;
    private String cancelPerson;
    private String cancelReason;
    private String cashierName;
    private long customerId;
    private String customerName;
    private double discountAmt;
    private String discountReason;
    private String endTime;
    private boolean hasUnpaidBill;
    private boolean hasVoidItem;
    private long id;
    private String kitchenRemark;
    private List orderItems;
    private String orderNum;
    private List orderPayments;
    private int personNum;
    private String receiptNote;
    private double serviceAmt;
    private short splitType;
    private String startTime;
    private int status;
    private double subTotal;
    private long tableId;
    private String tableName;
    private double tax1Amt;
    private String tax1Name;
    private double tax2Amt;
    private String tax2Name;
    private String waiterName;

    public Order()
    {
        orderPayments = new ArrayList();
    }

    protected Order(Parcel parcel)
    {
        boolean flag = true;
        super();
        id = parcel.readLong();
        orderNum = parcel.readString();
        billId = parcel.readLong();
        startTime = parcel.readString();
        endTime = parcel.readString();
        tableId = parcel.readLong();
        status = parcel.readInt();
        splitType = ((Short)parcel.readValue(java/lang/Short.getClassLoader())).shortValue();
        boolean flag1;
        if (parcel.readByte() != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        hasUnpaidBill = flag1;
        if (parcel.readByte() == 0)
        {
            flag = false;
        }
        hasVoidItem = flag;
        personNum = parcel.readInt();
        tableName = parcel.readString();
        cancelReason = parcel.readString();
        cancelPerson = parcel.readString();
        waiterName = parcel.readString();
        discountAmt = parcel.readDouble();
        discountReason = parcel.readString();
        kitchenRemark = parcel.readString();
        receiptNote = parcel.readString();
        tax1Amt = parcel.readDouble();
        tax2Amt = parcel.readDouble();
        tax1Name = parcel.readString();
        tax2Name = parcel.readString();
        serviceAmt = parcel.readDouble();
        subTotal = parcel.readDouble();
        amount = parcel.readDouble();
        cashierName = parcel.readString();
        customerId = parcel.readLong();
        customerName = parcel.readString();
    }

    public Order clone()
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeValue(this);
        parcel.setDataPosition(0);
        Order order = (Order)parcel.readValue(com/aadhk/restpos/bean/Order.getClassLoader());
        parcel.recycle();
        return order;
    }

    public final volatile Object clone()
    {
        return clone();
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
            Order order = (Order)obj;
            if (id != order.id)
            {
                return false;
            }
        }
        return true;
    }

    public double getAmount()
    {
        return amount;
    }

    public long getBillId()
    {
        return billId;
    }

    public String getCancelPerson()
    {
        return cancelPerson;
    }

    public String getCancelReason()
    {
        return cancelReason;
    }

    public String getCashierName()
    {
        return cashierName;
    }

    public long getCustomerId()
    {
        return customerId;
    }

    public String getCustomerName()
    {
        return customerName;
    }

    public double getDiscountAmt()
    {
        return discountAmt;
    }

    public String getDiscountReason()
    {
        return discountReason;
    }

    public String getEndTime()
    {
        return endTime;
    }

    public long getId()
    {
        return id;
    }

    public String getKitchenRemark()
    {
        return kitchenRemark;
    }

    public List getOrderItems()
    {
        return orderItems;
    }

    public String getOrderNum()
    {
        return orderNum;
    }

    public List getOrderPayments()
    {
        return orderPayments;
    }

    public int getPersonNum()
    {
        return personNum;
    }

    public String getReceiptNote()
    {
        return receiptNote;
    }

    public double getServiceAmt()
    {
        return serviceAmt;
    }

    public short getSplitType()
    {
        return splitType;
    }

    public String getStartTime()
    {
        return startTime;
    }

    public int getStatus()
    {
        return status;
    }

    public double getSubTotal()
    {
        return subTotal;
    }

    public long getTableId()
    {
        return tableId;
    }

    public String getTableName()
    {
        return tableName;
    }

    public double getTax1Amt()
    {
        return tax1Amt;
    }

    public String getTax1Name()
    {
        return tax1Name;
    }

    public double getTax2Amt()
    {
        return tax2Amt;
    }

    public String getTax2Name()
    {
        return tax2Name;
    }

    public String getWaiterName()
    {
        return waiterName;
    }

    public final int hashCode()
    {
        return 31 + (int)(id ^ id >>> 32);
    }

    public boolean isHasUnpaidBill()
    {
        return hasUnpaidBill;
    }

    public boolean isHasVoidItem()
    {
        return hasVoidItem;
    }

    public void setAmount(double d)
    {
        amount = d;
    }

    public void setBillId(long l)
    {
        billId = l;
    }

    public void setCancelPerson(String s)
    {
        cancelPerson = s;
    }

    public void setCancelReason(String s)
    {
        cancelReason = s;
    }

    public void setCashierName(String s)
    {
        cashierName = s;
    }

    public void setCustomerId(long l)
    {
        customerId = l;
    }

    public void setCustomerName(String s)
    {
        customerName = s;
    }

    public void setDiscountAmt(double d)
    {
        discountAmt = d;
    }

    public void setDiscountReason(String s)
    {
        discountReason = s;
    }

    public void setEndTime(String s)
    {
        endTime = s;
    }

    public void setHasUnpaidBill(boolean flag)
    {
        hasUnpaidBill = flag;
    }

    public void setHasVoidItem(boolean flag)
    {
        hasVoidItem = flag;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setKitchenRemark(String s)
    {
        kitchenRemark = s;
    }

    public void setOrderItems(List list)
    {
        orderItems = list;
    }

    public void setOrderNum(String s)
    {
        orderNum = s;
    }

    public void setOrderPayments(List list)
    {
        orderPayments = list;
    }

    public void setPersonNum(int i)
    {
        personNum = i;
    }

    public void setReceiptNote(String s)
    {
        receiptNote = s;
    }

    public void setServiceAmt(double d)
    {
        serviceAmt = d;
    }

    public void setSplitType(short word0)
    {
        splitType = word0;
    }

    public void setStartTime(String s)
    {
        startTime = s;
    }

    public void setStatus(int i)
    {
        status = i;
    }

    public void setSubTotal(double d)
    {
        subTotal = d;
    }

    public void setTableId(long l)
    {
        tableId = l;
    }

    public void setTableName(String s)
    {
        tableName = s;
    }

    public void setTax1Amt(double d)
    {
        tax1Amt = d;
    }

    public void setTax1Name(String s)
    {
        tax1Name = s;
    }

    public void setTax2Amt(double d)
    {
        tax2Amt = d;
    }

    public void setTax2Name(String s)
    {
        tax2Name = s;
    }

    public void setWaiterName(String s)
    {
        waiterName = s;
    }

    public final String toString()
    {
        return (new StringBuilder("Order [id=")).append(id).append(", orderNum=").append(orderNum).append(", billId=").append(billId).append(", startTime=").append(startTime).append(", endTime=").append(endTime).append(", tableId=").append(tableId).append(", customerId=").append(customerId).append(", customerName=").append(customerName).append(", status=").append(status).append(", splitType=").append(splitType).append(", hasUnpaidBill=").append(hasUnpaidBill).append(", hasVoidItem=").append(hasVoidItem).append(", personNum=").append(personNum).append(", tableName=").append(tableName).append(", cancelReason=").append(cancelReason).append(", cancelPerson=").append(cancelPerson).append(", waiterName=").append(waiterName).append(", cashierName=").append(cashierName).append(", discountAmt=").append(discountAmt).append(", discountReason=").append(discountReason).append(", kitchenRemark=").append(kitchenRemark).append(", receiptNote=").append(receiptNote).append(", tax1Amt=").append(tax1Amt).append(", tax2Amt=").append(tax2Amt).append(", tax1Name=").append(tax1Name).append(", tax2Name=").append(tax2Name).append(", serviceAmt=").append(serviceAmt).append(", subTotal=").append(subTotal).append(", amount=").append(amount).append(", orderItems=").append(orderItems).append(", orderPayments=").append(orderPayments).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        int j = 1;
        parcel.writeLong(id);
        parcel.writeString(orderNum);
        parcel.writeLong(billId);
        parcel.writeString(startTime);
        parcel.writeString(endTime);
        parcel.writeLong(tableId);
        parcel.writeInt(status);
        parcel.writeValue(Short.valueOf(splitType));
        int k;
        if (hasUnpaidBill)
        {
            k = j;
        } else
        {
            k = 0;
        }
        parcel.writeByte((byte)k);
        if (!hasVoidItem)
        {
            j = 0;
        }
        parcel.writeByte((byte)j);
        parcel.writeInt(personNum);
        parcel.writeString(tableName);
        parcel.writeString(cancelReason);
        parcel.writeString(cancelPerson);
        parcel.writeString(waiterName);
        parcel.writeDouble(discountAmt);
        parcel.writeString(discountReason);
        parcel.writeString(kitchenRemark);
        parcel.writeString(receiptNote);
        parcel.writeDouble(tax1Amt);
        parcel.writeDouble(tax2Amt);
        parcel.writeString(tax1Name);
        parcel.writeString(tax2Name);
        parcel.writeDouble(serviceAmt);
        parcel.writeDouble(subTotal);
        parcel.writeDouble(amount);
        parcel.writeString(cashierName);
        parcel.writeLong(customerId);
        parcel.writeString(customerName);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public final Order createFromParcel(Parcel parcel)
        {
            return new Order(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final Order[] newArray(int i)
        {
            return new Order[i];
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
