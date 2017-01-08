// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;
import android.os.Parcelable;

public class RolePermission
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private int function;
    private int id;
    private boolean isShow;
    private boolean managerPermission;
    private int role;

    public RolePermission()
    {
    }

    public RolePermission(int i, int j, int k, boolean flag, boolean flag1)
    {
        id = i;
        role = j;
        function = k;
        isShow = flag;
        managerPermission = flag1;
    }

    protected RolePermission(Parcel parcel)
    {
        boolean flag = true;
        super();
        id = parcel.readInt();
        role = parcel.readInt();
        function = parcel.readInt();
        boolean flag1;
        if (parcel.readByte() != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        isShow = flag1;
        if (parcel.readByte() == 0)
        {
            flag = false;
        }
        managerPermission = flag;
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
            RolePermission rolepermission = (RolePermission)obj;
            if (function != rolepermission.function)
            {
                return false;
            }
        }
        return true;
    }

    public int getFunction()
    {
        return function;
    }

    public int getId()
    {
        return id;
    }

    public int getRole()
    {
        return role;
    }

    public final int hashCode()
    {
        return 31 + function;
    }

    public boolean isManagerPermission()
    {
        return managerPermission;
    }

    public boolean isShow()
    {
        return isShow;
    }

    public void setFunction(int i)
    {
        function = i;
    }

    public void setId(int i)
    {
        id = i;
    }

    public void setManagerPermission(boolean flag)
    {
        managerPermission = flag;
    }

    public void setRole(int i)
    {
        role = i;
    }

    public void setShow(boolean flag)
    {
        isShow = flag;
    }

    public final String toString()
    {
        return (new StringBuilder("RolePermission [id=")).append(id).append(", role=").append(role).append(", function=").append(function).append(", isShow=").append(isShow).append(", managerPermission=").append(managerPermission).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        int j = 1;
        parcel.writeInt(id);
        parcel.writeInt(role);
        parcel.writeInt(function);
        int k;
        if (isShow)
        {
            k = j;
        } else
        {
            k = 0;
        }
        parcel.writeByte((byte)k);
        if (!managerPermission)
        {
            j = 0;
        }
        parcel.writeByte((byte)j);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public final RolePermission createFromParcel(Parcel parcel)
        {
            return new RolePermission(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final RolePermission[] newArray(int i)
        {
            return new RolePermission[i];
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
