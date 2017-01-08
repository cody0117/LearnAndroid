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
    private String email;
    private int id;
    private boolean includeService;
    private boolean includeTax;
    private Bitmap logoBitmap;
    private String logoName;
    private String name;
    private int serviceFee;
    private double tax1;
    private String tax1Name;
    private double tax2;
    private String tax2Name;
    private String taxNumber;
    private String tel;
    private String timeIn;
    private String timeOut;
    private int tip;

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
        tax1Name = parcel.readString();
        tax2Name = parcel.readString();
        boolean flag1;
        if (parcel.readByte() != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        includeTax = flag1;
        taxNumber = parcel.readString();
        if (parcel.readByte() == 0)
        {
            flag = false;
        }
        includeService = flag;
        serviceFee = parcel.readInt();
        tip = parcel.readInt();
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

    public int getServiceFee()
    {
        return serviceFee;
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

    public int getTip()
    {
        return tip;
    }

    public boolean isIncludeService()
    {
        return includeService;
    }

    public boolean isIncludeTax()
    {
        return includeTax;
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

    public void setEmail(String s)
    {
        email = s;
    }

    public void setId(int i)
    {
        id = i;
    }

    public void setIncludeService(boolean flag)
    {
        includeService = flag;
    }

    public void setIncludeTax(boolean flag)
    {
        includeTax = flag;
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

    public void setServiceFee(int i)
    {
        serviceFee = i;
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

    public void setTip(int i)
    {
        tip = i;
    }

    public final String toString()
    {
        return (new StringBuilder("Company [id=")).append(id).append(", name=").append(name).append(", address1=").append(address1).append(", address2=").append(address2).append(", tel=").append(tel).append(", currency=").append(currency).append(", currencySign=").append(currencySign).append(", email=").append(email).append(", timeIn=").append(timeIn).append(", timeOut=").append(timeOut).append(", logoName=").append(logoName).append(", decimalPlace=").append(decimalPlace).append(", logoBitmap=").append(logoBitmap).append(", tax1=").append(tax1).append(", tax2=").append(tax2).append(", tax1Name=").append(tax1Name).append(", tax2Name=").append(tax2Name).append(", includeTax=").append(includeTax).append(", taxNumber=").append(taxNumber).append(", serviceFee=").append(serviceFee).append(", tip=").append(tip).append("]").toString();
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
        parcel.writeString(tax1Name);
        parcel.writeString(tax2Name);
        int k;
        if (includeTax)
        {
            k = j;
        } else
        {
            k = 0;
        }
        parcel.writeByte((byte)k);
        parcel.writeString(taxNumber);
        if (!includeService)
        {
            j = 0;
        }
        parcel.writeByte((byte)j);
        parcel.writeInt(serviceFee);
        parcel.writeInt(tip);
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
