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
import com.aadhk.restpos.f.f;
import java.util.Iterator;
import java.util.List;

final class g extends SQLiteOpenHelper
{

    Context a;

    g(Context context)
    {
        super(context, "restpos.db", null, 44);
        a = context;
    }

    private void a(SQLiteDatabase sqlitedatabase)
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
        String as[] = a.getResources().getStringArray(0x7f070016);
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String as1[] = as[j].split(",");
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (")).append(as1[0]).append(",").append(as1[1]).append(",").append(as1[2]).append(",").append(as1[3]).append(")").toString());
        }

        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
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

    private void b(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.beginTransaction();
        sqlitedatabase.execSQL("CREATE TABLE currency ( currencyCode text, currencySymbol text, currencyDesc text, isDefault integer)");
        String as[] = a.getResources().getStringArray(0x7f070000);
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String as1[] = as[j].split(",");
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO currency(currencyCode, currencySymbol, currencyDesc, isDefault) values ('")).append(as1[0]).append("','").append(as1[1]).append("','").append(as1[2]).append("',").append(as1[3]).append(")").toString());
        }

        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
    }

    private void c(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.beginTransaction();
        User user;
        for (Iterator iterator = f.a(a).iterator(); iterator.hasNext(); sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_user(account, password, role) values ('")).append(user.getAccount()).append("', '").append(user.getPassword()).append("', ").append(user.getRole()).append(")").toString()))
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
        sqlitedatabase.execSQL("CREATE TABLE rest_company ( id interger primary key, name text,logoName text, address1 text, address2 text, tel text, email text, tax1 real, tax1Name text, tax2 real, tax2Name text, includeTax integer, taxNumber text, serviceFee integer, includeService integer, currency text, decimalPlace integer, tip integer, timeIn text, timeOut text)");
        sqlitedatabase.execSQL("CREATE TABLE rest_customer ( id integer primary key, name text, address1 text, address2 text,address3 text, tel text, email text, expenseAmount real,logoName text)");
        sqlitedatabase.execSQL("CREATE TABLE rest_user ( id integer primary key, account text, password text, role integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_table ( name text, num integer, isOpen numeric, description text, sequence integer default 0)");
        sqlitedatabase.execSQL("CREATE TABLE rest_category ( name real, sequence integer default 0)");
        sqlitedatabase.execSQL("CREATE TABLE rest_item ( categoryid integer, name text, price real, picture text, background text default '#ffffffff', fontColor text default '#ff000000', description text, printerId integer, sequence integer default 0, tax1Id integer, tax2Id integer, modifierGroupId text, qty integer, isWarn integer,warnQty integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_printer ( id integer primary key, printerName text, ip text, port integer, model text, connType integer, printType integer, paperWidth integer, commInitial text, commTitleSize text, commCut text,commDrawer text, commBeep text, printNum integer, enable integer, enableTipGuide integer, showCancelItem integer,  enableBeep integer, printSeparate integer, logoName text, header text, footer text, fontSize integer, hostingip text, serviceName text, marginTop integer, marginBottom integer, marginLeft integer, marginRight integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_order ( ordertime text, endtime text, customerId integer, customerName text, orderNum text, tableid integer, tablename text, personnum interger, status numeric, remark text, waiterName text, cashierName text, cancelReason text, cancelPerson text, paymentType text, subTotal real, discountAmt real, serviceAmt real, tax1Amt real, tax1Name text, tax2Amt real, tax2Name text, amount real, paid real,  changeAmt real, splitType integer default 0, kitchenRemark text, receiptNote text, discountReason text)");
        sqlitedatabase.execSQL("CREATE TABLE rest_orderItem ( orderid integer, billId integer default 0, categoryName text, itemid integer,itemName text, price real, num integer, remark text, ordertime text, endtime text, isSetmeal integer, cancelReason text, status integer, disAmt real, disName text)");
        sqlitedatabase.execSQL("CREATE TABLE rest_orderSupplement ( orderid integer, itemid integer, orderItemId integer, supplementid integer ,supplementName text, price real,qty integer, type integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_price_sechedule ( id integer primary key, name text, startDate text, endDate text, startTime text, endTime text, enable int, isDisAmt int, amtRate real, sun integer, mon integer, tue integer, wed integer, thu integer, fri integer, sat integer, itemIds text)");
        sqlitedatabase.execSQL("CREATE TABLE rest_splitBill ( orderid integer, amount real, isPaid integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_modifierGroup ( name real, miniNum integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_modifier ( groupId integer, name text, price real, type integer, qty integer, required integer)");
        sqlitedatabase.execSQL("CREATE TABLE currency ( currencyCode text, currencySymbol text, currencyDesc text, isDefault integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_order_payment ( orderid integer, amount real, paidAmt real, changeAmt real, paymentTime text, paymentMethodName text, paymentMethodType integer, cashierName text)");
        sqlitedatabase.execSQL("CREATE TABLE rest_role_permission ( role integer, function integer, isShow integer, managerPermission integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_order_discount (reason text, isper integer,amount real)");
        sqlitedatabase.execSQL("CREATE TABLE rest_order_note (name text,type integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_payment_method (name text,type integer, rounding integer,openDrawer integer)");
        sqlitedatabase.execSQL("CREATE TABLE rest_cash_register (amount real, tranxType integer, date text, time text, note text)");
        Resources resources = a.getResources();
        String as[] = resources.getStringArray(0x7f070000);
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String as13[] = as[j].split(",");
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO currency(currencyCode, currencySymbol, currencyDesc, isDefault) values ('")).append(as13[0]).append("','").append(as13[1]).append("','").append(as13[2]).append("',").append(as13[3]).append(")").toString());
        }

        String as1[] = resources.getStringArray(0x7f07001b);
        int k = as1.length;
        for (int l = 0; l < k; l++)
        {
            String as12[] = as1[l].split(",");
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_table(rowid, name, sequence) values (")).append(as12[0]).append(",'").append(as12[1]).append("',").append(as12[2]).append(")").toString());
        }

        String as2[] = resources.getStringArray(0x7f07001c);
        int i1 = as2.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            String as11[] = as2[j1].split(",");
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_category(rowid, name,sequence) values (")).append(as11[0]).append(",'").append(as11[1]).append("',").append(as11[2]).append(")").toString());
        }

        String as3[] = resources.getStringArray(0x7f07001d);
        int k1 = as3.length;
        for (int l1 = 0; l1 < k1; l1++)
        {
            String as10[] = as3[l1].split(",", -1);
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_item(categoryid, rowid, name, price, printerId, sequence, modifierGroupId) values (")).append(as10[0]).append(",'").append(as10[1]).append("','").append(as10[2]).append("',").append(as10[3]).append(",").append(as10[5]).append(",").append(as10[6]).append(",'").append(as10[7]).append("')").toString());
        }

        String as4[] = resources.getStringArray(0x7f07001e);
        int i2 = as4.length;
        for (int j2 = 0; j2 < i2; j2++)
        {
            String as9[] = as4[j2].split(",");
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_modifierGroup(rowid, name) values (")).append(as9[0]).append(",'").append(as9[1]).append("')").toString());
        }

        String as5[] = resources.getStringArray(0x7f07001f);
        int k2 = as5.length;
        for (int l2 = 0; l2 < k2; l2++)
        {
            String as8[] = as5[l2].split(",");
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_modifier(groupId, name, price, type) values ('")).append(as8[0]).append("','").append(as8[1]).append("',").append(as8[2]).append(",").append(as8[3]).append(")").toString());
        }

        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_printer(id, printerName, port, printType, paperWidth, commInitial, commCut, commDrawer, commBeep, enable, logoName, header, footer, fontSize, connType,  printNum, marginTop, marginBottom, marginLeft, marginRight ) values (1,'")).append(a.getString(0x7f09012c)).append("',9100,1,48,'1b,40','1d,56,30','1b,70,00,19,fa','1b,42,05,05',0,'logo.png','").append(a.getString(0x7f09013a)).append("','").append(a.getString(0x7f09013b)).append("',23,0,1, 4, 6,2,2 )").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_printer(id, printerName, port, printType, paperWidth, commInitial, commCut, commDrawer, commBeep, enable, fontSize, connType,  printNum, marginTop, marginBottom, marginLeft, marginRight ) values (2,'")).append(a.getString(0x7f09012d)).append("',9100,2,48,'1b,40','1d,56,30','1b,70,00,19,fa','1b,42,05,05',0,30,0,1, 20, 6,2,2 )").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_printer(id, printerName, port, printType, paperWidth, commInitial, commCut, commDrawer, commBeep, enable, fontSize, connType,  printNum, marginTop, marginBottom, marginLeft, marginRight ) values (3,'")).append(a.getString(0x7f09012e)).append("',9100,2,48,'1b,40','1d,56,30','1b,70,00,19,fa','1b,42,05,05',0,30,0,1, 20, 6,2,2 )").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_printer(id, printerName, port, printType, paperWidth, commInitial, commCut, commDrawer, commBeep, enable, fontSize, connType,  printNum, marginTop, marginBottom, marginLeft, marginRight ) values (4,'")).append(a.getString(0x7f09012f)).append("',9100,2,48,'1b,40','1d,56,30','1b,70,00,19,fa','1b,42,05,05',0,30,0,1, 20, 6,2,2 )").toString());
        Context context = a;
        Company company = new Company();
        company.setName("AADHK");
        company.setAddress1("Room 1905, Nan Fung Centre");
        company.setAddress2("Castle Peak Road, Tsuen Wan, HK");
        company.setEmail("androidapplicationhk@gmail.com");
        company.setTel("(852) 26180780");
        company.setLogoName("logo.png");
        company.setTimeIn("00:00");
        company.setTimeOut("23:59");
        company.setCurrency("HKD($)");
        company.setServiceFee(18);
        company.setTax1(7.5D);
        company.setTax1Name(context.getResources().getString(0x7f090194));
        company.setTaxNumber("DE999999999");
        company.setDecimalPlace(2);
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_company(id, name, logoName, address1, address2, tel, email, tax1, tax1Name, serviceFee, currency, decimalPlace, tip, timeIn, timeOut) values (1,'")).append(company.getName()).append("', '").append(company.getLogoName()).append("', '").append(company.getAddress1()).append("', '").append(company.getAddress2()).append("', '").append(company.getTel()).append("', '").append(company.getEmail()).append("', ").append(company.getTax1()).append(", '").append(company.getTax1Name()).append("', ").append(company.getServiceFee()).append(", '").append(company.getCurrency()).append("', ").append(company.getDecimalPlace()).append(", ").append(company.getTip()).append(", '").append(company.getTimeIn()).append("', '").append(company.getTimeOut()).append("')").toString());
        User user;
        for (Iterator iterator = f.a(a).iterator(); iterator.hasNext(); sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_user(id, account, password, role) values (")).append(user.getId()).append(",'").append(user.getAccount()).append("', '").append(user.getPassword()).append("', ").append(user.getRole()).append(")").toString()))
        {
            user = (User)iterator.next();
        }

        String as6[] = resources.getStringArray(0x7f070016);
        int i3 = as6.length;
        for (int j3 = 0; j3 < i3; j3++)
        {
            String as7[] = as6[j3].split(",");
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (")).append(as7[0]).append(",").append(as7[1]).append(",").append(as7[2]).append(",").append(as7[3]).append(")").toString());
        }

        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_method(rowid, name,type,openDrawer) values (1, '")).append(a.getString(0x7f0902ab)).append("',0,1)").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_method(rowid, name,type,openDrawer) values (2, '")).append(a.getString(0x7f0902ad)).append("',1,1)").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_method(rowid, name,type,openDrawer) values (3, '")).append(a.getString(0x7f0902ae)).append("',1,1)").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_method(rowid, name,type,openDrawer) values (4, '")).append(a.getString(0x7f0902af)).append("',2,1)").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_method(rowid, name,type,openDrawer) values (5, '")).append(a.getString(0x7f0902b0)).append("',3,1)").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_method(rowid, name,type,openDrawer) values (6, '")).append(a.getString(0x7f0902b1)).append("',4,1)").toString());
        sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_order_discount(reason, isper, amount) values ('")).append(a.getString(0x7f09028e)).append("', 1, 25)").toString());
    }

    public final void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        if (i < 18)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("ALTER TABLE rest_item ADD COLUMN taxId integer");
            sqlitedatabase.execSQL("ALTER TABLE rest_company RENAME TO company_temp ");
            sqlitedatabase.execSQL("CREATE TABLE rest_company ( id interger primary key, name text,logoName text, address1 text, address2 text, tel text, email text, tax1 real, tax1Name text, tax2 real, tax2Name text, includeTax integer, taxNumber text, serviceFee integer, includeService integer, currency text, decimalPlace integer, tip integer, timeIn text, timeOut text)");
            sqlitedatabase.execSQL("insert into  rest_company(id, name, logoName, address1, address2, tel, email, serviceFee, currency, decimalPlace, tip, timeIn, timeOut) select id, name, logoName, address1, address2, tel, email, serviceFee, currency, decimalPlace, tip, timeIn, timeOut from company_temp");
            Cursor cursor2 = sqlitedatabase.query(false, "company_temp", new String[] {
                "tax"
            }, null, null, null, null, null, null);
            if (cursor2.moveToFirst())
            {
                do
                {
                    double d = cursor2.getDouble(0);
                    if (d != 0.0D)
                    {
                        sqlitedatabase.execSQL((new StringBuilder("update  rest_company set tax1 =")).append(d).append(", tax1Name='").append(a.getResources().getString(0x7f090194)).append("'").toString());
                    }
                } while (cursor2.moveToNext());
            }
            cursor2.close();
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
            sqlitedatabase.execSQL("CREATE TABLE rest_company ( id interger primary key, name text,logoName text, address1 text, address2 text, tel text, email text, tax1 real, tax1Name text, tax2 real, tax2Name text, includeTax integer, taxNumber text, serviceFee integer, includeService integer, currency text, decimalPlace integer, tip integer, timeIn text, timeOut text)");
            sqlitedatabase.execSQL("insert into  rest_company(id, name, logoName, address1, address2, tel, email, tax1, tax1Name, tax2, tax2Name, includeTax, serviceFee, currency, decimalPlace, tip, timeIn, timeOut) select id, name, logoName, address1, address2, tel, email,tax1, tax1Name, tax2, tax2Name, includeTax, serviceFee, currency, decimalPlace, tip, timeIn, timeOut from company_temp");
            sqlitedatabase.execSQL("drop table company_temp");
            sqlitedatabase.execSQL("CREATE TABLE rest_price_sechedule ( id integer primary key, name text, startDate text, endDate text, startTime text, endTime text, enable int, isDisAmt int, amtRate real, sun integer, mon integer, tue integer, wed integer, thu integer, fri integer, sat integer, itemIds text)");
            sqlitedatabase.execSQL("ALTER TABLE rest_orderItem ADD COLUMN disAmt real");
            sqlitedatabase.execSQL("ALTER TABLE rest_orderItem ADD COLUMN disName text");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 20)
        {
            c(sqlitedatabase);
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
            sqlitedatabase.execSQL("CREATE TABLE rest_splitBill ( orderid integer, amount real, isPaid integer)");
            if (!a(sqlitedatabase, "rest_orderItem", "categoryName"))
            {
                sqlitedatabase.execSQL("ALTER TABLE rest_orderItem ADD COLUMN categoryName text");
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
            Cursor cursor1 = sqlitedatabase.query(false, "rest_user", new String[] {
                "max(id)"
            }, null, null, null, null, null, null);
            long l = 0L;
            if (cursor1.moveToFirst())
            {
                l = cursor1.getLong(0);
            }
            cursor1.close();
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
            sqlitedatabase.execSQL("ALTER TABLE rest_orderItem ADD COLUMN billId integer default 0");
            sqlitedatabase.execSQL("ALTER TABLE rest_order ADD COLUMN splitType integer default 0");
            sqlitedatabase.execSQL("ALTER TABLE rest_item ADD COLUMN modifierGroupId integer");
            sqlitedatabase.execSQL("CREATE TABLE rest_modifierGroup ( name real, miniNum integer)");
            sqlitedatabase.execSQL("CREATE TABLE rest_modifier ( groupId integer, name text, price real, type integer, qty integer, required integer)");
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
        if (i < 28)
        {
            b(sqlitedatabase);
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
            sqlitedatabase.execSQL("CREATE TABLE rest_printer ( id integer primary key, printerName text, ip text, port integer, model text, connType integer, printType integer, paperWidth integer, commInitial text, commTitleSize text, commCut text,commDrawer text, commBeep text, printNum integer, enable integer, enableTipGuide integer, showCancelItem integer,  enableBeep integer, printSeparate integer, logoName text, header text, footer text, fontSize integer, hostingip text, serviceName text, marginTop integer, marginBottom integer, marginLeft integer, marginRight integer)");
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
            a(sqlitedatabase);
        }
        if (i < 32)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (0,100,1,0)");
            sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (0,101,1,0)");
            sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (0,102,1,0)");
            sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (0,103,1,0)");
            sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (0,200,1,0)");
            sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (0,201,1,0)");
            sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (0,300,1,0)");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 33)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("ALTER TABLE rest_item RENAME TO rest_item_temp");
            sqlitedatabase.execSQL("CREATE TABLE rest_item ( categoryid integer, name text, price real, picture text, background text default '#ffffffff', fontColor text default '#ff000000', description text, printerId integer, sequence integer default 0, tax1Id integer, tax2Id integer, modifierGroupId text, qty integer, isWarn integer,warnQty integer)");
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
            Cursor cursor = sqlitedatabase.rawQuery("select name,address1,address2,tel,logoName from rest_company", null);
            String s;
            String s1;
            if (cursor.moveToFirst())
            {
                s1 = (new StringBuilder()).append(cursor.getString(0)).append("\n").append(cursor.getString(1)).append("\n").append(cursor.getString(2)).append("\n").append(cursor.getString(3)).toString();
                s = cursor.getString(4);
            } else
            {
                s = null;
                s1 = null;
            }
            cursor.close();
            if (s != null)
            {
                sqlitedatabase.execSQL((new StringBuilder("update  rest_printer set logoName ='")).append(s).append("'").toString());
            }
            if (s1 != null)
            {
                sqlitedatabase.execSQL((new StringBuilder("update  rest_printer set header =\"")).append(s1).append("\"").toString());
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
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_type(rowid, name) values (1, '")).append(a.getString(0x7f0902ab)).append("')").toString());
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_type(rowid, name) values (2, '")).append(a.getString(0x7f0902ad)).append("')").toString());
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_type(rowid, name) values (3, '")).append(a.getString(0x7f0902ae)).append("')").toString());
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_type(rowid, name) values (4, '")).append(a.getString(0x7f0902af)).append("')").toString());
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_type(rowid, name) values (5, '")).append(a.getString(0x7f0902b0)).append("')").toString());
            sqlitedatabase.execSQL((new StringBuilder("INSERT INTO rest_payment_type(rowid, name) values (6, '")).append(a.getString(0x7f0902b1)).append("')").toString());
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 40)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("Drop table if exists rest_printer_temp");
            sqlitedatabase.execSQL("ALTER TABLE rest_printer RENAME TO rest_printer_temp");
            sqlitedatabase.execSQL("CREATE TABLE rest_printer ( id integer primary key, printerName text, ip text, port integer, model text, connType integer, printType integer, paperWidth integer, commInitial text, commTitleSize text, commCut text,commDrawer text, commBeep text, printNum integer, enable integer, enableTipGuide integer, showCancelItem integer,  enableBeep integer, printSeparate integer, logoName text, header text, footer text, fontSize integer, hostingip text, serviceName text, marginTop integer, marginBottom integer, marginLeft integer, marginRight integer)");
            sqlitedatabase.execSQL("INSERT INTO rest_printer(id, printerName, ip, port, model, connType, printType, paperWidth, commInitial, commTitleSize, commCut,commDrawer, commBeep, printNum, enable, enableTipGuide, showCancelItem,  enableBeep, printSeparate, logoName, header, footer, fontSize, hostingip, serviceName, marginTop, marginBottom, marginLeft, marginRight) select id, printerName, ip, port, model, connType, printType, paperWidth, commInitial, commTitleSize, commCut,commDrawer, commBeep, printNum, enable, enableTipGuide, showCancelItem,  enableBeep, printSeparate, logoName, header, footer, fontSize, hostingip, serviceName, marginTop, marginBottom, marginLeft, marginRight from rest_printer_temp");
            sqlitedatabase.execSQL("drop table rest_printer_temp");
            sqlitedatabase.execSQL("Drop table if exists rest_cash_register");
            sqlitedatabase.execSQL("CREATE TABLE rest_cash_register (amount real, tranxType integer, date text, time text, note text)");
            sqlitedatabase.execSQL("update  rest_user set password='123456' ");
            sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (0,104,1,0)");
            sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (1,104,1,0)");
            sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (2,104,0,0)");
            sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (3,104,0,0)");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 41)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (0,202,1,0)");
            sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (1,202,1,0)");
            sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (2,202,0,0)");
            sqlitedatabase.execSQL("INSERT INTO rest_role_permission(role, function, isShow, managerPermission) values (3,202,0,0)");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
        }
        if (i < 42)
        {
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("CREATE TABLE rest_order_discount (reason text, isper integer,amount real)");
            sqlitedatabase.execSQL("CREATE TABLE rest_order_note (name text,type integer)");
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
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
            sqlitedatabase.execSQL("CREATE TABLE rest_payment_method (name text,type integer, rounding integer,openDrawer integer)");
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
    }
}
