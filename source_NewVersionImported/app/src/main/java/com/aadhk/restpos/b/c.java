// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.bean.Company;

public final class c
{

    private static final String a[] = {
        "rowid as _id", "name", "logoName", "address1", "address2", "tel", "email", "tax1", "tax1Name", "tax2", 
        "tax2Name", "includeTax", "taxNumber", "serviceFee", "includeService", "currency", "decimalPlace", "tip", "timeIn", "timeOut"
    };
    private final SQLiteDatabase b;

    public c(SQLiteDatabase sqlitedatabase)
    {
        b = sqlitedatabase;
    }

    public final Company a()
    {
        boolean flag = true;
        Cursor cursor = b.query(false, "rest_company", a, null, null, null, null, null, null);
        boolean flag1 = cursor.moveToFirst();
        Company company = null;
        if (flag1)
        {
            company = new Company();
            company.setId(cursor.getInt(0));
            company.setName(cursor.getString(flag));
            company.setLogoName(cursor.getString(2));
            company.setAddress1(cursor.getString(3));
            company.setAddress2(cursor.getString(4));
            company.setTel(cursor.getString(5));
            company.setEmail(cursor.getString(6));
            company.setTax1(cursor.getDouble(7));
            company.setTax1Name(cursor.getString(8));
            company.setTax2(cursor.getDouble(9));
            company.setTax2Name(cursor.getString(10));
            boolean flag2;
            if (cursor.getInt(11) != 0)
            {
                flag2 = flag;
            } else
            {
                flag2 = false;
            }
            company.setIncludeTax(flag2);
            company.setTaxNumber(cursor.getString(12));
            company.setServiceFee(cursor.getInt(13));
            if (cursor.getInt(14) == 0)
            {
                flag = false;
            }
            company.setIncludeService(flag);
            company.setCurrency(cursor.getString(15));
            company.setCurrencySign(h.b(cursor.getString(15)));
            company.setDecimalPlace(cursor.getInt(16));
            company.setTip(cursor.getInt(17));
            company.setTimeIn(cursor.getString(18));
            company.setTimeOut(cursor.getString(19));
        }
        cursor.close();
        return company;
    }

    public final void a(int i, int j, boolean flag)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("serviceFee", Integer.valueOf(j));
        contentvalues.put("includeService", Boolean.valueOf(flag));
        b.update("rest_company", contentvalues, (new StringBuilder("rowid=")).append(i).toString(), null);
    }

    public final void a(Company company)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", company.getName());
        contentvalues.put("logoName", company.getLogoName());
        contentvalues.put("address1", company.getAddress1());
        contentvalues.put("address2", company.getAddress2());
        contentvalues.put("tel", company.getTel());
        contentvalues.put("email", company.getEmail());
        contentvalues.put("tax1", Double.valueOf(company.getTax1()));
        contentvalues.put("tax2", Double.valueOf(company.getTax2()));
        contentvalues.put("tax1Name", company.getTax1Name());
        contentvalues.put("tax2Name", company.getTax2Name());
        contentvalues.put("includeTax", Boolean.valueOf(company.isIncludeTax()));
        contentvalues.put("taxNumber", company.getTaxNumber());
        contentvalues.put("serviceFee", Integer.valueOf(company.getServiceFee()));
        contentvalues.put("includeService", Boolean.valueOf(company.isIncludeService()));
        contentvalues.put("currency", company.getCurrency());
        contentvalues.put("decimalPlace", Integer.valueOf(company.getDecimalPlace()));
        contentvalues.put("tip", Integer.valueOf(company.getTip()));
        contentvalues.put("timeIn", company.getTimeIn());
        contentvalues.put("timeOut", company.getTimeOut());
        b.insert("rest_company", null, contentvalues);
    }

    public final void b(Company company)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", company.getName());
        contentvalues.put("logoName", company.getLogoName());
        contentvalues.put("address1", company.getAddress1());
        contentvalues.put("address2", company.getAddress2());
        contentvalues.put("tel", company.getTel());
        contentvalues.put("email", company.getEmail());
        contentvalues.put("tax1", Double.valueOf(company.getTax1()));
        contentvalues.put("tax2", Double.valueOf(company.getTax2()));
        contentvalues.put("tax1Name", company.getTax1Name());
        contentvalues.put("tax2Name", company.getTax2Name());
        contentvalues.put("includeTax", Boolean.valueOf(company.isIncludeTax()));
        contentvalues.put("taxNumber", company.getTaxNumber());
        contentvalues.put("serviceFee", Integer.valueOf(company.getServiceFee()));
        contentvalues.put("includeService", Boolean.valueOf(company.isIncludeService()));
        contentvalues.put("currency", company.getCurrency());
        contentvalues.put("decimalPlace", Integer.valueOf(company.getDecimalPlace()));
        contentvalues.put("tip", Integer.valueOf(company.getTip()));
        contentvalues.put("timeIn", company.getTimeIn());
        contentvalues.put("timeOut", company.getTimeOut());
        b.update("rest_company", contentvalues, (new StringBuilder("rowid=")).append(company.getId()).toString(), null);
    }

    public final void c(Company company)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("tax1", Double.valueOf(company.getTax1()));
        contentvalues.put("tax2", Double.valueOf(company.getTax2()));
        contentvalues.put("tax1Name", company.getTax1Name());
        contentvalues.put("tax2Name", company.getTax2Name());
        contentvalues.put("includeTax", Boolean.valueOf(company.isIncludeTax()));
        contentvalues.put("taxNumber", company.getTaxNumber());
        b.update("rest_company", contentvalues, (new StringBuilder("rowid=")).append(company.getId()).toString(), null);
    }

}
