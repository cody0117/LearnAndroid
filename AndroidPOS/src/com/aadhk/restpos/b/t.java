// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.POSPrinterSetting;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class t
{

    private static final String a[] = {
        "id", "ip", "port", "connType", "printType", "paperWidth", "commInitial", "commTitleSize", "commCut", "commDrawer", 
        "commBeep", "printNum", "enable", "enableTipGuide", "printSeparate", "logoName", "header", "footer", "fontSize", "model", 
        "printerName", "hostingIp", "serviceName", "btName", "marginTop", "marginBottom", "marginLeft", "marginRight", "enableBeep", "showCancelItem"
    };
    private final SQLiteDatabase b;

    public t(SQLiteDatabase sqlitedatabase)
    {
        b = sqlitedatabase;
    }

    public final POSPrinterSetting a(int i)
    {
        boolean flag = true;
        Cursor cursor = b.query(false, "rest_printer", a, (new StringBuilder("id=")).append(i).toString(), null, null, null, null, null);
        boolean flag1 = cursor.moveToFirst();
        POSPrinterSetting posprintersetting = null;
        if (flag1)
        {
            posprintersetting = new POSPrinterSetting();
            posprintersetting.setId(i);
            posprintersetting.setIp(cursor.getString(flag));
            posprintersetting.setPort(cursor.getInt(2));
            posprintersetting.setConnType(cursor.getInt(3));
            posprintersetting.setPrintType(cursor.getInt(4));
            posprintersetting.setPaperWidth(cursor.getInt(5));
            posprintersetting.setCommInitial(cursor.getString(6));
            posprintersetting.setCommTitleSize(cursor.getString(7));
            posprintersetting.setCommCut(cursor.getString(8));
            posprintersetting.setCommDrawer(cursor.getString(9));
            posprintersetting.setCommBeep(cursor.getString(10));
            posprintersetting.setPrintNum(cursor.getInt(11));
            boolean flag2;
            boolean flag3;
            boolean flag4;
            if (cursor.getInt(12) != 0)
            {
                flag2 = flag;
            } else
            {
                flag2 = false;
            }
            posprintersetting.setEnable(flag2);
            if (cursor.getInt(13) != 0)
            {
                flag3 = flag;
            } else
            {
                flag3 = false;
            }
            posprintersetting.setEnableTipGuide(flag3);
            if (cursor.getInt(14) != 0)
            {
                flag4 = flag;
            } else
            {
                flag4 = false;
            }
            posprintersetting.setPrintSeparate(flag4);
            posprintersetting.setLogoName(cursor.getString(15));
            posprintersetting.setHeader(cursor.getString(16));
            posprintersetting.setFooter(cursor.getString(17));
            posprintersetting.setFontSize(cursor.getInt(18));
            posprintersetting.setModel(cursor.getString(19));
            posprintersetting.setPrinterName(cursor.getString(20));
            posprintersetting.setHostingIp(cursor.getString(21));
            posprintersetting.setServiceName(cursor.getString(22));
            posprintersetting.setBtName(cursor.getString(23));
            posprintersetting.setMarginTop(cursor.getInt(24));
            posprintersetting.setMarginBottom(cursor.getInt(25));
            posprintersetting.setMarginLeft(cursor.getInt(26));
            posprintersetting.setMarginRight(cursor.getInt(27));
            if (cursor.getInt(28) == 0)
            {
                flag = false;
            }
            posprintersetting.setEnableBeep(flag);
        }
        cursor.close();
        return posprintersetting;
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        Cursor cursor = b.query(false, "rest_printer", new String[] {
            "id", "printerName"
        }, null, null, null, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                hashmap.put(Integer.valueOf(cursor.getInt(0)), cursor.getString(1));
            } while (cursor.moveToNext());
        }
        cursor.close();
        return hashmap;
    }

    public final void a(int i, String s)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("logoName", s);
        b.update("rest_printer", contentvalues, (new StringBuilder("rowid=")).append(i).toString(), null);
    }

    public final void a(POSPrinterSetting posprintersetting)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("ip", posprintersetting.getIp());
        contentvalues.put("port", Integer.valueOf(posprintersetting.getPort()));
        contentvalues.put("connType", Integer.valueOf(posprintersetting.getConnType()));
        contentvalues.put("printType", Integer.valueOf(posprintersetting.getPrintType()));
        contentvalues.put("paperWidth", Integer.valueOf(posprintersetting.getPaperWidth()));
        contentvalues.put("commInitial", posprintersetting.getCommInitial());
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
        contentvalues.put("marginTop", Integer.valueOf(posprintersetting.getMarginTop()));
        contentvalues.put("marginBottom", Integer.valueOf(posprintersetting.getMarginBottom()));
        contentvalues.put("marginLeft", Integer.valueOf(posprintersetting.getMarginLeft()));
        contentvalues.put("marginRight", Integer.valueOf(posprintersetting.getMarginRight()));
        b.update("rest_printer", contentvalues, (new StringBuilder("rowid=")).append(posprintersetting.getId()).toString(), null);
    }

    public final Map b()
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        Cursor cursor = b.query(false, "rest_printer", new String[] {
            "id", "printerName"
        }, "printType=2", null, null, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                linkedhashmap.put(Integer.valueOf(cursor.getInt(0)), cursor.getString(1));
            } while (cursor.moveToNext());
        }
        cursor.close();
        return linkedhashmap;
    }

    public final void b(POSPrinterSetting posprintersetting)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("hostingIp", posprintersetting.getHostingIp());
        contentvalues.put("printType", Integer.valueOf(posprintersetting.getPrintType()));
        contentvalues.put("connType", Integer.valueOf(posprintersetting.getConnType()));
        contentvalues.put("paperWidth", Integer.valueOf(posprintersetting.getPaperWidth()));
        contentvalues.put("enable", Boolean.valueOf(posprintersetting.isEnable()));
        contentvalues.put("enableTipGuide", Boolean.valueOf(posprintersetting.isEnableTipGuide()));
        contentvalues.put("printSeparate", Boolean.valueOf(posprintersetting.isPrintSeparate()));
        contentvalues.put("logoName", posprintersetting.getLogoName());
        contentvalues.put("header", posprintersetting.getHeader());
        contentvalues.put("footer", posprintersetting.getFooter());
        contentvalues.put("fontSize", Integer.valueOf(posprintersetting.getFontSize()));
        contentvalues.put("printerName", posprintersetting.getPrinterName());
        contentvalues.put("serviceName", posprintersetting.getServiceName());
        contentvalues.put("printNum", Integer.valueOf(posprintersetting.getPrintNum()));
        contentvalues.put("marginTop", Integer.valueOf(posprintersetting.getMarginTop()));
        contentvalues.put("marginBottom", Integer.valueOf(posprintersetting.getMarginBottom()));
        contentvalues.put("marginLeft", Integer.valueOf(posprintersetting.getMarginLeft()));
        contentvalues.put("marginRight", Integer.valueOf(posprintersetting.getMarginRight()));
        b.update("rest_printer", contentvalues, (new StringBuilder("rowid=")).append(posprintersetting.getId()).toString(), null);
    }

    public final POSPrinterSetting c()
    {
        boolean flag = true;
        Cursor cursor = b.query(false, "rest_printer", a, "printType=1", null, null, null, null, null);
        boolean flag1 = cursor.moveToFirst();
        POSPrinterSetting posprintersetting = null;
        if (flag1)
        {
            posprintersetting = new POSPrinterSetting();
            posprintersetting.setId(cursor.getInt(0));
            posprintersetting.setIp(cursor.getString(flag));
            posprintersetting.setPort(cursor.getInt(2));
            posprintersetting.setConnType(cursor.getInt(3));
            posprintersetting.setPrintType(cursor.getInt(4));
            posprintersetting.setPaperWidth(cursor.getInt(5));
            posprintersetting.setCommInitial(cursor.getString(6));
            posprintersetting.setCommTitleSize(cursor.getString(7));
            posprintersetting.setCommCut(cursor.getString(8));
            posprintersetting.setCommDrawer(cursor.getString(9));
            posprintersetting.setCommBeep(cursor.getString(10));
            posprintersetting.setPrintNum(cursor.getInt(11));
            boolean flag2;
            boolean flag3;
            boolean flag4;
            if (cursor.getInt(12) != 0)
            {
                flag2 = flag;
            } else
            {
                flag2 = false;
            }
            posprintersetting.setEnable(flag2);
            if (cursor.getInt(13) != 0)
            {
                flag3 = flag;
            } else
            {
                flag3 = false;
            }
            posprintersetting.setEnableTipGuide(flag3);
            if (cursor.getInt(14) != 0)
            {
                flag4 = flag;
            } else
            {
                flag4 = false;
            }
            posprintersetting.setPrintSeparate(flag4);
            posprintersetting.setLogoName(cursor.getString(15));
            posprintersetting.setHeader(cursor.getString(16));
            posprintersetting.setFooter(cursor.getString(17));
            posprintersetting.setFontSize(cursor.getInt(18));
            posprintersetting.setModel(cursor.getString(19));
            posprintersetting.setPrinterName(cursor.getString(20));
            posprintersetting.setHostingIp(cursor.getString(21));
            posprintersetting.setServiceName(cursor.getString(22));
            posprintersetting.setBtName(cursor.getString(23));
            posprintersetting.setMarginTop(cursor.getInt(24));
            posprintersetting.setMarginBottom(cursor.getInt(25));
            posprintersetting.setMarginLeft(cursor.getInt(26));
            posprintersetting.setMarginRight(cursor.getInt(27));
            if (cursor.getInt(28) == 0)
            {
                flag = false;
            }
            posprintersetting.setEnableBeep(flag);
        }
        cursor.close();
        return posprintersetting;
    }

    public final void c(POSPrinterSetting posprintersetting)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("hostingIp", posprintersetting.getHostingIp());
        contentvalues.put("printType", Integer.valueOf(posprintersetting.getPrintType()));
        contentvalues.put("connType", Integer.valueOf(posprintersetting.getConnType()));
        contentvalues.put("paperWidth", Integer.valueOf(posprintersetting.getPaperWidth()));
        contentvalues.put("enable", Boolean.valueOf(posprintersetting.isEnable()));
        contentvalues.put("enableTipGuide", Boolean.valueOf(posprintersetting.isEnableTipGuide()));
        contentvalues.put("printSeparate", Boolean.valueOf(posprintersetting.isPrintSeparate()));
        contentvalues.put("logoName", posprintersetting.getLogoName());
        contentvalues.put("header", posprintersetting.getHeader());
        contentvalues.put("footer", posprintersetting.getFooter());
        contentvalues.put("fontSize", Integer.valueOf(posprintersetting.getFontSize()));
        contentvalues.put("printerName", posprintersetting.getPrinterName());
        contentvalues.put("btName", posprintersetting.getBtName());
        contentvalues.put("printNum", Integer.valueOf(posprintersetting.getPrintNum()));
        contentvalues.put("marginTop", Integer.valueOf(posprintersetting.getMarginTop()));
        contentvalues.put("marginBottom", Integer.valueOf(posprintersetting.getMarginBottom()));
        contentvalues.put("marginLeft", Integer.valueOf(posprintersetting.getMarginLeft()));
        contentvalues.put("marginRight", Integer.valueOf(posprintersetting.getMarginRight()));
        b.update("rest_printer", contentvalues, (new StringBuilder("rowid=")).append(posprintersetting.getId()).toString(), null);
    }

    public final List d()
    {
        ArrayList arraylist = new ArrayList();
        String s = (new StringBuilder()).append(" printType=2").append(" and enable= 1").toString();
        Cursor cursor = b.query(false, "rest_printer", a, s, null, null, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                POSPrinterSetting posprintersetting = new POSPrinterSetting();
                posprintersetting.setId(cursor.getInt(0));
                posprintersetting.setIp(cursor.getString(1));
                posprintersetting.setPort(cursor.getInt(2));
                posprintersetting.setConnType(cursor.getInt(3));
                posprintersetting.setPrintType(cursor.getInt(4));
                posprintersetting.setPaperWidth(cursor.getInt(5));
                posprintersetting.setCommInitial(cursor.getString(6));
                posprintersetting.setCommTitleSize(cursor.getString(7));
                posprintersetting.setCommCut(cursor.getString(8));
                posprintersetting.setCommDrawer(cursor.getString(9));
                posprintersetting.setCommBeep(cursor.getString(10));
                posprintersetting.setPrintNum(cursor.getInt(11));
                boolean flag;
                boolean flag1;
                boolean flag2;
                boolean flag3;
                if (cursor.getInt(12) != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                posprintersetting.setEnable(flag);
                if (cursor.getInt(13) != 0)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                posprintersetting.setEnableTipGuide(flag1);
                if (cursor.getInt(14) != 0)
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                posprintersetting.setPrintSeparate(flag2);
                posprintersetting.setLogoName(cursor.getString(15));
                posprintersetting.setHeader(cursor.getString(16));
                posprintersetting.setFooter(cursor.getString(17));
                posprintersetting.setFontSize(cursor.getInt(18));
                posprintersetting.setModel(cursor.getString(19));
                posprintersetting.setPrinterName(cursor.getString(20));
                posprintersetting.setHostingIp(cursor.getString(21));
                posprintersetting.setServiceName(cursor.getString(22));
                posprintersetting.setBtName(cursor.getString(23));
                posprintersetting.setMarginTop(cursor.getInt(24));
                posprintersetting.setMarginBottom(cursor.getInt(25));
                posprintersetting.setMarginLeft(cursor.getInt(26));
                posprintersetting.setMarginRight(cursor.getInt(27));
                if (cursor.getInt(28) != 0)
                {
                    flag3 = true;
                } else
                {
                    flag3 = false;
                }
                posprintersetting.setEnableBeep(flag3);
                arraylist.add(posprintersetting);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void d(POSPrinterSetting posprintersetting)
    {
        ContentValues contentvalues = new ContentValues();
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
        contentvalues.put("marginTop", Integer.valueOf(posprintersetting.getMarginTop()));
        contentvalues.put("marginBottom", Integer.valueOf(posprintersetting.getMarginBottom()));
        contentvalues.put("marginLeft", Integer.valueOf(posprintersetting.getMarginLeft()));
        contentvalues.put("marginRight", Integer.valueOf(posprintersetting.getMarginRight()));
        b.update("rest_printer", contentvalues, (new StringBuilder("rowid=")).append(posprintersetting.getId()).toString(), null);
    }

}
