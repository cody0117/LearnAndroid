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
        "tax2Name", "tax3", "tax3Name", "itemPriceIncludeTax", "serviceAfterTax", "deliveryAfterTax", "discountAfterTax", "taxNumber", "serviceFeeIdDineIn", "includeServiceFeeDineIn", 
        "serviceFeeIdTakeOut", "includeServiceFeeTakeOut", "serviceFeeIdDelivery", "includeServiceFeeDelivery", "currency", "decimalPlace", "tip", "timeIn", "timeOut"
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
            company.setTax3(cursor.getDouble(11));
            company.setTax3Name(cursor.getString(12));
            boolean flag2;
            boolean flag3;
            boolean flag4;
            boolean flag5;
            boolean flag6;
            boolean flag7;
            if (cursor.getInt(13) != 0)
            {
                flag2 = flag;
            } else
            {
                flag2 = false;
            }
            company.setItemPriceIncludeTax(flag2);
            if (cursor.getInt(14) != 0)
            {
                flag3 = flag;
            } else
            {
                flag3 = false;
            }
            company.setServiceAfterTax(flag3);
            if (cursor.getInt(15) != 0)
            {
                flag4 = flag;
            } else
            {
                flag4 = false;
            }
            company.setDeliveryAfterTax(flag4);
            if (cursor.getInt(16) != 0)
            {
                flag5 = flag;
            } else
            {
                flag5 = false;
            }
            company.setDiscountAfterTax(flag5);
            company.setTaxNumber(cursor.getString(17));
            company.setServiceFeeIdDineIn(cursor.getInt(18));
            if (cursor.getInt(19) != 0)
            {
                flag6 = flag;
            } else
            {
                flag6 = false;
            }
            company.setIncludeServiceFeeDineIn(flag6);
            company.setServiceFeeIdTakeOut(cursor.getInt(20));
            if (cursor.getInt(21) != 0)
            {
                flag7 = flag;
            } else
            {
                flag7 = false;
            }
            company.setIncludeServiceFeeTakeOut(flag7);
            company.setServiceFeeIdDelivery(cursor.getInt(22));
            if (cursor.getInt(23) == 0)
            {
                flag = false;
            }
            company.setIncludeServiceFeeDelivery(flag);
            company.setCurrency(cursor.getString(24));
            company.setCurrencySign(h.b(cursor.getString(24)));
            company.setDecimalPlace(cursor.getInt(25));
            company.setTimeIn(cursor.getString(27));
            company.setTimeOut(cursor.getString(28));
        }
        cursor.close();
        return company;
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
        contentvalues.put("tax3", Double.valueOf(company.getTax3()));
        contentvalues.put("tax1Name", company.getTax1Name());
        contentvalues.put("tax2Name", company.getTax2Name());
        contentvalues.put("tax3Name", company.getTax3Name());
        contentvalues.put("itemPriceIncludeTax", Boolean.valueOf(company.isItemPriceIncludeTax()));
        contentvalues.put("serviceAfterTax", Boolean.valueOf(company.isServiceAfterTax()));
        contentvalues.put("deliveryAfterTax", Boolean.valueOf(company.isDeliveryAfterTax()));
        contentvalues.put("discountAfterTax", Boolean.valueOf(company.isDiscountAfterTax()));
        contentvalues.put("taxNumber", company.getTaxNumber());
        contentvalues.put("serviceFeeIdDineIn", Integer.valueOf(company.getServiceFeeIdDineIn()));
        contentvalues.put("includeServiceFeeDineIn", Boolean.valueOf(company.isIncludeServiceFeeDineIn()));
        contentvalues.put("serviceFeeIdTakeOut", Integer.valueOf(company.getServiceFeeIdTakeOut()));
        contentvalues.put("includeServiceFeeTakeOut", Boolean.valueOf(company.isIncludeServiceFeeTakeOut()));
        contentvalues.put("serviceFeeIdDelivery", Integer.valueOf(company.getServiceFeeIdDelivery()));
        contentvalues.put("includeServiceFeeDelivery", Boolean.valueOf(company.isIncludeServiceFeeDelivery()));
        contentvalues.put("currency", company.getCurrency());
        contentvalues.put("decimalPlace", Integer.valueOf(company.getDecimalPlace()));
        contentvalues.put("timeIn", company.getTimeIn());
        contentvalues.put("timeOut", company.getTimeOut());
        b.insert("rest_company", null, contentvalues);
    }

    public final void a(Company company, int i)
    {
        ContentValues contentvalues = new ContentValues();
        if (i != 0) goto _L2; else goto _L1
_L1:
        contentvalues.put("serviceFeeIdDineIn", Integer.valueOf(company.getServiceFeeIdDineIn()));
        contentvalues.put("includeServiceFeeDineIn", Boolean.valueOf(company.isIncludeServiceFeeDineIn()));
_L4:
        b.update("rest_company", contentvalues, (new StringBuilder("rowid=")).append(company.getId()).toString(), null);
        return;
_L2:
        if (i == 1)
        {
            contentvalues.put("serviceFeeIdTakeOut", Integer.valueOf(company.getServiceFeeIdTakeOut()));
            contentvalues.put("includeServiceFeeTakeOut", Boolean.valueOf(company.isIncludeServiceFeeTakeOut()));
        } else
        if (i == 2)
        {
            contentvalues.put("serviceFeeIdDelivery", Integer.valueOf(company.getServiceFeeIdDelivery()));
            contentvalues.put("includeServiceFeeDelivery", Boolean.valueOf(company.isIncludeServiceFeeDelivery()));
        }
        if (true) goto _L4; else goto _L3
_L3:
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
        contentvalues.put("tax3", Double.valueOf(company.getTax3()));
        contentvalues.put("tax1Name", company.getTax1Name());
        contentvalues.put("tax2Name", company.getTax2Name());
        contentvalues.put("tax3Name", company.getTax3Name());
        contentvalues.put("itemPriceIncludeTax", Boolean.valueOf(company.isItemPriceIncludeTax()));
        contentvalues.put("serviceAfterTax", Boolean.valueOf(company.isServiceAfterTax()));
        contentvalues.put("deliveryAfterTax", Boolean.valueOf(company.isDeliveryAfterTax()));
        contentvalues.put("discountAfterTax", Boolean.valueOf(company.isDiscountAfterTax()));
        contentvalues.put("taxNumber", company.getTaxNumber());
        contentvalues.put("serviceFeeIdDineIn", Integer.valueOf(company.getServiceFeeIdDineIn()));
        contentvalues.put("includeServiceFeeDineIn", Boolean.valueOf(company.isIncludeServiceFeeDineIn()));
        contentvalues.put("serviceFeeIdTakeOut", Integer.valueOf(company.getServiceFeeIdTakeOut()));
        contentvalues.put("includeServiceFeeTakeOut", Boolean.valueOf(company.isIncludeServiceFeeTakeOut()));
        contentvalues.put("serviceFeeIdDelivery", Integer.valueOf(company.getServiceFeeIdDelivery()));
        contentvalues.put("includeServiceFeeDelivery", Boolean.valueOf(company.isIncludeServiceFeeDelivery()));
        contentvalues.put("currency", company.getCurrency());
        contentvalues.put("decimalPlace", Integer.valueOf(company.getDecimalPlace()));
        contentvalues.put("timeIn", company.getTimeIn());
        contentvalues.put("timeOut", company.getTimeOut());
        b.update("rest_company", contentvalues, (new StringBuilder("rowid=")).append(company.getId()).toString(), null);
    }

    public final void c(Company company)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("tax1", Double.valueOf(company.getTax1()));
        contentvalues.put("tax2", Double.valueOf(company.getTax2()));
        contentvalues.put("tax3", Double.valueOf(company.getTax3()));
        contentvalues.put("tax1Name", company.getTax1Name());
        contentvalues.put("tax2Name", company.getTax2Name());
        contentvalues.put("tax3Name", company.getTax3Name());
        contentvalues.put("itemPriceIncludeTax", Boolean.valueOf(company.isItemPriceIncludeTax()));
        contentvalues.put("serviceAfterTax", Boolean.valueOf(company.isServiceAfterTax()));
        contentvalues.put("deliveryAfterTax", Boolean.valueOf(company.isDeliveryAfterTax()));
        contentvalues.put("discountAfterTax", Boolean.valueOf(company.isDiscountAfterTax()));
        contentvalues.put("taxNumber", company.getTaxNumber());
        b.update("rest_company", contentvalues, (new StringBuilder("rowid=")).append(company.getId()).toString(), null);
    }

}
