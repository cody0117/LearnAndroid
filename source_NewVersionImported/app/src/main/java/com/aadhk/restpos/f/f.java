// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import com.aadhk.restpos.bean.User;
import java.util.ArrayList;
import java.util.List;

public final class f
{

    public static List a(Context context)
    {
        ArrayList arraylist = new ArrayList();
        new User();
        User user = new User();
        user.setId(2);
        user.setAccount(context.getString(0x7f0902d8));
        user.setPassword("123456");
        user.setRole(1);
        user.setEnable(true);
        arraylist.add(user);
        User user1 = new User();
        user1.setId(3);
        user1.setAccount(context.getString(0x7f0902d9));
        user1.setPassword("123456");
        user1.setRole(2);
        user1.setEnable(true);
        arraylist.add(user1);
        User user2 = new User();
        user2.setId(4);
        user2.setAccount(context.getString(0x7f0902da));
        user2.setPassword("123456");
        user2.setRole(3);
        user2.setEnable(true);
        arraylist.add(user2);
        return arraylist;
    }
}
