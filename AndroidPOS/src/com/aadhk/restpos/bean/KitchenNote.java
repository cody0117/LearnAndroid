// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

public class KitchenNote
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private int groupId;
    private int id;
    private List listNote;
    private String name;

    public KitchenNote()
    {
        listNote = new ArrayList();
    }

    protected KitchenNote(Parcel parcel)
    {
        id = parcel.readInt();
        name = parcel.readString();
        groupId = parcel.readInt();
        if (parcel.readByte() == 1)
        {
            listNote = new ArrayList();
            parcel.readList(listNote, com/aadhk/restpos/bean/KitchenNote.getClassLoader());
            return;
        } else
        {
            listNote = null;
            return;
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public int getGroupId()
    {
        return groupId;
    }

    public int getId()
    {
        return id;
    }

    public List getListNote()
    {
        return listNote;
    }

    public String getName()
    {
        return name;
    }

    public void setGroupId(int i)
    {
        groupId = i;
    }

    public void setId(int i)
    {
        id = i;
    }

    public void setListNote(List list)
    {
        listNote = list;
    }

    public void setName(String s)
    {
        name = s;
    }

    public final String toString()
    {
        return (new StringBuilder("Note [id=")).append(id).append(", name=").append(name).append(", groupId=").append(groupId).append(", listNote=").append(listNote).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(id);
        parcel.writeString(name);
        parcel.writeInt(groupId);
        if (listNote == null)
        {
            parcel.writeByte((byte)0);
            return;
        } else
        {
            parcel.writeByte((byte)1);
            parcel.writeList(listNote);
            return;
        }
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public final KitchenNote createFromParcel(Parcel parcel)
        {
            return new KitchenNote(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final KitchenNote[] newArray(int i)
        {
            return new KitchenNote[i];
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
