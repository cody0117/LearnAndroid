// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;

import com.aadhk.restpos.bean.OrderItem;
import java.util.Comparator;

public final class e
    implements Comparator
{

    public e()
    {
    }

    public final int compare(Object obj, Object obj1)
    {
        OrderItem orderitem = (OrderItem)obj;
        OrderItem orderitem1 = (OrderItem)obj1;
        return orderitem.getItemName().compareTo(orderitem1.getItemName());
    }
}
