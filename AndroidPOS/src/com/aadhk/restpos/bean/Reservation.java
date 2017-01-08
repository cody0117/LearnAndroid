// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;
import android.os.Parcelable;

public class Reservation
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private String email;
    private int guestNumber;
    private int id;
    private String name;
    private String notes;
    private String phone;
    private String reservedDate;
    private String reservedTime;
    private int status;
    private int tableId;
    private String tableName;

    public Reservation()
    {
    }

    protected Reservation(Parcel parcel)
    {
        id = parcel.readInt();
        name = parcel.readString();
        phone = parcel.readString();
        email = parcel.readString();
        notes = parcel.readString();
        guestNumber = parcel.readInt();
        tableId = parcel.readInt();
        tableName = parcel.readString();
        reservedDate = parcel.readString();
        reservedTime = parcel.readString();
        status = parcel.readInt();
    }

    public int describeContents()
    {
        return 0;
    }

    public String getEmail()
    {
        return email;
    }

    public int getGuestNumber()
    {
        return guestNumber;
    }

    public int getId()
    {
        return id;
    }

    public String getName()
    {
        return name;
    }

    public String getNotes()
    {
        return notes;
    }

    public String getPhone()
    {
        return phone;
    }

    public String getReservedDate()
    {
        return reservedDate;
    }

    public String getReservedTime()
    {
        return reservedTime;
    }

    public int getStatus()
    {
        return status;
    }

    public int getTableId()
    {
        return tableId;
    }

    public String getTableName()
    {
        return tableName;
    }

    public void setEmail(String s)
    {
        email = s;
    }

    public void setGuestNumber(int i)
    {
        guestNumber = i;
    }

    public void setId(int i)
    {
        id = i;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setNotes(String s)
    {
        notes = s;
    }

    public void setPhone(String s)
    {
        phone = s;
    }

    public void setReservedDate(String s)
    {
        reservedDate = s;
    }

    public void setReservedTime(String s)
    {
        reservedTime = s;
    }

    public void setStatus(int i)
    {
        status = i;
    }

    public void setTableId(int i)
    {
        tableId = i;
    }

    public void setTableName(String s)
    {
        tableName = s;
    }

    public final String toString()
    {
        return (new StringBuilder("Reservation [id=")).append(id).append(", name=").append(name).append(", phone=").append(phone).append(", email=").append(email).append(", notes=").append(notes).append(", guestNumber=").append(guestNumber).append(", tableId=").append(tableId).append(", tableName=").append(tableName).append(", reservedDate=").append(reservedDate).append(", reservedTime=").append(reservedTime).append(", status=").append(status).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(id);
        parcel.writeString(name);
        parcel.writeString(phone);
        parcel.writeString(email);
        parcel.writeString(notes);
        parcel.writeInt(guestNumber);
        parcel.writeInt(tableId);
        parcel.writeString(tableName);
        parcel.writeString(reservedDate);
        parcel.writeString(reservedTime);
        parcel.writeInt(status);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public final Reservation createFromParcel(Parcel parcel)
        {
            return new Reservation(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final Reservation[] newArray(int i)
        {
            return new Reservation[i];
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
