// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

public class PriceSchedule
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private double amtRate;
    private boolean enable;
    private String endDate;
    private String endTime;
    private boolean fri;
    private long id;
    private boolean isDisAmt;
    private List itemIds;
    private boolean mon;
    private String name;
    private boolean sat;
    private String startDate;
    private String startTime;
    private boolean sun;
    private boolean thu;
    private boolean tue;
    private boolean wed;

    public PriceSchedule()
    {
        itemIds = new ArrayList();
    }

    protected PriceSchedule(Parcel parcel)
    {
        boolean flag = true;
        super();
        id = parcel.readLong();
        name = parcel.readString();
        startDate = parcel.readString();
        endDate = parcel.readString();
        startTime = parcel.readString();
        endTime = parcel.readString();
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        boolean flag5;
        boolean flag6;
        boolean flag7;
        boolean flag8;
        if (parcel.readByte() != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        sun = flag1;
        if (parcel.readByte() != 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        mon = flag2;
        if (parcel.readByte() != 0)
        {
            flag3 = flag;
        } else
        {
            flag3 = false;
        }
        tue = flag3;
        if (parcel.readByte() != 0)
        {
            flag4 = flag;
        } else
        {
            flag4 = false;
        }
        wed = flag4;
        if (parcel.readByte() != 0)
        {
            flag5 = flag;
        } else
        {
            flag5 = false;
        }
        thu = flag5;
        if (parcel.readByte() != 0)
        {
            flag6 = flag;
        } else
        {
            flag6 = false;
        }
        fri = flag6;
        if (parcel.readByte() != 0)
        {
            flag7 = flag;
        } else
        {
            flag7 = false;
        }
        sat = flag7;
        if (parcel.readByte() != 0)
        {
            flag8 = flag;
        } else
        {
            flag8 = false;
        }
        enable = flag8;
        if (parcel.readByte() == flag)
        {
            itemIds = new ArrayList();
            parcel.readList(itemIds, java/lang/Long.getClassLoader());
        } else
        {
            itemIds = null;
        }
        amtRate = parcel.readDouble();
        if (parcel.readByte() == 0)
        {
            flag = false;
        }
        isDisAmt = flag;
    }

    public int describeContents()
    {
        return 0;
    }

    public double getAmtRate()
    {
        return amtRate;
    }

    public String getEndDate()
    {
        return endDate;
    }

    public String getEndTime()
    {
        return endTime;
    }

    public long getId()
    {
        return id;
    }

    public List getItemIds()
    {
        return itemIds;
    }

    public String getName()
    {
        return name;
    }

    public String getStartDate()
    {
        return startDate;
    }

    public String getStartTime()
    {
        return startTime;
    }

    public boolean isDisAmt()
    {
        return isDisAmt;
    }

    public boolean isEnable()
    {
        return enable;
    }

    public boolean isFri()
    {
        return fri;
    }

    public boolean isMon()
    {
        return mon;
    }

    public boolean isSat()
    {
        return sat;
    }

    public boolean isSun()
    {
        return sun;
    }

    public boolean isThu()
    {
        return thu;
    }

    public boolean isTue()
    {
        return tue;
    }

    public boolean isWed()
    {
        return wed;
    }

    public void setAmtRate(double d)
    {
        amtRate = d;
    }

    public void setDisAmt(boolean flag)
    {
        isDisAmt = flag;
    }

    public void setEnable(boolean flag)
    {
        enable = flag;
    }

    public void setEndDate(String s)
    {
        endDate = s;
    }

    public void setEndTime(String s)
    {
        endTime = s;
    }

    public void setFri(boolean flag)
    {
        fri = flag;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setItemIds(List list)
    {
        itemIds = list;
    }

    public void setMon(boolean flag)
    {
        mon = flag;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setSat(boolean flag)
    {
        sat = flag;
    }

    public void setStartDate(String s)
    {
        startDate = s;
    }

    public void setStartTime(String s)
    {
        startTime = s;
    }

    public void setSun(boolean flag)
    {
        sun = flag;
    }

    public void setThu(boolean flag)
    {
        thu = flag;
    }

    public void setTue(boolean flag)
    {
        tue = flag;
    }

    public void setWed(boolean flag)
    {
        wed = flag;
    }

    public final String toString()
    {
        return (new StringBuilder("PriceSchedule [id=")).append(id).append(", name=").append(name).append(", startDate=").append(startDate).append(", endDate=").append(endDate).append(", startTime=").append(startTime).append(", endTime=").append(endTime).append(", sun=").append(sun).append(", mon=").append(mon).append(", tue=").append(tue).append(", wed=").append(wed).append(", thu=").append(thu).append(", fri=").append(fri).append(", sat=").append(sat).append(", enable=").append(enable).append(", itemIds=").append(itemIds).append(", amtRate=").append(amtRate).append(", isDisAmt=").append(isDisAmt).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        int j = 1;
        parcel.writeLong(id);
        parcel.writeString(name);
        parcel.writeString(startDate);
        parcel.writeString(endDate);
        parcel.writeString(startTime);
        parcel.writeString(endTime);
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        if (sun)
        {
            k = j;
        } else
        {
            k = 0;
        }
        parcel.writeByte((byte)k);
        if (mon)
        {
            l = j;
        } else
        {
            l = 0;
        }
        parcel.writeByte((byte)l);
        if (tue)
        {
            i1 = j;
        } else
        {
            i1 = 0;
        }
        parcel.writeByte((byte)i1);
        if (wed)
        {
            j1 = j;
        } else
        {
            j1 = 0;
        }
        parcel.writeByte((byte)j1);
        if (thu)
        {
            k1 = j;
        } else
        {
            k1 = 0;
        }
        parcel.writeByte((byte)k1);
        if (fri)
        {
            l1 = j;
        } else
        {
            l1 = 0;
        }
        parcel.writeByte((byte)l1);
        if (sat)
        {
            i2 = j;
        } else
        {
            i2 = 0;
        }
        parcel.writeByte((byte)i2);
        if (enable)
        {
            j2 = j;
        } else
        {
            j2 = 0;
        }
        parcel.writeByte((byte)j2);
        if (itemIds == null)
        {
            parcel.writeByte((byte)0);
        } else
        {
            parcel.writeByte(j);
            parcel.writeList(itemIds);
        }
        parcel.writeDouble(amtRate);
        if (!isDisAmt)
        {
            j = 0;
        }
        parcel.writeByte((byte)j);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public final PriceSchedule createFromParcel(Parcel parcel)
        {
            return new PriceSchedule(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final PriceSchedule[] newArray(int i)
        {
            return new PriceSchedule[i];
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
