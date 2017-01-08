// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.util.h;
import java.util.Iterator;
import java.util.List;

final class g extends SQLiteOpenHelper
{

    private Context a;

    g(Context context)
    {
        super(context, "restpos.db", null, 51);
        a = context;
    }

    private void a(SQLiteDatabase sqlitedatabase)
    {
        String as[] = a.getResources().getStringArray(0x7f0e0000);
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String as1[] = as[j].split(",");
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_currency(currencyCode, currencySymbol, currencyDesc, isDefault) values ('")).append(as1[0]).append("','").append(as1[1]).append("','").append(as1[2]).append("',").append(as1[3]).append(")").toString());
        }

    }

    private static boolean a(SQLiteDatabase sqlitedatabase, String s)
    {
        Cursor cursor = sqlitedatabase.rawQuery((new StringBuilder("SELECT name FROM sqlite_master WHERE type='table' AND name='")).append(s).append("'").toString(), null);
        if (cursor != null && cursor.moveToFirst())
        {
            cursor.close();
            return true;
        } else
        {
            cursor.close();
            return false;
        }
    }

    private static boolean a(SQLiteDatabase sqlitedatabase, String s, String s1)
    {
        Cursor cursor = sqlitedatabase.rawQuery((new StringBuilder("select * from sqlite_master where name = '")).append(s).append("' and sql like '%").append(s1).append("%' ").toString(), null);
        if (cursor != null && cursor.moveToFirst())
        {
            cursor.close();
            return true;
        } else
        {
            cursor.close();
            return false;
        }
    }

    private static void b(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.beginTransaction();
        if (!a(sqlitedatabase, "rest_printer", "btName"))
        {
            sqlitedatabase.execSQL("ALTER TABLE rest_printer ADD COLUMN btName text");
        }
        if (!a(sqlitedatabase, "rest_item", "askPrice"))
        {
            sqlitedatabase.execSQL("ALTER TABLE rest_item ADD COLUMN askPrice integer");
        }
        Cursor cursor = sqlitedatabase.rawQuery("select rowid from rest_item", null);
        if (cursor.moveToFirst())
        {
            do
            {
                String as[] = new String[1];
                as[0] = (new StringBuilder()).append(cursor.getLong(0)).toString();
                Cursor cursor1 = sqlitedatabase.rawQuery("select itemId from rest_item_qty where itemId=?", as);
                if (cursor1.getCount() == 0)
                {
                    sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_item_qty(itemId, qty) values (")).append(cursor.getLong(0)).append(",0)").toString());
                }
                cursor1.close();
            } while (cursor.moveToNext());
        }
        cursor.close();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
    }

    private void c(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.beginTransaction();
        if (!a(sqlitedatabase, "rest_payment_method", "beDefault"))
        {
            sqlitedatabase.execSQL("ALTER TABLE rest_payment_method ADD COLUMN beDefault integer default 0");
        }
        sqlitedatabase.execSQL("update  rest_payment_method set beDefault=1 where type =0 and rowid = (select rowid from rest_payment_method where type =0 limit 1)");
        sqlitedatabase.execSQL("CREATE TABLE rest_item_qty (itemId integer primary key, qty integer)");
        sqlitedatabase.execSQL("INSERT INTO rest_item_qty(itemId, qty) select rowid, qty from rest_item");
        sqlitedatabase.execSQL("ALTER TABLE rest_item RENAME TO rest_item_temp");
        sqlitedatabase.execSQL("CREATE TABLE rest_item ( categoryid integer, name text, price real, cost real default 0, picture text, background text default '#ffffffff', fontColor text default '#ff000000', description text, printerId integer, sequence integer default 0, tax1Id integer, tax2Id integer,tax3Id integer, modifierGroupId text, kitchenNoteGroupId text, isWarn integer,warnQty integer, askPrice integer, stopSaleZeroQty integer)");
        sqlitedatabase.execSQL("INSERT INTO rest_item(rowid, categoryid, name, price, picture, background, fontColor, description, printerId, sequence, tax1Id, tax2Id, modifierGroupId, kitchenNoteGroupId, isWarn, warnQty) select rowid, categoryid, name, price, picture, background, fontColor, description, printerId, sequence, tax1Id, tax2Id, modifierGroupId, kitchenNoteGroupId, isWarn, warnQty from rest_item_temp");
        sqlitedatabase.execSQL("drop table rest_item_temp");
        if (a(sqlitedatabase, "currency"))
        {
            sqlitedatabase.execSQL("CREATE TABLE rest_currency ( currencyCode text, currencySymbol text, currencyDesc text, isDefault integer)");
            sqlitedatabase.execSQL("INSERT INTO rest_currency(rowid, currencyCode, currencySymbol, currencyDesc,isDefault) select rowid, currencyCode, currencySymbol, currencyDesc,isDefault from currency");
            sqlitedatabase.execSQL("drop table currency");
        } else
        {
            sqlitedatabase.execSQL("CREATE TABLE rest_currency ( currencyCode text, currencySymbol text, currencyDesc text, isDefault integer)");
            a(sqlitedatabase);
        }
        if (a(sqlitedatabase, "rest_splitBill"))
        {
            sqlitedatabase.execSQL("CREATE TABLE rest_split_bill ( orderid integer, amount real, isPaid integer)");
            sqlitedatabase.execSQL("INSERT INTO rest_split_bill(rowid, orderid, amount, isPaid) select rowid, orderid, amount, isPaid from rest_splitBill");
            sqlitedatabase.execSQL("drop table rest_splitBill");
        } else
        {
            sqlitedatabase.execSQL("CREATE TABLE rest_split_bill ( orderid integer, amount real, isPaid integer)");
        }
        if (a(sqlitedatabase, "rest_modifierGroup"))
        {
            sqlitedatabase.execSQL("CREATE TABLE rest_modifier_group ( name real, miniQty integer)");
            sqlitedatabase.execSQL("INSERT INTO rest_modifier_group(rowid, name) select rowid, name from rest_modifierGroup");
            sqlitedatabase.execSQL("drop table rest_modifierGroup");
        } else
        {
            sqlitedatabase.execSQL("CREATE TABLE rest_modifier_group ( name real, miniQty integer)");
        }
        if (a(sqlitedatabase, "rest_orderItem"))
        {
            sqlitedatabase.execSQL("CREATE TABLE rest_order_item ( orderid integer, billId integer default 0, categoryName text, itemid integer, itemName text, price real, cost real default 0, qty integer, remark text, ordertime text, endtime text, cancelReason text, status integer, discountAmt real, discountName text)");
            sqlitedatabase.execSQL("INSERT INTO rest_order_item(rowid, orderid, billId, categoryName, itemid,itemName, price, qty, remark, ordertime, endtime, cancelReason, status, discountAmt, discountName) select rowid, orderid, billId, categoryName, itemid,itemName, price, num, remark, ordertime, endtime, cancelReason, status, disAmt, disName from rest_orderItem");
            sqlitedatabase.execSQL("drop table rest_orderItem");
        } else
        {
            sqlitedatabase.execSQL("CREATE TABLE rest_order_item ( orderid integer, billId integer default 0, categoryName text, itemid integer, itemName text, price real, cost real default 0, qty integer, remark text, ordertime text, endtime text, cancelReason text, status integer, discountAmt real, discountName text)");
        }
        sqlitedatabase.execSQL("ALTER TABLE rest_order RENAME TO rest_order_temp");
        sqlitedatabase.execSQL("CREATE TABLE rest_order ( ordertime text, endtime text, customerId integer, customerName text, orderNum text, tableid integer, tablename text, personnum interger, status numeric, remark text, waiterName text, cashierName text, cancelReason text, cancelPerson text, subTotal real, discountAmt real, serviceAmt real, gratuity real, tax1Amt real, tax1Name text, tax2Amt real, tax2Name text, tax3Amt real, tax3Name text, amount real, splitType integer default 0, receiptNote text, discountReason text,orderCount integer default 0)");
        sqlitedatabase.execSQL("INSERT INTO rest_order(rowid, ordertime, endtime, customerId, customerName, orderNum, tableid, tablename, personnum, status, remark, waiterName, cashierName, cancelReason, cancelPerson, subTotal, discountAmt, serviceAmt, tax1Amt, tax1Name, tax2Amt, tax2Name, amount, splitType, receiptNote, discountReason) select rowid, ordertime, endtime, customerId, customerName, orderNum, tableid, tablename, personnum, status, remark, waiterName, cashierName, cancelReason, cancelPerson, subTotal, discountAmt, serviceAmt, tax1Amt, tax1Name, tax2Amt, tax2Name, amount, splitType, receiptNote, discountReason from rest_order_temp");
        sqlitedatabase.execSQL("drop table rest_order_temp");
        sqlitedatabase.execSQL("ALTER TABLE rest_customer RENAME TO rest_customer_temp");
        sqlitedatabase.execSQL("CREATE TABLE rest_customer ( id integer primary key, name text, address1 text, address2 text,address3 text, tel text, email text, expenseAmount real)");
        sqlitedatabase.execSQL("INSERT INTO rest_customer(id, name, address1, address2,address3, tel, email, expenseAmount) select id, name, address1, address2,address3, tel, email, expenseAmount from rest_customer_temp");
        sqlitedatabase.execSQL("drop table rest_customer_temp");
        if (a(sqlitedatabase, "rest_order_discount"))
        {
            sqlitedatabase.execSQL("CREATE TABLE rest_discount (reason text, isPercentage integer, amount real)");
            sqlitedatabase.execSQL("INSERT INTO rest_discount(rowid, reason, isPercentage, amount) select rowid, reason, isper, amount from rest_order_discount");
            sqlitedatabase.execSQL("drop table rest_order_discount");
        } else
        {
            sqlitedatabase.execSQL("CREATE TABLE rest_discount (reason text, isPercentage integer, amount real)");
        }
        if (a(sqlitedatabase, "rest_order_note"))
        {
            sqlitedatabase.execSQL("CREATE TABLE rest_note (name text, type integer)");
            sqlitedatabase.execSQL("INSERT INTO rest_note(rowid, name, type) select rowid, name, type from rest_order_note");
            sqlitedatabase.execSQL("drop table rest_order_note");
        } else
        {
            sqlitedatabase.execSQL("CREATE TABLE rest_note (name text, type integer)");
        }
        sqlitedatabase.execSQL("CREATE TABLE rest_order_modifier ( orderid integer, itemid integer, orderItemId integer, modifierName text, price real, cost real, qty integer, type integer)");
        sqlitedatabase.execSQL("INSERT INTO rest_order_modifier(rowid, orderid, itemid, orderItemId, modifierName, price,qty, type) select rowid, orderid, itemid, orderItemId, supplementName, price,qty, type from rest_orderSupplement");
        sqlitedatabase.execSQL("drop table rest_orderSupplement");
        sqlitedatabase.execSQL("CREATE TABLE rest_version (tableName text primary key, tableVersion integer default 0)");
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
    }

    private static void d(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.beginTransaction();
        sqlitedatabase.execSQL("DELETE FROM rest_version");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_company',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_table',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_category',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_item',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_modifier_group',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_modifier',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_price_sechedule',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_customer',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_user',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_printer',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_currency',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_role_permission',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_discount',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_note',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_payment_method',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_kitchen_note_group',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_kitchen_note',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_table_group',0)");
        sqlitedatabase.execSQL("INSERT INTO rest_version(tableName,tableVersion) values('rest_service_fee',0)");
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
    }

    private void e(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.beginTransaction();
        sqlitedatabase.execSQL("ALTER TABLE rest_item ADD COLUMN qty integer");
        sqlitedatabase.execSQL("ALTER TABLE rest_item ADD COLUMN warnQty integer");
        sqlitedatabase.execSQL("ALTER TABLE rest_item ADD COLUMN isWarn integer");
        if (!a(sqlitedatabase, "rest_printer", "autoOpenDrawer"))
        {
            sqlitedatabase.execSQL("ALTER TABLE rest_printer ADD COLUMN autoOpenDrawer integer");
        }
        if (!a(sqlitedatabase, "rest_printer", "showCancelItem"))
        {
            sqlitedatabase.execSQL("ALTER TABLE rest_printer ADD COLUMN showCancelItem integer");
        }
        sqlitedatabase.execSQL("CREATE TABLE rest_role_permission ( role integer, function integer, isShow integer, managerPermission integer)");
        String as[] = a.getResources().getStringArray(0x7f0e0016);
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String as1[] = as[j].split(",");
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (")).append(as1[0]).append(",").append(as1[1]).append(",").append(as1[2]).append(",").append(as1[3]).append(")").toString());
        }

        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
    }

    private void f(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.beginTransaction();
        User user;
        for (Iterator iterator = h.a(a).iterator(); iterator.hasNext(); sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_user(account, password, role) values ('")).append(user.getAccount()).append("', '").append(user.getPassword()).append("', ").append(user.getRole()).append(")").toString()))
        {
            user = (User)iterator.next();
        }

        if (!a(sqlitedatabase, "rest_order", "cancelPerson"))
        {
            sqlitedatabase.execSQL("ALTER TABLE rest_order ADD COLUMN cancelPerson real");
        }
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
    }

    public final void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE rest_company ( id interger primary key, name text, logoName text, address1 text, address2 text, tel text, email text, tax1 real, tax1Name text, tax2 real, tax2Name text, tax3 real, tax3Name text, itemPriceIncludeTax integer,serviceAfterTax integer default 1, deliveryAfterTax integer,discountAfterTax integer, taxNumber text, serviceFeeIdDineIn integer, includeServiceFeeDineIn integer, serviceFeeIdTakeOut integer, includeServiceFeeTakeOut integer, serviceFeeIdDelivery integer, includeServiceFeeDelivery integer, currency text, decimalPlace integer, tip integer, timeIn text, timeOut text)");
        sqlitedatabase.execSQL("CREATE TABLE rest_customer ( id integer primary key, name text, address1 text, address2 text,address3 text, tel text, email text, expenseAmount real)");
        sqlitedatabase.execSQL("CREATE TABLE rest_user ( id integer primary key, account text, password text, role integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_table ( name text, num integer, isOpen numeric default 0, description text, sequence integer default 0, tableGroupId integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_category ( name real, sequence integer default 0)");
        sqlitedatabase.execSQL("CREATE TABLE rest_item ( categoryid integer, name text, price real, cost real default 0, picture text, background text default '#ffffffff', fontColor text default '#ff000000', description text, printerId integer, sequence integer default 0, tax1Id integer, tax2Id integer,tax3Id integer, modifierGroupId text, kitchenNoteGroupId text, isWarn integer,warnQty integer, askPrice integer, stopSaleZeroQty integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_printer ( id integer primary key, printerName text, ip text, port integer, model text, connType integer, printType integer, paperWidth integer, commInitial text, commTitleSize text, commCut text,commDrawer text, commBeep text, printNum integer, enable integer, enableTipGuide integer, showCancelItem integer,  enableBeep integer, printSeparate integer, logoName text, header text, footer text, fontSize integer, hostingip text, serviceName text, btName text, marginTop integer, marginBottom integer, marginLeft integer, marginRight integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_order ( ordertime text, endtime text, customerId integer, customerName text, orderNum text, tableid integer, tablename text, personnum interger, status numeric, remark text, waiterName text, cashierName text, cancelReason text, cancelPerson text, subTotal real, discountAmt real, serviceAmt real, gratuity real, tax1Amt real, tax1Name text, tax2Amt real, tax2Name text, tax3Amt real, tax3Name text, amount real, splitType integer default 0, receiptNote text, discountReason text,orderCount integer default 0)");
        sqlitedatabase.execSQL("CREATE TABLE rest_order_item ( orderid integer, billId integer default 0, categoryName text, itemid integer, itemName text, price real, cost real default 0, qty integer, remark text, ordertime text, endtime text, cancelReason text, status integer, discountAmt real, discountName text)");
        sqlitedatabase.execSQL("CREATE TABLE rest_order_modifier ( orderid integer, itemid integer, orderItemId integer, modifierName text, price real, cost real, qty integer, type integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_price_sechedule ( id integer primary key, name text, startDate text, endDate text, startTime text, endTime text, enable int, isDisAmt int, amtRate real, sun integer, mon integer, tue integer, wed integer, thu integer, fri integer, sat integer, itemIds text,itemNames text)");
        sqlitedatabase.execSQL("CREATE TABLE rest_split_bill ( orderid integer, amount real, isPaid integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_modifier_group ( name real, miniQty integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_modifier ( groupId integer, name text, price real, cost real default 0, type integer, qty integer, required integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_currency ( currencyCode text, currencySymbol text, currencyDesc text, isDefault integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_order_payment ( orderid integer, amount real, paidAmt real, changeAmt real, paymentTime text, paymentMethodName text, paymentMethodType integer, cashierName text)");
        sqlitedatabase.execSQL("CREATE TABLE rest_role_permission ( role integer, function integer, isShow integer, managerPermission integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_discount (reason text, isPercentage integer, amount real)");
        sqlitedatabase.execSQL("CREATE TABLE rest_service_fee (name text, isPercentage integer, amount real)");
        sqlitedatabase.execSQL("CREATE TABLE rest_note (name text, type integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_payment_method (name text, type integer, rounding integer, openDrawer integer, beDefault integer default 0)");
        sqlitedatabase.execSQL("CREATE TABLE rest_cash_register (amount real, tranxType integer, date text, time text, note text)");
        sqlitedatabase.execSQL("CREATE TABLE rest_kitchen_note_group (name real)");
        sqlitedatabase.execSQL("CREATE TABLE rest_kitchen_note ( groupId integer, name text)");
        sqlitedatabase.execSQL("CREATE TABLE rest_reservation ( name text, phone text, email text, notes text, guestNumber integer, tableId integer, tableName text, reservedDate text, reservedTime text, status integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_item_qty (itemId integer primary key, qty integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_version (tableName text primary key, tableVersion integer default 0)");
        sqlitedatabase.execSQL("CREATE TABLE rest_table_group ( tableGroupId integer primary key, name text)");
        Resources resources = a.getResources();
        a(sqlitedatabase);
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_table_group(tableGroupId, name) values (1,'")).append(a.getString(0x7f0801b5)).append("')").toString());
        String as[] = resources.getStringArray(0x7f0e001e);
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String as13[] = as[j].split(",");
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_table(rowid, name, sequence,tableGroupId) values (")).append(as13[0]).append(",'").append(as13[1]).append("',").append(as13[2]).append(",").append(as13[3]).append(")").toString());
        }

        String as1[] = resources.getStringArray(0x7f0e001f);
        int k = as1.length;
        for (int l = 0; l < k; l++)
        {
            String as12[] = as1[l].split(",");
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_category(rowid, name,sequence) values (")).append(as12[0]).append(",'").append(as12[1]).append("',").append(as12[2]).append(")").toString());
        }

        String as2[] = resources.getStringArray(0x7f0e0020);
        int i1 = as2.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            String as11[] = as2[j1].split(",", -1);
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_item(categoryid, rowid, name, price, printerId, sequence, modifierGroupId) values (")).append(as11[0]).append(",'").append(as11[1]).append("','").append(as11[2]).append("',").append(as11[3]).append(",").append(as11[5]).append(",").append(as11[6]).append(",'").append(as11[7]).append("')").toString());
        }

        String as3[] = resources.getStringArray(0x7f0e0020);
        int k1 = as3.length;
        for (int l1 = 0; l1 < k1; l1++)
        {
            String as10[] = as3[l1].split(",", -1);
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_item_qty(itemId, qty) values (")).append(as10[1]).append(",0)").toString());
        }

        String as4[] = resources.getStringArray(0x7f0e0021);
        int i2 = as4.length;
        for (int j2 = 0; j2 < i2; j2++)
        {
            String as9[] = as4[j2].split(",");
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_modifier_group(rowid, name) values (")).append(as9[0]).append(",'").append(as9[1]).append("')").toString());
        }

        String as5[] = resources.getStringArray(0x7f0e0022);
        int k2 = as5.length;
        for (int l2 = 0; l2 < k2; l2++)
        {
            String as8[] = as5[l2].split(",");
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_modifier(groupId, name, price, type) values ('")).append(as8[0]).append("','").append(as8[1]).append("',").append(as8[2]).append(",").append(as8[3]).append(")").toString());
        }

        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_printer(id, printerName, port, printType, paperWidth, commInitial, commCut, commDrawer, commBeep, enable, logoName, header, footer, fontSize, connType,  printNum, marginTop, marginBottom, marginLeft, marginRight ) values (1,'")).append(a.getString(0x7f08015e)).append("',9100,1,48,'1b,40','1d,56,00','1b,70,00,19,fa','1b,42,05,05',0,'logo.png','").append(a.getString(0x7f08016c)).append("','").append(a.getString(0x7f08016d)).append("',23,0,1,4,6,2,2)").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_printer(id, printerName, port, printType, paperWidth, commInitial, commCut, commDrawer, commBeep, enable, fontSize, connType,  printNum, marginTop, marginBottom, marginLeft, marginRight ) values (2,'")).append(a.getString(0x7f08015f)).append("',9100,2,48,'1b,40','1d,56,00','1b,70,00,19,fa','1b,42,05,05',0,30,0,1, 20, 6,2,2 )").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_printer(id, printerName, port, printType, paperWidth, commInitial, commCut, commDrawer, commBeep, enable, fontSize, connType,  printNum, marginTop, marginBottom, marginLeft, marginRight ) values (3,'")).append(a.getString(0x7f080160)).append("',9100,2,48,'1b,40','1d,56,00','1b,70,00,19,fa','1b,42,05,05',0,30,0,1, 20, 6,2,2 )").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_printer(id, printerName, port, printType, paperWidth, commInitial, commCut, commDrawer, commBeep, enable, fontSize, connType,  printNum, marginTop, marginBottom, marginLeft, marginRight ) values (4,'")).append(a.getString(0x7f080161)).append("',9100,2,48,'1b,40','1d,56,00','1b,70,00,19,fa','1b,42,05,05',0,30,0,1, 20, 6,2,2 )").toString());
        Context context = a;
        Company company = new Company();
        company.setName("AADHK");
        company.setAddress1("Room 1905, Nan Fung Centre");
        company.setAddress2("Castle Peak Road, Tsuen Wan, HK");
        company.setEmail("");
        company.setTel("(852) 26180780");
        company.setLogoName("logo.png");
        company.setTimeIn("00:00");
        company.setTimeOut("23:59");
        company.setCurrency("HKD($)");
        company.setServiceFeeIdDineIn(1);
        company.setTax1(7.5D);
        company.setTax1Name(context.getResources().getString(0x7f0801cf));
        company.setTaxNumber("DE999999999");
        company.setDecimalPlace(2);
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_service_fee(rowid, name, isPercentage, amount) values (1,'")).append(a.getString(0x7f0800f6)).append("',1,10)").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_company(id, name, logoName, address1, address2, tel, email, tax1, tax1Name, serviceFeeIdDineIn, includeServiceFeeDineIn, currency, decimalPlace, timeIn, timeOut) values (1,'")).append(company.getName()).append("', '").append(company.getLogoName()).append("', '").append(company.getAddress1()).append("', '").append(company.getAddress2()).append("', '").append(company.getTel()).append("', '").append(company.getEmail()).append("', ").append(company.getTax1()).append(", '").append(company.getTax1Name()).append("', ").append(company.getServiceFeeIdDineIn()).append(" ,1, '").append(company.getCurrency()).append("', ").append(company.getDecimalPlace()).append(", '").append(company.getTimeIn()).append("', '").append(company.getTimeOut()).append("')").toString());
        User user;
        for (Iterator iterator = h.a(a).iterator(); iterator.hasNext(); sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_user(id, account, password, role) values (")).append(user.getId()).append(",'").append(user.getAccount()).append("', '").append(user.getPassword()).append("', ").append(user.getRole()).append(")").toString()))
        {
            user = (User)iterator.next();
        }

        String as6[] = resources.getStringArray(0x7f0e0016);
        int i3 = as6.length;
        for (int j3 = 0; j3 < i3; j3++)
        {
            String as7[] = as6[j3].split(",");
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (")).append(as7[0]).append(",").append(as7[1]).append(",").append(as7[2]).append(",").append(as7[3]).append(")").toString());
        }

        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_method(rowid, name,type,openDrawer,beDefault) values (1, '")).append(a.getString(0x7f080309)).append("',0,1,1)").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_method(rowid, name,type,openDrawer) values (2, '")).append(a.getString(0x7f08030b)).append("',1,1)").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_method(rowid, name,type,openDrawer) values (3, '")).append(a.getString(0x7f08030c)).append("',1,1)").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_method(rowid, name,type,openDrawer) values (4, '")).append(a.getString(0x7f08030d)).append("',2,1)").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_method(rowid, name,type,openDrawer) values (5, '")).append(a.getString(0x7f08030e)).append("',3,1)").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_method(rowid, name,type,openDrawer) values (6, '")).append(a.getString(0x7f08030f)).append("',4,1)").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_discount(reason, isPercentage, amount) values ('")).append(a.getString(0x7f0802ed)).append("', 1, 25)").toString());
        d(sqlitedatabase);
    }

    public final void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        if (i < 18)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("ALTER TABLE rest_item ADD COLUMN taxId integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_company RENAME TO company_temp ");
            sqlitedatabase.execSQL("CREATE TABLE rest_company ( id interger primary key, name text, logoName text, address1 text, address2 text, tel text, email text, tax1 real, tax1Name text, tax2 real, tax2Name text, tax3 real, tax3Name text, itemPriceIncludeTax integer,serviceAfterTax integer default 1, deliveryAfterTax integer,discountAfterTax integer, taxNumber text, serviceFeeIdDineIn integer, includeServiceFeeDineIn integer, serviceFeeIdTakeOut integer, includeServiceFeeTakeOut integer, serviceFeeIdDelivery integer, includeServiceFeeDelivery integer, currency text, decimalPlace integer, tip integer, timeIn text, timeOut text)");
            sqlitedatabase.execSQL("insert into  rest_company(id, name, logoName, address1, address2, tel, email, serviceFee, currency, decimalPlace, tip, timeIn, timeOut) select id, name, logoName, address1, address2, tel, email, serviceFee, currency, decimalPlace, tip, timeIn, timeOut from company_temp");
            Cursor cursor7 = sqlitedatabase.query(false, "company_temp", new String[] {
                "tax"
            }, null, null, null, null, null, null);
            if (cursor7.moveToFirst())
            {
                do
                {
                    double d1 = cursor7.getDouble(0);
                    if (d1 != 0.0D)
                    {
                        sqlitedatabase.execSQL((new StringBuilder("update  rest_company set tax1 =")).append(d1).append(", tax1Name='").append(a.getResources().getString(0x7f0801cf)).append("'").toString());
                    }
                } while (cursor7.moveToNext());
            }
            cursor7.close();
            sqlitedatabase.execSQL("drop table company_temp");
            sqlitedatabase.execSQL("ALTER TABLE rest_order RENAME TO order_temp ");
            sqlitedatabase.execSQL("CREATE TABLE rest_order ( ordertime text, endtime text, customerId integer, customerName text, orderNum text, tableid integer, tablename text, personnum interger, status numeric, remark text, waiterName text, cashierName text, cancelReason text, cancelPerson text, paymentType text, subTotal real, discountAmt real, serviceAmt real, tax1Amt real, tax1Name text, tax2Amt real, tax2Name text, amount real, paid real,  changeAmt real, splitType integer default 0, kitchenRemark text, receiptNote text, discountReason text)");
            sqlitedatabase.execSQL("insert into  rest_order(ordertime, endtime, tableid, tablename, personnum, status, remark, cancelReason, paymentType, subTotal, discountAmt, serviceAmt, tax1Amt, amount, paid, changeAmt ) select ordertime, endtime, tableid, tablename, personnum, status, remark, cancelReason, paymentType, subTotal, discountAmt, serviceAmt, taxAmt, amount, paid, changeAmt from order_temp");
            sqlitedatabase.execSQL("drop table order_temp");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 19)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("ALTER TABLE rest_company RENAME TO company_temp ");
            sqlitedatabase.execSQL("CREATE TABLE rest_company ( id interger primary key, name text, logoName text, address1 text, address2 text, tel text, email text, tax1 real, tax1Name text, tax2 real, tax2Name text, tax3 real, tax3Name text, itemPriceIncludeTax integer,serviceAfterTax integer default 1, deliveryAfterTax integer,discountAfterTax integer, taxNumber text, serviceFeeIdDineIn integer, includeServiceFeeDineIn integer, serviceFeeIdTakeOut integer, includeServiceFeeTakeOut integer, serviceFeeIdDelivery integer, includeServiceFeeDelivery integer, currency text, decimalPlace integer, tip integer, timeIn text, timeOut text)");
            sqlitedatabase.execSQL("insert into  rest_company(id, name, logoName, address1, address2, tel, email, tax1, tax1Name, tax2, tax2Name, includeTax, serviceFee, currency, decimalPlace, tip, timeIn, timeOut) select id, name, logoName, address1, address2, tel, email,tax1, tax1Name, tax2, tax2Name, itemPriceIncludeTax, serviceFee, currency, decimalPlace, tip, timeIn, timeOut from company_temp");
            sqlitedatabase.execSQL("drop table company_temp");
            sqlitedatabase.execSQL("CREATE TABLE rest_price_sechedule ( id integer primary key, name text, startDate text, endDate text, startTime text, endTime text, enable int, isDisAmt int, amtRate real, sun integer, mon integer, tue integer, wed integer, thu integer, fri integer, sat integer, itemIds text,itemNames text)");
            sqlitedatabase.execSQL("ALTER TABLE rest_order_item ADD COLUMN discountAmt real");
            sqlitedatabase.execSQL("ALTER TABLE rest_order_item ADD COLUMN discountName text");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 20)
        {
            f(sqlitedatabase);
        }
        if (i < 21)
        {
            sqlitedatabase.beginTransaction();
            if (!a(sqlitedatabase, "rest_table", "sequence"))
            {
                sqlitedatabase.execSQL("ALTER TABLE rest_table ADD COLUMN sequence integer default 0");
            }
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 22)
        {
            sqlitedatabase.beginTransaction();
            if (!a(sqlitedatabase, "rest_order_item", "categoryName"))
            {
                sqlitedatabase.execSQL("ALTER TABLE rest_order_item ADD COLUMN categoryName text");
            }
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 23)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("ALTER TABLE rest_order ADD COLUMN waiterName text");
            sqlitedatabase.execSQL("ALTER TABLE rest_order ADD COLUMN cashierName text");
            sqlitedatabase.execSQL("ALTER TABLE rest_printer ADD COLUMN printerName text");
            sqlitedatabase.execSQL("ALTER TABLE rest_printer ADD COLUMN model text");
            sqlitedatabase.execSQL("ALTER TABLE rest_printer ADD COLUMN footerSpace integer");
            sqlitedatabase.execSQL("update  rest_user set password ='123456' where account = 'manager' and password='manager'");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 24)
        {
            sqlitedatabase.beginTransaction();
            Cursor cursor6 = sqlitedatabase.query(false, "rest_user", new String[] {
                "max(id)"
            }, null, null, null, null, null, null);
            long l = 0L;
            if (cursor6.moveToFirst())
            {
                l = cursor6.getLong(0);
            }
            cursor6.close();
            long l1 = l + 1L;
            sqlitedatabase.execSQL((new StringBuilder("update  rest_user set id =")).append(l1).append(" where id=1").toString());
            sqlitedatabase.execSQL("update  rest_user set role =1 where role=0");
            sqlitedatabase.execSQL("INSERT INTO rest_user(id, account, password, role) values (1,'admin', '26180780', 0)");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 25)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("ALTER TABLE rest_order_item ADD COLUMN billId integer default 0");
            sqlitedatabase.execSQL("ALTER TABLE rest_order ADD COLUMN splitType integer default 0");
            sqlitedatabase.execSQL("ALTER TABLE rest_item ADD COLUMN modifierGroupId integer");
            sqlitedatabase.execSQL("CREATE TABLE rest_modifier ( groupId integer, name text, price real, cost real default 0, type integer, qty integer, required integer)");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 26)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("ALTER TABLE rest_order ADD COLUMN orderNum integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_order ADD COLUMN kitchenRemark text");
            sqlitedatabase.execSQL("ALTER TABLE rest_order ADD COLUMN receiptNote text");
            sqlitedatabase.execSQL("ALTER TABLE rest_order ADD COLUMN discountReason text");
            sqlitedatabase.execSQL("ALTER TABLE rest_company ADD COLUMN includeService integer");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 27)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("ALTER TABLE rest_printer ADD COLUMN hostingip text");
            sqlitedatabase.execSQL("ALTER TABLE rest_printer ADD COLUMN serviceName text");
            sqlitedatabase.execSQL("ALTER TABLE rest_printer ADD COLUMN marginTop integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_printer ADD COLUMN marginLeft integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_printer ADD COLUMN marginRight integer");
            sqlitedatabase.execSQL("update  rest_printer set paperWidth =paperWidth/8");
            sqlitedatabase.execSQL("update  rest_printer set footerSpace =footerSpace/8");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 29)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("ALTER TABLE rest_printer ADD COLUMN commBeep text");
            sqlitedatabase.execSQL("ALTER TABLE rest_printer ADD COLUMN enableBeep integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_printer ADD COLUMN printNum integer");
            sqlitedatabase.execSQL("update  rest_printer set commBeep ='1b,42,05,05'");
            sqlitedatabase.execSQL("update  rest_printer set printNum =1");
            sqlitedatabase.execSQL("CREATE TABLE rest_order_payment ( orderid integer, amount real, paid real, changeAmt real, paymentTime text, paymentType text, paymentTypeId integer, cashierName text)");
            sqlitedatabase.execSQL("INSERT INTO rest_order_payment(orderid, amount, paid, changeAmt, paymentTime, paymentType, cashierName) select rowid, amount, paid, changeAmt, endtime, paymentType, cashierName from rest_order");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 30)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("ALTER TABLE rest_printer RENAME TO rest_printer_temp");
            sqlitedatabase.execSQL("CREATE TABLE rest_printer ( id integer primary key, printerName text, ip text, port integer, model text, connType integer, printType integer, paperWidth integer, commInitial text, commTitleSize text, commCut text,commDrawer text, commBeep text, printNum integer, enable integer, enableTipGuide integer, showCancelItem integer,  enableBeep integer, printSeparate integer, logoName text, header text, footer text, fontSize integer, hostingip text, serviceName text, btName text, marginTop integer, marginBottom integer, marginLeft integer, marginRight integer)");
            sqlitedatabase.execSQL("INSERT INTO rest_printer(id, printerName, ip, port, model, connType, printType, paperWidth, commInitial, commTitleSize, commCut, commDrawer, commBeep, printNum, enable, enableTipGuide, enableBeep, printSeparate, footer, fontSize, hostingip, serviceName, marginTop, marginBottom, marginLeft, marginRight) select id, printerName, ip, port, model, connType, printType, paperWidth, commInitial, commTitleSize, commCut, commDrawer, commBeep, printNum, enable, enableTipGuide, enableBeep, printSeparate, footer, fontSize, hostingip, serviceName, marginTop, footerSpace, marginLeft, marginRight from rest_printer_temp");
            sqlitedatabase.execSQL("update  rest_printer set marginTop =4");
            sqlitedatabase.execSQL("update  rest_printer set marginLeft =2");
            sqlitedatabase.execSQL("update  rest_printer set marginRight =2");
            sqlitedatabase.execSQL("update  rest_printer set commBeep ='1b,42,03,03'");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 31)
        {
            e(sqlitedatabase);
        }
        if (i < 33)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("ALTER TABLE rest_item RENAME TO rest_item_temp");
            sqlitedatabase.execSQL("CREATE TABLE rest_item ( categoryid integer, name text, price real, picture text, background text default '#ffffffff', fontColor text default '#ff000000', description text, printerId integer, sequence integer default 0, tax1Id integer, tax2Id integer, modifierGroupId text, kitchenNoteGroupId text, qty integer, isWarn integer,warnQty integer)");
            sqlitedatabase.execSQL("INSERT INTO rest_item(rowid, categoryid, name, price, printerId, sequence, modifierGroupId, qty, isWarn, warnQty, tax1Id) select rowid, categoryid, name, price, printerId, sequence, modifierGroupId, qty, isWarn, warnQty, taxId from rest_item_temp");
            sqlitedatabase.execSQL("drop table rest_item_temp");
            sqlitedatabase.execSQL("update  rest_item set modifierGroupId ='' where modifierGroupId='0'");
            if (!a(sqlitedatabase, "rest_printer", "logoName"))
            {
                sqlitedatabase.execSQL("ALTER TABLE rest_printer ADD COLUMN logoName text");
            }
            if (!a(sqlitedatabase, "rest_printer", "header"))
            {
                sqlitedatabase.execSQL("ALTER TABLE rest_printer ADD COLUMN header text");
            }
            Cursor cursor5 = sqlitedatabase.rawQuery("select name,address1,address2,tel,logoName from rest_company", null);
            Cursor cursor;
            Cursor cursor1;
            Cursor cursor2;
            Cursor cursor3;
            Cursor cursor4;
            String s;
            String s1;
            if (cursor5.moveToFirst())
            {
                s = (new StringBuilder()).append(cursor5.getString(0)).append("\n").append(cursor5.getString(1)).append("\n").append(cursor5.getString(2)).append("\n").append(cursor5.getString(3)).toString();
                s1 = cursor5.getString(4);
            } else
            {
                s = null;
                s1 = null;
            }
            cursor5.close();
            if (s1 != null)
            {
                sqlitedatabase.execSQL((new StringBuilder("update  rest_printer set logoName ='")).append(s1).append("'").toString());
            }
            if (s != null)
            {
                sqlitedatabase.execSQL((new StringBuilder("update  rest_printer set header =\"")).append(s).append("\"").toString());
            }
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 35)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("update  rest_order_payment set amount = (select paid-changeAmt) where changeAmt>0 and amount =paid");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 36)
        {
            sqlitedatabase.beginTransaction();
            if (!a(sqlitedatabase, "rest_printer", "logoName"))
            {
                sqlitedatabase.execSQL("ALTER TABLE rest_printer ADD COLUMN logoName text");
            }
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 38)
        {
            sqlitedatabase.beginTransaction();
            if (!a(sqlitedatabase, "rest_item", "fontColor"))
            {
                sqlitedatabase.execSQL("ALTER TABLE rest_item ADD COLUMN fontColor text");
            }
            if (!a(sqlitedatabase, "rest_item", "background"))
            {
                sqlitedatabase.execSQL("ALTER TABLE rest_item ADD COLUMN background text");
            }
            sqlitedatabase.execSQL("update  rest_item set fontColor='#ff000000' where fontColor is null");
            sqlitedatabase.execSQL("update  rest_item set background ='#ffffffff' where background  is null");
            sqlitedatabase.execSQL("update  rest_item set fontColor='#ff000000' where fontColor=''");
            sqlitedatabase.execSQL("update  rest_item set background ='#ffffffff'  where background=''");
            sqlitedatabase.execSQL("update  rest_item set background ='#ffffffff', fontColor='#ff000000' where background<0 or fontColor<0");
            sqlitedatabase.execSQL("CREATE TABLE rest_payment_type (name text)");
            sqlitedatabase.execSQL("CREATE TABLE rest_cash_register (amount real, tranxType integer, date text, time text, note text)");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 39)
        {
            sqlitedatabase.beginTransaction();
            if (!a(sqlitedatabase, "rest_order_payment", "paymentTypeId"))
            {
                sqlitedatabase.execSQL("ALTER TABLE rest_order_payment ADD COLUMN paymentTypeId integer");
            }
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_type(rowid, name) values (1, '")).append(a.getString(0x7f080309)).append("')").toString());
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_type(rowid, name) values (2, '")).append(a.getString(0x7f08030b)).append("')").toString());
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_type(rowid, name) values (3, '")).append(a.getString(0x7f08030c)).append("')").toString());
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_type(rowid, name) values (4, '")).append(a.getString(0x7f08030d)).append("')").toString());
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_type(rowid, name) values (5, '")).append(a.getString(0x7f08030e)).append("')").toString());
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_type(rowid, name) values (6, '")).append(a.getString(0x7f08030f)).append("')").toString());
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 40)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("Drop table if exists rest_printer_temp");
            sqlitedatabase.execSQL("ALTER TABLE rest_printer RENAME TO rest_printer_temp");
            sqlitedatabase.execSQL("CREATE TABLE rest_printer ( id integer primary key, printerName text, ip text, port integer, model text, connType integer, printType integer, paperWidth integer, commInitial text, commTitleSize text, commCut text,commDrawer text, commBeep text, printNum integer, enable integer, enableTipGuide integer, showCancelItem integer,  enableBeep integer, printSeparate integer, logoName text, header text, footer text, fontSize integer, hostingip text, serviceName text, btName text, marginTop integer, marginBottom integer, marginLeft integer, marginRight integer)");
            sqlitedatabase.execSQL("INSERT INTO rest_printer(id, printerName, ip, port, model, connType, printType, paperWidth, commInitial, commTitleSize, commCut,commDrawer, commBeep, printNum, enable, enableTipGuide, showCancelItem,  enableBeep, printSeparate, logoName, header, footer, fontSize, hostingip, serviceName, marginTop, marginBottom, marginLeft, marginRight) select id, printerName, ip, port, model, connType, printType, paperWidth, commInitial, commTitleSize, commCut,commDrawer, commBeep, printNum, enable, enableTipGuide, showCancelItem,  enableBeep, printSeparate, logoName, header, footer, fontSize, hostingip, serviceName, marginTop, marginBottom, marginLeft, marginRight from rest_printer_temp");
            sqlitedatabase.execSQL("drop table rest_printer_temp");
            sqlitedatabase.execSQL("Drop table if exists rest_cash_register");
            sqlitedatabase.execSQL("CREATE TABLE rest_cash_register (amount real, tranxType integer, date text, time text, note text)");
            sqlitedatabase.execSQL("update  rest_user set password='123456' ");
            cursor4 = sqlitedatabase.rawQuery("select * from rest_role_permission where function !=104 ", null);
            if (cursor4.getCount() == 0)
            {
                sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (0,104,1,0)");
                sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (1,104,1,0)");
                sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (2,104,0,0)");
                sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (3,104,0,0)");
            }
            cursor4.close();
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 41)
        {
            cursor3 = sqlitedatabase.rawQuery("select * from rest_role_permission where function !=202 ", null);
            if (cursor3.getCount() == 0)
            {
                sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (0,202,1,0)");
                sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (1,202,1,0)");
                sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (2,202,0,0)");
                sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (3,202,0,0)");
            }
            cursor3.close();
        }
        if (i < 43)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("ALTER TABLE rest_order ADD COLUMN customerId integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_order ADD COLUMN customerName text");
            sqlitedatabase.execSQL("ALTER TABLE rest_customer ADD COLUMN address3 text");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 44)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("CREATE TABLE rest_payment_method (name text, type integer, rounding integer, openDrawer integer, beDefault integer default 0)");
            sqlitedatabase.execSQL("INSERT INTO rest_payment_method(name, type, openDrawer) select name, 0, 1 from rest_payment_type");
            sqlitedatabase.execSQL("drop table rest_payment_type");
            sqlitedatabase.execSQL("ALTER TABLE rest_order_payment RENAME TO rest_order_payment_temp");
            sqlitedatabase.execSQL("CREATE TABLE rest_order_payment ( orderid integer, amount real, paidAmt real, changeAmt real, paymentTime text, paymentMethodName text, paymentMethodType integer, cashierName text)");
            sqlitedatabase.execSQL("INSERT INTO rest_order_payment(orderid, amount, paidAmt, changeAmt, paymentTime, paymentMethodName, paymentMethodType, cashierName) select orderid, amount, paid, changeAmt, paymentTime, paymentType, 0, cashierName from rest_order_payment_temp");
            sqlitedatabase.execSQL("drop table rest_order_payment_temp");
            sqlitedatabase.execSQL("DELETE from rest_user where role=0");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 45)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("CREATE TABLE rest_kitchen_note_group (name real)");
            sqlitedatabase.execSQL("CREATE TABLE rest_kitchen_note ( groupId integer, name text)");
            sqlitedatabase.execSQL("CREATE TABLE rest_reservation ( name text, phone text, email text, notes text, guestNumber integer, tableId integer, tableName text, reservedDate text, reservedTime text, status integer)");
            sqlitedatabase.execSQL("update  rest_table set isOpen=0 where isOpen!=1");
            if (!a(sqlitedatabase, "rest_item", "kitchenNoteGroupId"))
            {
                sqlitedatabase.execSQL("ALTER TABLE rest_item ADD COLUMN kitchenNoteGroupId text");
            }
            if (a(sqlitedatabase, "rest_order_note"))
            {
                sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_kitchen_note_group(rowid, name) values(1, '")).append(a.getString(0x7f0800e8)).append("')").toString());
                sqlitedatabase.execSQL("INSERT INTO rest_kitchen_note(groupId,name) select 1,name from rest_order_note where type=2");
                sqlitedatabase.execSQL("DELETE FROM rest_order_note WHERE type=2");
            }
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 46)
        {
            c(sqlitedatabase);
        }
        if (i < 47)
        {
            sqlitedatabase.beginTransaction();
            cursor2 = sqlitedatabase.rawQuery("select * from rest_role_permission where function=105", null);
            if (cursor2.getCount() == 0)
            {
                sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (0,105,1,0)");
                sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (1,105,1,0)");
                sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (2,105,0,0)");
                sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (3,105,0,0)");
            }
            cursor2.close();
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 48)
        {
            sqlitedatabase.beginTransaction();
            if (!a(sqlitedatabase, "rest_price_sechedule", "itemNames"))
            {
                sqlitedatabase.execSQL("ALTER TABLE rest_price_sechedule ADD COLUMN itemNames text");
            }
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 49)
        {
            b(sqlitedatabase);
        }
        if (i < 50)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("CREATE TABLE rest_table_group ( tableGroupId integer primary key, name text)");
            sqlitedatabase.execSQL("CREATE TABLE rest_service_fee (name text, isPercentage integer, amount real)");
            sqlitedatabase.execSQL("update rest_user set password=''");
            cursor1 = sqlitedatabase.rawQuery(" select rowid from rest_user where role=1 limit 1", null);
            if (cursor1.moveToFirst())
            {
                sqlitedatabase.execSQL((new StringBuilder("update rest_user set password='123456' where rowid=")).append(cursor1.getInt(0)).toString());
            }
            cursor1.close();
            if (!a(sqlitedatabase, "rest_item", "tax3Id"))
            {
                sqlitedatabase.execSQL("ALTER TABLE rest_item ADD COLUMN tax3Id integer");
                sqlitedatabase.execSQL("ALTER TABLE rest_item ADD COLUMN cost real default 0");
                sqlitedatabase.execSQL("ALTER TABLE rest_item ADD COLUMN stopSaleZeroQty integer");
            }
            if (!a(sqlitedatabase, "rest_modifier", "cost"))
            {
                sqlitedatabase.execSQL("ALTER TABLE rest_modifier ADD COLUMN cost real default 0");
            }
            if (!a(sqlitedatabase, "rest_order_item", "cost"))
            {
                sqlitedatabase.execSQL("ALTER TABLE rest_order_item ADD COLUMN cost real default 0");
            }
            if (!a(sqlitedatabase, "rest_order_modifier", "cost"))
            {
                sqlitedatabase.execSQL("ALTER TABLE rest_order_modifier ADD COLUMN cost real default 0");
            }
            if (!a(sqlitedatabase, "rest_order", "orderCount"))
            {
                sqlitedatabase.execSQL("ALTER TABLE rest_order ADD COLUMN orderCount integer default 0");
                sqlitedatabase.execSQL("ALTER TABLE rest_order ADD COLUMN tax3Amt real");
                sqlitedatabase.execSQL("ALTER TABLE rest_order ADD COLUMN tax3Name text");
                sqlitedatabase.execSQL("ALTER TABLE rest_order ADD COLUMN gratuity real");
            }
            sqlitedatabase.execSQL("ALTER TABLE rest_company ADD COLUMN tax3 real");
            sqlitedatabase.execSQL("ALTER TABLE rest_company ADD COLUMN tax3Name text");
            sqlitedatabase.execSQL("ALTER TABLE rest_company ADD COLUMN itemPriceIncludeTax integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_company ADD COLUMN serviceAfterTax integer default 1");
            sqlitedatabase.execSQL("ALTER TABLE rest_company ADD COLUMN deliveryAfterTax integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_company ADD COLUMN discountAfterTax integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_company ADD COLUMN serviceFeeIdDineIn integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_company ADD COLUMN serviceFeeTakeOut integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_company ADD COLUMN serviceFeeIdTakeOut integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_company ADD COLUMN serviceFeeDelivery integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_company ADD COLUMN serviceFeeIdDelivery integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_company ADD COLUMN includeserviceFeeDineIn integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_company ADD COLUMN includeServiceFeeTakeOut integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_company ADD COLUMN includeServiceFeeDelivery integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_table ADD COLUMN tableGroupId integer");
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_table_group(tableGroupId, name) values (1,'")).append(a.getString(0x7f0801b5)).append("')").toString());
            sqlitedatabase.execSQL("update rest_table set tableGroupId=1");
            d(sqlitedatabase);
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 51)
        {
            sqlitedatabase.beginTransaction();
            cursor = sqlitedatabase.rawQuery("select rowid from rest_table_group", null);
            if (cursor.getCount() == 0)
            {
                sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_table_group(tableGroupId, name) values (1,'")).append(a.getString(0x7f0801b5)).append("')").toString());
            }
            cursor.close();
            d(sqlitedatabase);
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
    }
}
