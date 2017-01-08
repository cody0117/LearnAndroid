// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.Modifier;
import com.aadhk.restpos.bean.ModifierGroup;
import com.aadhk.restpos.util.m;
import java.util.ArrayList;
import java.util.List;

public final class l
{

    private final SQLiteDatabase a;

    public l(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    public final List a(String s, int i, int j, int k, boolean flag, double d, 
            double d1, double d2, int i1)
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = a.query(false, "rest_modifier_group", new String[] {
            "rowid as _id", "name"
        }, (new StringBuilder("rowid in (")).append(s).append(")").toString(), null, null, null, " name asc ", null);
        if (cursor.moveToFirst())
        {
            do
            {
                ModifierGroup modifiergroup = new ModifierGroup();
                long l1 = cursor.getLong(0);
                modifiergroup.setName(cursor.getString(1));
                Cursor cursor1 = a.query(false, "rest_modifier", new String[] {
                    "rowid as _id", "name", "price", "cost", "type", "qty", "required"
                }, (new StringBuilder("groupId = ")).append(l1).toString(), null, null, null, " type asc ,name asc ", null);
                if (cursor1.moveToFirst())
                {
                    ArrayList arraylist1 = new ArrayList();
                    do
                    {
                        Modifier modifier = new Modifier();
                        modifier.setId(cursor1.getLong(0));
                        modifier.setName(cursor1.getString(1));
                        double d3 = cursor1.getDouble(2);
                        if (flag)
                        {
                            if (i == 1)
                            {
                                d3 = m.a(d3, d, i1, false);
                            }
                            if (j == 2)
                            {
                                d3 = m.a(d3, d1, i1, false);
                            }
                            if (k == 3)
                            {
                                d3 = m.a(d3, d2, i1, false);
                            }
                        }
                        modifier.setPrice(d3);
                        modifier.setCost(cursor1.getDouble(3));
                        modifier.setType(cursor1.getInt(4));
                        modifier.setQty(cursor1.getInt(5));
                        boolean flag1;
                        if (cursor1.getInt(6) == 1)
                        {
                            flag1 = true;
                        } else
                        {
                            flag1 = false;
                        }
                        modifier.setRequired(flag1);
                        arraylist1.add(modifier);
                        modifiergroup.setModifiers(arraylist1);
                    } while (cursor1.moveToNext());
                }
                cursor1.close();
                arraylist.add(modifiergroup);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(long l1)
    {
        a.delete("rest_modifier", (new StringBuilder("rowid=")).append(l1).toString(), null);
    }
}
