// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;

public class Company
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private String address1;
    private String address2;
    private String currency;
    private String currencySign;
    private int decimalPlace;
    private boolean deliveryAfterTax;
    private boolean discountAfterTax;
    private String email;
    private int id;
    private boolean includeServiceFeeDelivery;
    private boolean includeServiceFeeDineIn;
    private boolean includeServiceFeeTakeOut;
    private boolean itemPriceIncludeTax;
    private Bitmap logoBitmap;
    private String logoName;
    private String name;
    private boolean serviceAfterTax;
    private int serviceFeeIdDelivery;
    private int serviceFeeIdDineIn;
    private int serviceFeeIdTakeOut;
    private double tax1;
    private String tax1Name;
    private double tax2;
    private String tax2Name;
    private double tax3;
    private String tax3Name;
    private String taxNumber;
    private String tel;
    private String timeIn;
    private String timeOut;

    public Company()
    {
    }

    protected Company(Parcel parcel)
    {
        boolean flag = true;
        super();
        id = parcel.readInt();
        name = parcel.readString();
        address1 = parcel.readString();
        address2 = parcel.readString();
        tel = parcel.readString();
        currency = parcel.readString();
        currencySign = parcel.readString();
        email = parcel.readString();
        timeIn = parcel.readString();
        timeOut = parcel.readString();
        logoName = parcel.readString();
        decimalPlace = parcel.readInt();
        logoBitmap = (Bitmap)parcel.readValue(android/graphics/Bitmap.getClassLoader());
        tax1 = parcel.readDouble();
        tax2 = parcel.readDouble();
        tax3 = parcel.readDouble();
        tax1Name = parcel.readString();
        tax2Name = parcel.readString();
        tax3Name = parcel.readString();
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        boolean flag5;
        boolean flag6;
        if (parcel.readByte() != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        itemPriceIncludeTax = flag1;
        if (parcel.readByte() != 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        serviceAfterTax = flag2;
        if (parcel.readByte() != 0)
        {
            flag3 = flag;
        } else
        {
            flag3 = false;
        }
        deliveryAfterTax = flag3;
        if (parcel.readByte() != 0)
        {
            flag4 = flag;
        } else
        {
            flag4 = false;
        }
        discountAfterTax = flag4;
        taxNumber = parcel.readString();
        if (parcel.readByte() != 0)
        {
            flag5 = flag;
        } else
        {
            flag5 = false;
        }
        includeServiceFeeDineIn = flag5;
        serviceFeeIdDineIn = parcel.readInt();
        if (parcel.readByte() != 0)
        {
            flag6 = flag;
        } else
        {
            flag6 = false;
        }
        includeServiceFeeTakeOut = flag6;
        serviceFeeIdTakeOut = parcel.readInt();
        if (parcel.readByte() == 0)
        {
            flag = false;
        }
        includeServiceFeeDelivery = flag;
        serviceFeeIdDelivery = parcel.readInt();
    }

    public int describeContents()
    {
        return 0;
    }

    public String getAddress1()
    {
        return address1;
    }

    public String getAddress2()
    {
        return address2;
    }

    public String getCurrency()
    {
        return currency;
    }

    public String getCurrencySign()
    {
        return currencySign;
    }

    public int getDecimalPlace()
    {
        return decimalPlace;
    }

    public String getEmail()
    {
        return email;
    }

    public int getId()
    {
        return id;
    }

    public Bitmap getLogoBitmap()
    {
        return logoBitmap;
    }

    public String getLogoName()
    {
        return logoName;
    }

    public String getName()
    {
        return name;
    }

    public int getServiceFeeIdDelivery()
    {
        return serviceFeeIdDelivery;
    }

    public int getServiceFeeIdDineIn()
    {
        return serviceFeeIdDineIn;
    }

    public int getServiceFeeIdTakeOut()
    {
        return serviceFeeIdTakeOut;
    }

    public double getTax1()
    {
        return tax1;
    }

    public String getTax1Name()
    {
        return tax1Name;
    }

    public double getTax2()
    {
        return tax2;
    }

    public String getTax2Name()
    {
        return tax2Name;
    }

    public double getTax3()
    {
        return tax3;
    }

    public String getTax3Name()
    {
        return tax3Name;
    }

    public String getTaxNumber()
    {
        return taxNumber;
    }

    public String getTel()
    {
        return tel;
    }

    public String getTimeIn()
    {
        return timeIn;
    }

    public String getTimeOut()
    {
        return timeOut;
    }

    public boolean isDeliveryAfterTax()
    {
        return deliveryAfterTax;
    }

    public boolean isDiscountAfterTax()
    {
        return discountAfterTax;
    }

    public boolean isIncludeServiceFeeDelivery()
    {
        return includeServiceFeeDelivery;
    }

    public boolean isIncludeServiceFeeDineIn()
    {
        return includeServiceFeeDineIn;
    }

    public boolean isIncludeServiceFeeTakeOut()
    {
        return includeServiceFeeTakeOut;
    }

    public boolean isItemPriceIncludeTax()
    {
        return itemPriceIncludeTax;
    }

    public boolean isServiceAfterTax()
    {
        return serviceAfterTax;
    }

    public void setAddress1(String s)
    {
        address1 = s;
    }

    public void setAddress2(String s)
    {
        address2 = s;
    }

    public void setCurrency(String s)
    {
        currency = s;
    }

    public void setCurrencySign(String s)
    {
        currencySign = s;
    }

    public void setDecimalPlace(int i)
    {
        decimalPlace = i;
    }

    public void setDeliveryAfterTax(boolean flag)
    {
        deliveryAfterTax = flag;
    }

    public void setDiscountAfterTax(boolean flag)
    {
        discountAfterTax = flag;
    }

    public void setEmail(String s)
    {
        email = s;
    }

    public void setId(int i)
    {
        id = i;
    }

    public void setIncludeServiceFeeDelivery(boolean flag)
    {
        includeServiceFeeDelivery = flag;
    }

    public void setIncludeServiceFeeDineIn(boolean flag)
    {
        includeServiceFeeDineIn = flag;
    }

    public void setIncludeServiceFeeTakeOut(boolean flag)
    {
        includeServiceFeeTakeOut = flag;
    }

    public void setItemPriceIncludeTax(boolean flag)
    {
        itemPriceIncludeTax = flag;
    }

    public void setLogoBitmap(Bitmap bitmap)
    {
        logoBitmap = bitmap;
    }

    public void setLogoName(String s)
    {
        logoName = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setServiceAfterTax(boolean flag)
    {
        serviceAfterTax = flag;
    }

    public void setServiceFeeIdDelivery(int i)
    {
        serviceFeeIdDelivery = i;
    }

    public void setServiceFeeIdDineIn(int i)
    {
        serviceFeeIdDineIn = i;
    }

    public void setServiceFeeIdTakeOut(int i)
    {
        serviceFeeIdTakeOut = i;
    }

    public void setTax1(double d)
    {
        tax1 = d;
    }

    public void setTax1Name(String s)
    {
        tax1Name = s;
    }

    public void setTax2(double d)
    {
        tax2 = d;
    }

    public void setTax2Name(String s)
    {
        tax2Name = s;
    }

    public void setTax3(double d)
    {
        tax3 = d;
    }

    public void setTax3Name(String s)
    {
        tax3Name = s;
    }

    public void setTaxNumber(String s)
    {
        taxNumber = s;
    }

    public void setTel(String s)
    {
        tel = s;
    }

    public void setTimeIn(String s)
    {
        timeIn = s;
    }

    public void setTimeOut(String s)
    {
        timeOut = s;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        int j = 1;
        parcel.writeInt(id);
        parcel.writeString(name);
        parcel.writeString(address1);
        parcel.writeString(address2);
        parcel.writeString(tel);
        parcel.writeString(currency);
        parcel.writeString(currencySign);
        parcel.writeString(email);
        parcel.writeString(timeIn);
        parcel.writeString(timeOut);
        parcel.writeString(logoName);
        parcel.writeInt(decimalPlace);
        parcel.writeValue(logoBitmap);
        parcel.writeDouble(tax1);
        parcel.writeDouble(tax2);
        parcel.writeDouble(tax3);
        parcel.writeString(tax1Name);
        parcel.writeString(tax2Name);
        parcel.writeString(tax3Name);
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        if (itemPriceIncludeTax)
        {
            k = j;
        } else
        {
            k = 0;
        }
        parcel.writeByte((byte)k);
        if (serviceAfterTax)
        {
            l = j;
        } else
        {
            l = 0;
        }
        parcel.writeByte((byte)l);
        if (deliveryAfterTax)
        {
            i1 = j;
        } else
        {
            i1 = 0;
        }
        parcel.writeByte((byte)i1);
        if (discountAfterTax)
        {
            j1 = j;
        } else
        {
            j1 = 0;
        }
        parcel.writeByte((byte)j1);
        parcel.writeString(taxNumber);
        if (includeServiceFeeDineIn)
        {
            k1 = j;
        } else
        {
            k1 = 0;
        }
        parcel.writeByte((byte)k1);
        parcel.writeInt(serviceFeeIdDineIn);
        if (includeServiceFeeTakeOut)
        {
            l1 = j;
        } else
        {
            l1 = 0;
        }
        parcel.writeByte((byte)l1);
        parcel.writeInt(serviceFeeIdTakeOut);
        if (!includeServiceFeeDelivery)
        {
            j = 0;
        }
        parcel.writeByte((byte)j);
        parcel.writeInt(serviceFeeIdDelivery);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public final Company createFromParcel(Parcel parcel)
        {
            return new Company(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final Company[] newArray(int i)
        {
            return new Company[i];
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
