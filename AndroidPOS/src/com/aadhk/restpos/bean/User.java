// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;
import android.os.Parcelable;

public class User
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private String account;
    private boolean enable;
    private int id;
    private String password;
    private int role;

    public User()
    {
    }

    public User(int i, String s, String s1, boolean flag, int j)
    {
        id = i;
        account = s;
        password = s1;
        enable = flag;
        role = j;
    }

    protected User(Parcel parcel)
    {
        id = parcel.readInt();
        account = parcel.readString();
        password = parcel.readString();
        boolean flag;
        if (parcel.readByte() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        enable = flag;
        role = parcel.readInt();
    }

    public User clone()
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeValue(this);
        parcel.setDataPosition(0);
        User user = (User)parcel.readValue(com/aadhk/restpos/bean/User.getClassLoader());
        parcel.recycle();
        return user;
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
            User user = (User)obj;
            if (id != user.id)
            {
                return false;
            }
        }
        return true;
    }

    public String getAccount()
    {
        return account;
    }

    public int getId()
    {
        return id;
    }

    public String getPassword()
    {
        return password;
    }

    public int getRole()
    {
        return role;
    }

    public final int hashCode()
    {
        return 31 + id;
    }

    public boolean isEnable()
    {
        return enable;
    }

    public void setAccount(String s)
    {
        account = s;
    }

    public void setEnable(boolean flag)
    {
        enable = flag;
    }

    public void setId(int i)
    {
        id = i;
    }

    public void setPassword(String s)
    {
        password = s;
    }

    public void setRole(int i)
    {
        role = i;
    }

    public final String toString()
    {
        return (new StringBuilder("User [id=")).append(id).append(", account=").append(account).append(", password=").append(password).append(", enable=").append(enable).append(", role=").append(role).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(id);
        parcel.writeString(account);
        parcel.writeString(password);
        int j;
        if (enable)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        parcel.writeByte((byte)j);
        parcel.writeInt(role);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public final User createFromParcel(Parcel parcel)
        {
            return new User(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final User[] newArray(int i)
        {
            return new User[i];
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
