// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;

import android.content.Context;
import com.aadhk.restpos.bean.User;
import java.util.ArrayList;
import java.util.List;

public final class h
{

    public static List a(Context context)
    {
        ArrayList arraylist = new ArrayList();
        new User();
        User user = new User();
        user.setId(2);
        user.setAccount(context.getString(0x7f080336));
        user.setPassword("123456");
        user.setRole(1);
        user.setEnable(true);
        arraylist.add(user);
        User user1 = new User();
        user1.setId(3);
        user1.setAccount(context.getString(0x7f080337));
        user1.setPassword("234567");
        user1.setRole(2);
        user1.setEnable(true);
        arraylist.add(user1);
        return arraylist;
    }
}
