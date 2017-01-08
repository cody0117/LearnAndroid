// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.bean:
//            Modifier

public class ModifierGroup
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private long id;
    private int miniNum;
    private List modifiers;
    private String name;

    public ModifierGroup()
    {
        modifiers = new ArrayList();
    }

    protected ModifierGroup(Parcel parcel)
    {
        id = parcel.readLong();
        name = parcel.readString();
        miniNum = parcel.readInt();
        if (parcel.readByte() == 1)
        {
            modifiers = new ArrayList();
            parcel.readList(modifiers, com/aadhk/restpos/bean/Modifier.getClassLoader());
            return;
        } else
        {
            modifiers = null;
            return;
        }
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
            ModifierGroup modifiergroup = (ModifierGroup)obj;
            if (id != modifiergroup.id)
            {
                return false;
            }
        }
        return true;
    }

    public long getId()
    {
        return id;
    }

    public int getMiniNum()
    {
        return miniNum;
    }

    public List getModifiers()
    {
        return modifiers;
    }

    public String getName()
    {
        return name;
    }

    public final int hashCode()
    {
        return 31 + (int)(id ^ id >>> 32);
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setMiniNum(int i)
    {
        miniNum = i;
    }

    public void setModifiers(List list)
    {
        modifiers = list;
    }

    public void setName(String s)
    {
        name = s;
    }

    public final String toString()
    {
        return (new StringBuilder("ModifierGroup [id=")).append(id).append(", name=").append(name).append(", miniNum=").append(miniNum).append(",modifierType=").append(modifiers).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeLong(id);
        parcel.writeString(name);
        parcel.writeInt(miniNum);
        if (modifiers == null)
        {
            parcel.writeByte((byte)0);
            return;
        } else
        {
            parcel.writeByte((byte)1);
            parcel.writeList(modifiers);
            return;
        }
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public final ModifierGroup createFromParcel(Parcel parcel)
        {
            return new ModifierGroup(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final ModifierGroup[] newArray(int i)
        {
            return new ModifierGroup[i];
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
