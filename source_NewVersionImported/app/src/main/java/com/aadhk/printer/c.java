// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.printer;

import android.graphics.Bitmap;
import android.util.Base64;
import com.aadhk.product.library.c.i;
import com.google.gson.Gson;
import java.io.ByteArrayOutputStream;
import java.net.URI;
import java.util.ArrayList;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.message.BasicNameValuePair;

// Referenced classes of package com.aadhk.printer:
//            e

public final class c
{

    private static String a = "/WnOPrinterAdapter";
    private static String b = "8080";

    static void a(String s, String s1)
    {
        try
        {
            String s2 = (new URI("http", (new StringBuilder(String.valueOf(s))).append(":").append(b).toString(), (new StringBuilder(String.valueOf(a))).append("/doTestConnect.action").toString(), (new StringBuilder("serviceName=")).append(s1).toString(), null)).toASCIIString();
            (new StringBuilder("testConnect:")).append(s2);
            String s3 = i.b(s2);
            (new StringBuilder("result from server:")).append(s3);
            if (!"1".equals(s3))
            {
                throw new e((new StringBuilder("connect printer adapter fail at ")).append(s1).toString());
            }
        }
        catch (Exception exception)
        {
            throw new e("Printer adapter testConnect error", exception);
        }
    }

    static boolean a(Bitmap bitmap, String s, String s1)
    {
        String s2 = (new StringBuilder("http://")).append(s).append(":").append(b).append(a).append("/doPrint.action").toString();
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 0, bytearrayoutputstream);
        byte abyte0[] = bytearrayoutputstream.toByteArray();
        boolean flag;
        boolean flag1;
        try
        {
            HttpPost httppost = i.a(s2);
            ArrayList arraylist = new ArrayList();
            arraylist.add(new BasicNameValuePair("image", Base64.encodeToString(abyte0, 0)));
            arraylist.add(new BasicNameValuePair("serviceName", s1));
            httppost.setEntity(new UrlEncodedFormEntity(arraylist));
            String s3 = i.a(httppost);
            (new StringBuilder("result from server:")).append(s3);
            flag = "1".equals(s3);
        }
        catch (Exception exception)
        {
            throw new e("Printer adapter print error", exception);
        }
        flag1 = false;
        if (flag)
        {
            flag1 = true;
        }
        return flag1;
    }

    static boolean a(String s, String s1, String s2)
    {
        String s3 = (new StringBuilder("http://")).append(s).append(":").append(b).append(a).append("/doOpenDrawer.action").toString();
        boolean flag;
        boolean flag1;
        try
        {
            HttpPost httppost = i.a(s3);
            ArrayList arraylist = new ArrayList();
            arraylist.add(new BasicNameValuePair("serviceName", s1));
            arraylist.add(new BasicNameValuePair("printerCommand", s2));
            httppost.setEntity(new UrlEncodedFormEntity(arraylist));
            String s4 = i.a(httppost);
            (new StringBuilder("result from server:")).append(s4);
            flag = "1".equals(s4);
        }
        catch (Exception exception)
        {
            throw new e("Printer adapter openDrawer error", exception);
        }
        flag1 = false;
        if (flag)
        {
            flag1 = true;
        }
        return flag1;
    }

    static String[] a(String s)
    {
        String s2;
        String as[];
        try
        {
            String s1 = (new URI("http", (new StringBuilder(String.valueOf(s))).append(":").append(b).toString(), (new StringBuilder(String.valueOf(a))).append("/doGetServiceNames.action").toString(), null, null)).toASCIIString();
            (new StringBuilder("testConnect:")).append(s1);
            s2 = i.b(s1);
            (new StringBuilder("result from server:")).append(s2);
        }
        catch (Exception exception)
        {
            throw new e("Printer adapter getServiceNames error", exception);
        }
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_145;
        }
        if (s2.equals("null"))
        {
            break MISSING_BLOCK_LABEL_145;
        }
        as = (String[])(new Gson()).fromJson(s2, [Ljava/lang/String;);
        return as;
        return null;
    }

}
