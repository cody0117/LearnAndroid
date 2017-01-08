// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.aadhk.printer.PrinterSetting;

public class POSPrinterSetting extends PrinterSetting
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private String deviceId;
    private boolean enable;
    private boolean enableTip;
    private int fontSize;
    private String footer;
    private String header;
    private String locale;
    private String logoName;
    private boolean printSeparate;
    private int printType;
    private String updateDate;
    private String user;

    public POSPrinterSetting()
    {
    }

    protected POSPrinterSetting(Parcel parcel)
    {
        boolean flag = true;
        super(parcel);
        fontSize = parcel.readInt();
        logoName = parcel.readString();
        header = parcel.readString();
        footer = parcel.readString();
        printType = parcel.readInt();
        boolean flag1;
        boolean flag2;
        if (parcel.readByte() != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        enable = flag1;
        if (parcel.readByte() != 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        enableTip = flag2;
        if (parcel.readByte() == 0)
        {
            flag = false;
        }
        printSeparate = flag;
        deviceId = parcel.readString();
        updateDate = parcel.readString();
        user = parcel.readString();
        locale = parcel.readString();
    }

    public int describeContents()
    {
        return 0;
    }

    public String getDeviceId()
    {
        return deviceId;
    }

    public int getFontSize()
    {
        return fontSize;
    }

    public String getFooter()
    {
        return footer;
    }

    public String getHeader()
    {
        return header;
    }

    public String getLocale()
    {
        return locale;
    }

    public String getLogoName()
    {
        return logoName;
    }

    public int getPrintType()
    {
        return printType;
    }

    public String getUpdateDate()
    {
        return updateDate;
    }

    public String getUser()
    {
        return user;
    }

    public boolean isEnable()
    {
        return enable;
    }

    public boolean isEnableTip()
    {
        return enableTip;
    }

    public boolean isPrintSeparate()
    {
        return printSeparate;
    }

    public void setDeviceId(String s)
    {
        deviceId = s;
    }

    public void setEnable(boolean flag)
    {
        enable = flag;
    }

    public void setEnableTip(boolean flag)
    {
        enableTip = flag;
    }

    public void setFontSize(int i)
    {
        fontSize = i;
    }

    public void setFooter(String s)
    {
        footer = s;
    }

    public void setHeader(String s)
    {
        header = s;
    }

    public void setLocale(String s)
    {
        locale = s;
    }

    public void setLogoName(String s)
    {
        logoName = s;
    }

    public void setPrintSeparate(boolean flag)
    {
        printSeparate = flag;
    }

    public void setPrintType(int i)
    {
        printType = i;
    }

    public void setUpdateDate(String s)
    {
        updateDate = s;
    }

    public void setUser(String s)
    {
        user = s;
    }

    public final String toString()
    {
        return (new StringBuilder("POSPrinterSetting [fontSize=")).append(fontSize).append(", logoName=").append(logoName).append(", footer=").append(footer).append(", header=").append(header).append(", printType=").append(printType).append(", enable=").append(enable).append(", enableTip=").append(enableTip).append(", printSeparate=").append(printSeparate).append(", deviceId=").append(deviceId).append(", updateDate=").append(updateDate).append(", user=").append(user).append(", locale=").append(locale).append(", toString()=").append(super.toString()).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        int j = 1;
        super.writeToParcel(parcel, i);
        parcel.writeInt(fontSize);
        parcel.writeString(logoName);
        parcel.writeString(header);
        parcel.writeString(footer);
        parcel.writeInt(printType);
        int k;
        int l;
        if (enable)
        {
            k = j;
        } else
        {
            k = 0;
        }
        parcel.writeByte((byte)k);
        if (enableTip)
        {
            l = j;
        } else
        {
            l = 0;
        }
        parcel.writeByte((byte)l);
        if (!printSeparate)
        {
            j = 0;
        }
        parcel.writeByte((byte)j);
        parcel.writeString(deviceId);
        parcel.writeString(updateDate);
        parcel.writeString(user);
        parcel.writeString(locale);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public final POSPrinterSetting createFromParcel(Parcel parcel)
        {
            return new POSPrinterSetting(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final POSPrinterSetting[] newArray(int i)
        {
            return new POSPrinterSetting[i];
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
