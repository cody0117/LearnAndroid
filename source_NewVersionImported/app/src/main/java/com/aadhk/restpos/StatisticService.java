// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
import com.aadhk.product.library.c.i;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.bugsense.trace.BugSenseHandler;
import com.google.gson.Gson;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;

public class StatisticService extends IntentService
{

    public StatisticService()
    {
        super("StatisticService");
    }

    protected void onHandleIntent(Intent intent)
    {
        POSPrinterSetting posprintersetting = (POSPrinterSetting)intent.getExtras().getParcelable("bundlePrinter");
        try
        {
            String s = (new Gson()).toJson(posprintersetting);
            String s1 = (new StringBuilder("{\"printerSetting\":")).append(s).append("}").toString();
            HttpPost httppost = i.a("http://42.120.1.40:8080/pos_license/doMbDataPrinter.action");
            StringEntity stringentity = new StringEntity(s1, "UTF-8");
            stringentity.setContentType("application/json");
            httppost.setEntity(stringentity);
            i.a(httppost);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            BugSenseHandler.sendException(exception);
            return;
        }
    }
}
