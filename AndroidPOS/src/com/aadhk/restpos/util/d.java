// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;

import com.aadhk.restpos.bean.Item;
import java.util.Comparator;

public final class d
    implements Comparator
{

    public d()
    {
    }

    public final int compare(Object obj, Object obj1)
    {
        Item item = (Item)obj;
        Item item1 = (Item)obj1;
        return item.getName().compareTo(item1.getName());
    }
}
