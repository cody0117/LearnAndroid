// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.PriceSchedule;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public final class q
{

    private static final String a[] = {
        "id", "name", "startDate", "endDate", "startTime", "endTime", "enable", "isDisAmt", "amtRate", "sun", 
        "mon", "tue", "wed", "thu", "fri", "sat", "itemIds"
    };
    private final SQLiteDatabase b;

    public q(SQLiteDatabase sqlitedatabase)
    {
        b = sqlitedatabase;
    }

    public final PriceSchedule a(long l, String s, String s1, int i)
    {
        PriceSchedule priceschedule;
        String s2;
        priceschedule = null;
        s2 = (new StringBuilder(" select itemIds, name, isDisAmt, amtRate from rest_price_sechedule where enable=1 and '")).append(s).append("' between startDate and endDate and '").append(s1).append("' between startTime and endTime").toString();
        i;
        JVM INSTR tableswitch 1 7: default 80
    //                   1 312
    //                   2 319
    //                   3 326
    //                   4 333
    //                   5 340
    //                   6 347
    //                   7 354;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
        String s3 = null;
_L17:
        Cursor cursor;
        boolean flag;
        if (s3 != null)
        {
            s2 = (new StringBuilder()).append(s2).append(" and ").append(s3).toString();
        }
        String s4 = (new StringBuilder()).append(s2).append(" order by rowid asc").toString();
        cursor = b.rawQuery(s4, null);
        if (!cursor.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_394;
        }
        flag = false;
_L21:
        String s5 = cursor.getString(0);
        if ("".equals(s5)) goto _L10; else goto _L9
_L9:
        String as[];
        int j;
        as = s5.split(",");
        j = 0;
_L18:
        if (j >= as.length) goto _L12; else goto _L11
_L11:
        if (Long.parseLong(as[j]) != l) goto _L14; else goto _L13
_L13:
        boolean flag1 = true;
_L19:
        PriceSchedule priceschedule1;
        if (flag1)
        {
            priceschedule = new PriceSchedule();
            priceschedule.setName(cursor.getString(1));
            boolean flag2;
            if (cursor.getInt(2) != 0)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            priceschedule.setDisAmt(flag2);
            priceschedule.setAmtRate(cursor.getDouble(3));
        }
        flag = flag1;
        priceschedule1 = priceschedule;
_L20:
        if (cursor.moveToNext() && !flag) goto _L16; else goto _L15
_L15:
        cursor.close();
        return priceschedule1;
_L2:
        s3 = "sun=1";
          goto _L17
_L3:
        s3 = "mon=1";
          goto _L17
_L4:
        s3 = "tue=1";
          goto _L17
_L5:
        s3 = "wed=1";
          goto _L17
_L6:
        s3 = "thu=1";
          goto _L17
_L7:
        s3 = "fri=1";
          goto _L17
_L8:
        s3 = "sat=1";
          goto _L17
_L14:
        j++;
          goto _L18
_L12:
        flag1 = flag;
          goto _L19
_L10:
        priceschedule1 = priceschedule;
          goto _L20
_L16:
        priceschedule = priceschedule1;
          goto _L21
        priceschedule1 = null;
          goto _L15
    }

    public final List a()
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = b.query(false, "rest_price_sechedule", a, null, null, null, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                PriceSchedule priceschedule = new PriceSchedule();
                priceschedule.setId(cursor.getInt(0));
                priceschedule.setName(cursor.getString(1));
                priceschedule.setStartDate(cursor.getString(2));
                priceschedule.setEndDate(cursor.getString(3));
                priceschedule.setStartTime(cursor.getString(4));
                priceschedule.setEndTime(cursor.getString(5));
                boolean flag;
                boolean flag1;
                boolean flag2;
                boolean flag3;
                boolean flag4;
                boolean flag5;
                boolean flag6;
                boolean flag7;
                boolean flag8;
                StringTokenizer stringtokenizer;
                ArrayList arraylist1;
                if (cursor.getInt(6) != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                priceschedule.setEnable(flag);
                if (cursor.getInt(7) != 0)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                priceschedule.setDisAmt(flag1);
                priceschedule.setAmtRate(cursor.getDouble(8));
                if (cursor.getInt(9) != 0)
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                priceschedule.setSun(flag2);
                if (cursor.getInt(10) != 0)
                {
                    flag3 = true;
                } else
                {
                    flag3 = false;
                }
                priceschedule.setMon(flag3);
                if (cursor.getInt(11) != 0)
                {
                    flag4 = true;
                } else
                {
                    flag4 = false;
                }
                priceschedule.setTue(flag4);
                if (cursor.getInt(12) != 0)
                {
                    flag5 = true;
                } else
                {
                    flag5 = false;
                }
                priceschedule.setWed(flag5);
                if (cursor.getInt(13) != 0)
                {
                    flag6 = true;
                } else
                {
                    flag6 = false;
                }
                priceschedule.setThu(flag6);
                if (cursor.getInt(14) != 0)
                {
                    flag7 = true;
                } else
                {
                    flag7 = false;
                }
                priceschedule.setFri(flag7);
                if (cursor.getInt(15) != 0)
                {
                    flag8 = true;
                } else
                {
                    flag8 = false;
                }
                priceschedule.setSat(flag8);
                stringtokenizer = new StringTokenizer(cursor.getString(16), ",");
                arraylist1 = new ArrayList();
                for (; stringtokenizer.hasMoreTokens(); arraylist1.add(Long.valueOf(Long.parseLong(stringtokenizer.nextToken())))) { }
                priceschedule.setItemIds(arraylist1);
                arraylist.add(priceschedule);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(long l)
    {
        b.delete("rest_price_sechedule", (new StringBuilder("id=")).append(l).toString(), null);
    }

    public final void a(PriceSchedule priceschedule)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", priceschedule.getName());
        contentvalues.put("startDate", priceschedule.getStartDate());
        contentvalues.put("endDate", priceschedule.getEndDate());
        contentvalues.put("startTime", priceschedule.getStartTime());
        contentvalues.put("endTime", priceschedule.getEndTime());
        contentvalues.put("enable", Boolean.valueOf(priceschedule.isEnable()));
        contentvalues.put("isDisAmt", Boolean.valueOf(priceschedule.isDisAmt()));
        contentvalues.put("amtRate", Double.valueOf(priceschedule.getAmtRate()));
        contentvalues.put("sun", Boolean.valueOf(priceschedule.isSun()));
        contentvalues.put("mon", Boolean.valueOf(priceschedule.isMon()));
        contentvalues.put("tue", Boolean.valueOf(priceschedule.isTue()));
        contentvalues.put("wed", Boolean.valueOf(priceschedule.isWed()));
        contentvalues.put("thu", Boolean.valueOf(priceschedule.isThu()));
        contentvalues.put("fri", Boolean.valueOf(priceschedule.isFri()));
        contentvalues.put("sat", Boolean.valueOf(priceschedule.isSat()));
        List list = priceschedule.getItemIds();
        String s;
        if (list != null)
        {
            s = "";
            int i = 0;
            while (i < list.size()) 
            {
                long l = ((Long)list.get(i)).longValue();
                String s1;
                if (i != 0)
                {
                    s1 = (new StringBuilder()).append(s).append(",").append(l).toString();
                } else
                {
                    s1 = (new StringBuilder()).append(l).toString();
                }
                i++;
                s = s1;
            }
        } else
        {
            s = "";
        }
        contentvalues.put("itemIds", s);
        b.insert("rest_price_sechedule", null, contentvalues);
    }

    public final void b(PriceSchedule priceschedule)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", priceschedule.getName());
        contentvalues.put("startDate", priceschedule.getStartDate());
        contentvalues.put("endDate", priceschedule.getEndDate());
        contentvalues.put("startTime", priceschedule.getStartTime());
        contentvalues.put("endTime", priceschedule.getEndTime());
        contentvalues.put("enable", Boolean.valueOf(priceschedule.isEnable()));
        contentvalues.put("isDisAmt", Boolean.valueOf(priceschedule.isDisAmt()));
        contentvalues.put("amtRate", Double.valueOf(priceschedule.getAmtRate()));
        contentvalues.put("sun", Boolean.valueOf(priceschedule.isSun()));
        contentvalues.put("mon", Boolean.valueOf(priceschedule.isMon()));
        contentvalues.put("tue", Boolean.valueOf(priceschedule.isTue()));
        contentvalues.put("wed", Boolean.valueOf(priceschedule.isWed()));
        contentvalues.put("thu", Boolean.valueOf(priceschedule.isThu()));
        contentvalues.put("fri", Boolean.valueOf(priceschedule.isFri()));
        contentvalues.put("sat", Boolean.valueOf(priceschedule.isSat()));
        List list = priceschedule.getItemIds();
        String s = "";
        int i = 0;
        while (i < list.size()) 
        {
            long l = ((Long)list.get(i)).longValue();
            String s1;
            if (i != 0)
            {
                s1 = (new StringBuilder()).append(s).append(",").append(l).toString();
            } else
            {
                s1 = (new StringBuilder()).append(l).toString();
            }
            i++;
            s = s1;
        }
        contentvalues.put("itemIds", s);
        b.update("rest_price_sechedule", contentvalues, (new StringBuilder("id=")).append(priceschedule.getId()).toString(), null);
    }

}
