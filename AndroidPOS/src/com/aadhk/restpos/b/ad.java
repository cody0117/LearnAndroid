// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Currency;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Discount;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.bean.KitchenNote;
import com.aadhk.restpos.bean.Modifier;
import com.aadhk.restpos.bean.ModifierGroup;
import com.aadhk.restpos.bean.Note;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.PaymentMethod;
import com.aadhk.restpos.bean.PriceSchedule;
import com.aadhk.restpos.bean.RolePermission;
import com.aadhk.restpos.bean.ServiceFee;
import com.aadhk.restpos.bean.Table;
import com.aadhk.restpos.bean.User;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class ad
{

    private final SQLiteDatabase a;

    public ad(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        Cursor cursor = a.query(false, "rest_version", new String[] {
            "tableName", "tableVersion"
        }, null, null, null, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                hashmap.put(cursor.getString(0), Integer.valueOf(cursor.getInt(1)));
            } while (cursor.moveToNext());
        }
        cursor.close();
        return hashmap;
    }

    public final void a(Company company, int i1)
    {
        a.beginTransaction();
        a.delete("rest_company", null, null);
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("id", Integer.valueOf(company.getId()));
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
        a.insert("rest_company", null, contentvalues);
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_company'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
    }

    public final void a(List list, int i1)
    {
        a.beginTransaction();
        a.delete("rest_table", null, null);
        ContentValues contentvalues = new ContentValues();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_table", null, contentvalues))
        {
            Table table = (Table)iterator.next();
            contentvalues.put("rowid", Long.valueOf(table.getId()));
            contentvalues.put("name", table.getName());
            contentvalues.put("sequence", Integer.valueOf(table.getSequence()));
        }

        break MISSING_BLOCK_LABEL_130;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_table'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void b(List list, int i1)
    {
        a.beginTransaction();
        a.delete("rest_category", null, null);
        ContentValues contentvalues = new ContentValues();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_category", null, contentvalues))
        {
            Category category = (Category)iterator.next();
            contentvalues.put("rowid", Long.valueOf(category.getId()));
            contentvalues.put("name", category.getName());
            contentvalues.put("sequence", Integer.valueOf(category.getSequence()));
        }

        break MISSING_BLOCK_LABEL_130;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_category'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void c(List list, int i1)
    {
        a.beginTransaction();
        a.delete("rest_item", null, null);
        ContentValues contentvalues1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_item_qty", null, contentvalues1))
        {
            Item item = (Item)iterator.next();
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("rowid", Long.valueOf(item.getId()));
            contentvalues.put("categoryid", Long.valueOf(item.getCategoryId()));
            contentvalues.put("name", item.getName());
            contentvalues.put("price", Double.valueOf(item.getPrice()));
            contentvalues.put("cost", Double.valueOf(item.getCost()));
            contentvalues.put("stopSaleZeroQty", Boolean.valueOf(item.isStopSaleZeroQty()));
            contentvalues.put("picture", item.getPicture());
            contentvalues.put("background", item.getBackground());
            contentvalues.put("fontColor", item.getFontColor());
            contentvalues.put("description", item.getDescription());
            contentvalues.put("printerId", Integer.valueOf(item.getPrinterId()));
            contentvalues.put("tax1Id", Integer.valueOf(item.getTax1Id()));
            contentvalues.put("tax2Id", Integer.valueOf(item.getTax2Id()));
            contentvalues.put("modifierGroupId", item.getModifierGroupIds());
            contentvalues.put("kitchenNoteGroupId", item.getKitchenNoteGroupIds());
            contentvalues.put("isWarn", Boolean.valueOf(item.isWarn()));
            contentvalues.put("warnQty", Integer.valueOf(item.getWarnQty()));
            contentvalues.put("sequence", Integer.valueOf(item.getSequence()));
            contentvalues.put("askPrice", Boolean.valueOf(item.isAskPrice()));
            a.insert("rest_item", null, contentvalues);
            contentvalues1 = new ContentValues();
            contentvalues1.put("itemId", Long.valueOf(item.getId()));
            contentvalues1.put("qty", Integer.valueOf(item.getQty()));
        }

        break MISSING_BLOCK_LABEL_423;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_item'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void d(List list, int i1)
    {
        a.beginTransaction();
        a.delete("rest_modifier_group", null, null);
        ContentValues contentvalues = new ContentValues();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_modifier_group", null, contentvalues))
        {
            ModifierGroup modifiergroup = (ModifierGroup)iterator.next();
            contentvalues.put("rowid", Long.valueOf(modifiergroup.getId()));
            contentvalues.put("name", modifiergroup.getName());
        }

        break MISSING_BLOCK_LABEL_114;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_modifier_group'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void e(List list, int i1)
    {
        a.beginTransaction();
        a.delete("rest_modifier", null, null);
        ContentValues contentvalues = new ContentValues();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_modifier", null, contentvalues))
        {
            Modifier modifier = (Modifier)iterator.next();
            contentvalues.put("rowid", Long.valueOf(modifier.getId()));
            contentvalues.put("groupId", Long.valueOf(modifier.getGroupId()));
            contentvalues.put("name", modifier.getName());
            contentvalues.put("price", Double.valueOf(modifier.getPrice()));
            contentvalues.put("cost", Double.valueOf(modifier.getCost()));
            contentvalues.put("type", Integer.valueOf(modifier.getType()));
            contentvalues.put("qty", Integer.valueOf(modifier.getQty()));
            contentvalues.put("required", Boolean.valueOf(modifier.isRequired()));
        }

        break MISSING_BLOCK_LABEL_210;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_modifier'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void f(List list, int i1)
    {
        a.beginTransaction();
        a.delete("rest_user", null, null);
        ContentValues contentvalues = new ContentValues();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_user", null, contentvalues))
        {
            User user = (User)iterator.next();
            contentvalues.put("rowid", Integer.valueOf(user.getId()));
            contentvalues.put("account", user.getAccount());
            contentvalues.put("password", user.getPassword());
            contentvalues.put("role", Integer.valueOf(user.getRole()));
        }

        break MISSING_BLOCK_LABEL_144;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_user'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void g(List list, int i1)
    {
        a.beginTransaction();
        a.delete("rest_customer", null, null);
        ContentValues contentvalues = new ContentValues();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_customer", null, contentvalues))
        {
            Customer customer = (Customer)iterator.next();
            contentvalues.put("id", Integer.valueOf(customer.getId()));
            contentvalues.put("name", customer.getName());
            contentvalues.put("address1", customer.getAddress1());
            contentvalues.put("address2", customer.getAddress2());
            contentvalues.put("address3", customer.getAddress3());
            contentvalues.put("tel", customer.getTel());
            contentvalues.put("email", customer.getEmail());
        }

        break MISSING_BLOCK_LABEL_174;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_customer'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void h(List list, int i1)
    {
        a.beginTransaction();
        a.delete("rest_currency", null, null);
        ContentValues contentvalues = new ContentValues();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_currency", null, contentvalues))
        {
            Currency currency = (Currency)iterator.next();
            contentvalues.put("rowid", Integer.valueOf(currency.getId()));
            contentvalues.put("currencyCode", currency.getCode());
            contentvalues.put("currencySymbol", currency.getSign());
            contentvalues.put("currencyDesc", currency.getDesc());
            contentvalues.put("isDefault", Boolean.valueOf(currency.isUse()));
        }

        break MISSING_BLOCK_LABEL_157;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_currency'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void i(List list, int i1)
    {
        a.beginTransaction();
        a.delete("rest_role_permission", null, null);
        ContentValues contentvalues = new ContentValues();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_role_permission", null, contentvalues))
        {
            RolePermission rolepermission = (RolePermission)iterator.next();
            contentvalues.put("rowid", Integer.valueOf(rolepermission.getId()));
            contentvalues.put("role", Integer.valueOf(rolepermission.getRole()));
            contentvalues.put("function", Integer.valueOf(rolepermission.getFunction()));
            contentvalues.put("isShow", Boolean.valueOf(rolepermission.isShow()));
            contentvalues.put("managerPermission", Boolean.valueOf(rolepermission.isManagerPermission()));
        }

        break MISSING_BLOCK_LABEL_166;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_role_permission'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void j(List list, int i1)
    {
        a.beginTransaction();
        a.delete("rest_printer", null, null);
        ContentValues contentvalues = new ContentValues();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_printer", null, contentvalues))
        {
            POSPrinterSetting posprintersetting = (POSPrinterSetting)iterator.next();
            contentvalues.put("id", Integer.valueOf(posprintersetting.getId()));
            contentvalues.put("ip", posprintersetting.getIp());
            contentvalues.put("port", Integer.valueOf(posprintersetting.getPort()));
            contentvalues.put("connType", Integer.valueOf(posprintersetting.getConnType()));
            contentvalues.put("printType", Integer.valueOf(posprintersetting.getPrintType()));
            contentvalues.put("paperWidth", Integer.valueOf(posprintersetting.getPaperWidth()));
            contentvalues.put("commInitial", posprintersetting.getCommInitial());
            contentvalues.put("commTitleSize", posprintersetting.getCommTitleSize());
            contentvalues.put("commCut", posprintersetting.getCommCut());
            contentvalues.put("commDrawer", posprintersetting.getCommDrawer());
            contentvalues.put("commBeep", posprintersetting.getCommBeep());
            contentvalues.put("printNum", Integer.valueOf(posprintersetting.getPrintNum()));
            contentvalues.put("enable", Boolean.valueOf(posprintersetting.isEnable()));
            contentvalues.put("enableTipGuide", Boolean.valueOf(posprintersetting.isEnableTipGuide()));
            contentvalues.put("enableBeep", Boolean.valueOf(posprintersetting.isEnableBeep()));
            contentvalues.put("printSeparate", Boolean.valueOf(posprintersetting.isPrintSeparate()));
            contentvalues.put("logoName", posprintersetting.getLogoName());
            contentvalues.put("header", posprintersetting.getHeader());
            contentvalues.put("footer", posprintersetting.getFooter());
            contentvalues.put("fontSize", Integer.valueOf(posprintersetting.getFontSize()));
            contentvalues.put("model", posprintersetting.getModel());
            contentvalues.put("printerName", posprintersetting.getPrinterName());
            contentvalues.put("hostingIp", posprintersetting.getHostingIp());
            contentvalues.put("serviceName", posprintersetting.getServiceName());
            contentvalues.put("marginTop", Integer.valueOf(posprintersetting.getMarginTop()));
            contentvalues.put("marginBottom", Integer.valueOf(posprintersetting.getMarginBottom()));
            contentvalues.put("marginLeft", Integer.valueOf(posprintersetting.getMarginLeft()));
            contentvalues.put("marginRight", Integer.valueOf(posprintersetting.getMarginRight()));
        }

        break MISSING_BLOCK_LABEL_493;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_printer'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void k(List list, int i1)
    {
        a.beginTransaction();
        a.delete("rest_kitchen_note_group", null, null);
        ContentValues contentvalues = new ContentValues();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_kitchen_note_group", null, contentvalues))
        {
            KitchenNote kitchennote = (KitchenNote)iterator.next();
            contentvalues.put("rowid", Integer.valueOf(kitchennote.getId()));
            contentvalues.put("name", kitchennote.getName());
        }

        break MISSING_BLOCK_LABEL_114;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_kitchen_note_group'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void l(List list, int i1)
    {
        a.beginTransaction();
        a.delete("rest_kitchen_note", null, null);
        ContentValues contentvalues = new ContentValues();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_kitchen_note", null, contentvalues))
        {
            KitchenNote kitchennote = (KitchenNote)iterator.next();
            contentvalues.put("rowid", Integer.valueOf(kitchennote.getId()));
            contentvalues.put("groupId", Integer.valueOf(kitchennote.getId()));
            contentvalues.put("name", kitchennote.getName());
        }

        break MISSING_BLOCK_LABEL_130;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_kitchen_note'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void m(List list, int i1)
    {
        ContentValues contentvalues;
        Iterator iterator;
        a.beginTransaction();
        a.delete("rest_price_sechedule", null, null);
        contentvalues = new ContentValues();
        iterator = list.iterator();
_L6:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        PriceSchedule priceschedule;
        priceschedule = (PriceSchedule)iterator.next();
        contentvalues.put("id", Long.valueOf(priceschedule.getId()));
        contentvalues.put("name", priceschedule.getName());
        contentvalues.put("startDate", priceschedule.getStartDate());
        contentvalues.put("endDate", priceschedule.getEndDate());
        contentvalues.put("startTime", priceschedule.getStartTime());
        contentvalues.put("endTime", priceschedule.getEndTime());
        contentvalues.put("enable", Boolean.valueOf(priceschedule.isEnable()));
        contentvalues.put("isDisAmt", Boolean.valueOf(priceschedule.isDiscountAmt()));
        contentvalues.put("amtRate", Double.valueOf(priceschedule.getAmtRate()));
        contentvalues.put("sun", Boolean.valueOf(priceschedule.isSun()));
        contentvalues.put("mon", Boolean.valueOf(priceschedule.isMon()));
        contentvalues.put("tue", Boolean.valueOf(priceschedule.isTue()));
        contentvalues.put("wed", Boolean.valueOf(priceschedule.isWed()));
        contentvalues.put("thu", Boolean.valueOf(priceschedule.isThu()));
        contentvalues.put("fri", Boolean.valueOf(priceschedule.isFri()));
        contentvalues.put("sat", Boolean.valueOf(priceschedule.isSat()));
        String s = "";
        List list1 = priceschedule.getItemIds();
        if (list1 == null) goto _L4; else goto _L3
_L3:
        int j1 = 0;
_L7:
        if (j1 >= list1.size()) goto _L4; else goto _L5
_L5:
        long l1 = ((Long)list1.get(j1)).longValue();
        if (j1 == 0)
        {
            break MISSING_BLOCK_LABEL_383;
        }
        String s1;
        s1 = (new StringBuilder()).append(s).append(",").append(l1).toString();
        break MISSING_BLOCK_LABEL_484;
        s1 = (new StringBuilder()).append(l1).toString();
        break MISSING_BLOCK_LABEL_484;
_L4:
        contentvalues.put("itemIds", s);
        a.insert("rest_price_sechedule", null, contentvalues);
          goto _L6
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
_L2:
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_price_sechedule'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
        j1++;
        s = s1;
          goto _L7
    }

    public final void n(List list, int i1)
    {
        a.beginTransaction();
        a.delete("rest_discount", null, null);
        ContentValues contentvalues = new ContentValues();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_discount", null, contentvalues))
        {
            Discount discount = (Discount)iterator.next();
            contentvalues.put("rowid", Integer.valueOf(discount.getId()));
            contentvalues.put("reason", discount.getReason());
            contentvalues.put("isPercentage", Boolean.valueOf(discount.isPercentage()));
            contentvalues.put("amount", Double.valueOf(discount.getAmount()));
        }

        break MISSING_BLOCK_LABEL_147;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_discount'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void o(List list, int i1)
    {
        a.beginTransaction();
        a.delete("rest_note", null, null);
        ContentValues contentvalues = new ContentValues();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_note", null, contentvalues))
        {
            Note note = (Note)iterator.next();
            contentvalues.put("rowid", Integer.valueOf(note.getId()));
            contentvalues.put("name", note.getName());
            contentvalues.put("type", Integer.valueOf(note.getType()));
        }

        break MISSING_BLOCK_LABEL_130;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_note'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void p(List list, int i1)
    {
        a.beginTransaction();
        a.delete("rest_payment_method", null, null);
        ContentValues contentvalues = new ContentValues();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_payment_method", null, contentvalues))
        {
            PaymentMethod paymentmethod = (PaymentMethod)iterator.next();
            contentvalues.put("rowid", Integer.valueOf(paymentmethod.getId()));
            contentvalues.put("name", paymentmethod.getName());
            contentvalues.put("type", Integer.valueOf(paymentmethod.getType()));
            contentvalues.put("rounding", paymentmethod.getRounding());
            contentvalues.put("openDrawer", Boolean.valueOf(paymentmethod.isOpenDrawer()));
            contentvalues.put("beDefault", Boolean.valueOf(paymentmethod.isBeDefault()));
        }

        break MISSING_BLOCK_LABEL_175;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_payment_method'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void q(List list, int i1)
    {
        a.beginTransaction();
        a.delete("rest_service_fee", null, null);
        new ContentValues();
        ContentValues contentvalues;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_service_fee", null, contentvalues))
        {
            ServiceFee servicefee = (ServiceFee)iterator.next();
            contentvalues = new ContentValues();
            contentvalues.put("rowid", Integer.valueOf(servicefee.getId()));
            contentvalues.put("name", servicefee.getName());
            contentvalues.put("isPercentage", Boolean.valueOf(servicefee.isPercentage()));
            contentvalues.put("amount", Double.valueOf(servicefee.getAmount()));
        }

        break MISSING_BLOCK_LABEL_154;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.execSQL((new StringBuilder("update  rest_version set tableVersion =")).append(i1).append(" where tableName='rest_service_fee'").toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }
}
