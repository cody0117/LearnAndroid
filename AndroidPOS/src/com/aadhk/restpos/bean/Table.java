// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class Table
{

    private long id;
    private boolean itemWait;
    private String name;
    private int num;
    private boolean open;
    private boolean picked;
    private boolean receipt;
    private int sequence;
    private int tableGroupId;

    public Table()
    {
    }

    public Table(long l, String s, boolean flag)
    {
        id = l;
        name = s;
        open = flag;
    }

    public Table(String s, boolean flag)
    {
        name = s;
        open = flag;
    }

    public long getId()
    {
        return id;
    }

    public String getName()
    {
        return name;
    }

    public int getNum()
    {
        return num;
    }

    public int getSequence()
    {
        return sequence;
    }

    public int getTableGroupId()
    {
        return tableGroupId;
    }

    public boolean isItemWait()
    {
        return itemWait;
    }

    public boolean isOpen()
    {
        return open;
    }

    public boolean isPicked()
    {
        return picked;
    }

    public boolean isReceipt()
    {
        return receipt;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setItemWait(boolean flag)
    {
        itemWait = flag;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setNum(int i)
    {
        num = i;
    }

    public void setOpen(boolean flag)
    {
        open = flag;
    }

    public void setPicked(boolean flag)
    {
        picked = flag;
    }

    public void setReceipt(boolean flag)
    {
        receipt = flag;
    }

    public void setSequence(int i)
    {
        sequence = i;
    }

    public void setTableGroupId(int i)
    {
        tableGroupId = i;
    }

    public final String toString()
    {
        return (new StringBuilder("Table [id=")).append(id).append(", name=").append(name).append(", num=").append(num).append(", open=").append(open).append(", sequence=").append(sequence).append(", receipt=").append(receipt).append(", itemWait=").append(itemWait).append(", picked=").append(picked).append(", tableGroupId=").append(tableGroupId).append("]").toString();
    }
}
