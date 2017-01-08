// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;
import android.os.Parcelable;

public class PrinterSetting
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private String btName;
    private String commBeep;
    private String commCut;
    private String commDrawer;
    private String commInitial;
    private String commTitleSize;
    private int connType;
    private boolean enableBeep;
    private String hostingIp;
    private int id;
    private String ip;
    private int marginBottom;
    private int marginLeft;
    private int marginRight;
    private int marginTop;
    private String model;
    private boolean openDrawer;
    private int paperWidth;
    private int port;
    private int printNum;
    private String printerName;
    private String serviceName;
    private String usbName;

    public PrinterSetting()
    {
    }

    protected PrinterSetting(Parcel parcel)
    {
        boolean flag = true;
        super();
        id = parcel.readInt();
        ip = parcel.readString();
        printerName = parcel.readString();
        paperWidth = parcel.readInt();
        connType = parcel.readInt();
        boolean flag1;
        if (parcel.readByte() != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        openDrawer = flag1;
        port = parcel.readInt();
        model = parcel.readString();
        printNum = parcel.readInt();
        commInitial = parcel.readString();
        commTitleSize = parcel.readString();
        commCut = parcel.readString();
        commDrawer = parcel.readString();
        commBeep = parcel.readString();
        if (parcel.readByte() == 0)
        {
            flag = false;
        }
        enableBeep = flag;
        hostingIp = parcel.readString();
        serviceName = parcel.readString();
        usbName = parcel.readString();
        btName = parcel.readString();
        marginTop = parcel.readInt();
        marginBottom = parcel.readInt();
        marginLeft = parcel.readInt();
        marginRight = parcel.readInt();
    }

    public int describeContents()
    {
        return 0;
    }

    public String getBtName()
    {
        return btName;
    }

    public String getCommBeep()
    {
        return commBeep;
    }

    public String getCommCut()
    {
        return commCut;
    }

    public String getCommDrawer()
    {
        return commDrawer;
    }

    public String getCommInitial()
    {
        return commInitial;
    }

    public String getCommTitleSize()
    {
        return commTitleSize;
    }

    public int getConnType()
    {
        return connType;
    }

    public String getHostingIp()
    {
        return hostingIp;
    }

    public int getId()
    {
        return id;
    }

    public String getIp()
    {
        return ip;
    }

    public int getMarginBottom()
    {
        return marginBottom;
    }

    public int getMarginLeft()
    {
        return marginLeft;
    }

    public int getMarginRight()
    {
        return marginRight;
    }

    public int getMarginTop()
    {
        return marginTop;
    }

    public String getModel()
    {
        return model;
    }

    public int getPaperWidth()
    {
        return paperWidth;
    }

    public int getPort()
    {
        return port;
    }

    public int getPrintNum()
    {
        return printNum;
    }

    public String getPrinterName()
    {
        return printerName;
    }

    public String getServiceName()
    {
        return serviceName;
    }

    public String getUsbName()
    {
        return usbName;
    }

    public boolean isEnableBeep()
    {
        return enableBeep;
    }

    public boolean isOpenDrawer()
    {
        return openDrawer;
    }

    public void setBtName(String s)
    {
        btName = s;
    }

    public void setCommBeep(String s)
    {
        commBeep = s;
    }

    public void setCommCut(String s)
    {
        commCut = s;
    }

    public void setCommDrawer(String s)
    {
        commDrawer = s;
    }

    public void setCommInitial(String s)
    {
        commInitial = s;
    }

    public void setCommTitleSize(String s)
    {
        commTitleSize = s;
    }

    public void setConnType(int i)
    {
        connType = i;
    }

    public void setEnableBeep(boolean flag)
    {
        enableBeep = flag;
    }

    public void setHostingIp(String s)
    {
        hostingIp = s;
    }

    public void setId(int i)
    {
        id = i;
    }

    public void setIp(String s)
    {
        ip = s;
    }

    public void setMarginBottom(int i)
    {
        marginBottom = i;
    }

    public void setMarginLeft(int i)
    {
        marginLeft = i;
    }

    public void setMarginRight(int i)
    {
        marginRight = i;
    }

    public void setMarginTop(int i)
    {
        marginTop = i;
    }

    public void setModel(String s)
    {
        model = s;
    }

    public void setOpenDrawer(boolean flag)
    {
        openDrawer = flag;
    }

    public void setPaperWidth(int i)
    {
        paperWidth = i;
    }

    public void setPort(int i)
    {
        port = i;
    }

    public void setPrintNum(int i)
    {
        printNum = i;
    }

    public void setPrinterName(String s)
    {
        printerName = s;
    }

    public void setServiceName(String s)
    {
        serviceName = s;
    }

    public void setUsbName(String s)
    {
        usbName = s;
    }

    public final String toString()
    {
        return (new StringBuilder("PrinterSetting [id=")).append(id).append(", ip=").append(ip).append(", printerName=").append(printerName).append(", paperWidth=").append(paperWidth).append(", connType=").append(connType).append(", openDrawer=").append(openDrawer).append(", printNum=").append(printNum).append(", port=").append(port).append(", model=").append(model).append(", commInitial=").append(commInitial).append(", commTitleSize=").append(commTitleSize).append(", commCut=").append(commCut).append(", commDrawer=").append(commDrawer).append(", commBeep=").append(commBeep).append(", enableBeep=").append(enableBeep).append(", hostingIp=").append(hostingIp).append(", serviceName=").append(serviceName).append(", marginTop=").append(marginTop).append(", marginLeft=").append(marginLeft).append(", marginRight=").append(marginRight).append(", marginBottom=").append(marginBottom).append(", usbName=").append(usbName).append(", btName=").append(btName).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        int j = 1;
        parcel.writeInt(id);
        parcel.writeString(ip);
        parcel.writeString(printerName);
        parcel.writeInt(paperWidth);
        parcel.writeInt(connType);
        int k;
        if (openDrawer)
        {
            k = j;
        } else
        {
            k = 0;
        }
        parcel.writeByte((byte)k);
        parcel.writeInt(port);
        parcel.writeString(model);
        parcel.writeInt(printNum);
        parcel.writeString(commInitial);
        parcel.writeString(commTitleSize);
        parcel.writeString(commCut);
        parcel.writeString(commDrawer);
        parcel.writeString(commBeep);
        if (!enableBeep)
        {
            j = 0;
        }
        parcel.writeByte((byte)j);
        parcel.writeString(hostingIp);
        parcel.writeString(serviceName);
        parcel.writeString(usbName);
        parcel.writeString(btName);
        parcel.writeInt(marginTop);
        parcel.writeInt(marginBottom);
        parcel.writeInt(marginLeft);
        parcel.writeInt(marginRight);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public final PrinterSetting createFromParcel(Parcel parcel)
        {
            return new PrinterSetting(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final PrinterSetting[] newArray(int i)
        {
            return new PrinterSetting[i];
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
