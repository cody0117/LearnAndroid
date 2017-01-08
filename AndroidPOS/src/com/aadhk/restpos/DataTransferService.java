// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
import com.google.gson.Gson;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;

public class DataTransferService extends IntentService
{

    public DataTransferService()
    {
        super("DataTransferService");
    }

    public DataTransferService(String s)
    {
        super(s);
    }

    public static String a(InputStream inputstream, OutputStream outputstream)
    {
        byte abyte0[] = new byte[1024];
_L1:
        int i;
        try
        {
            i = inputstream.read(abyte0);
        }
        catch (IOException ioexception)
        {
            return null;
        }
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        outputstream.write(abyte0, 0, i);
          goto _L1
        outputstream.close();
        inputstream.close();
        return outputstream.toString();
    }

    public static void a(Socket socket, Object obj)
    {
        a(((InputStream) (new ByteArrayInputStream((new Gson()).toJson(obj).getBytes("UTF-8")))), socket.getOutputStream());
    }

    private static void b(Socket socket, Object obj)
    {
        ByteArrayInputStream bytearrayinputstream;
        OutputStream outputstream;
        byte abyte0[];
        bytearrayinputstream = new ByteArrayInputStream(((String)obj).getBytes("UTF-8"));
        outputstream = socket.getOutputStream();
        abyte0 = new byte[1024];
_L1:
        int i;
        try
        {
            i = bytearrayinputstream.read(abyte0);
        }
        catch (IOException ioexception)
        {
            return;
        }
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        outputstream.write(abyte0, 0, i);
          goto _L1
        bytearrayinputstream.close();
        return;
    }

    protected void onHandleIntent(Intent intent)
    {
        if (!intent.getAction().equals("com.android.wifidirect.SEND_DATA")) goto _L2; else goto _L1
_L1:
        java.util.ArrayList arraylist;
        String s2;
        Socket socket1;
        int j;
        arraylist = intent.getExtras().getParcelableArrayList("kitchen");
        s2 = intent.getExtras().getString("go_host");
        socket1 = new Socket();
        j = intent.getExtras().getInt("go_port");
        socket1.bind(null);
        socket1.connect(new InetSocketAddress(s2, j), 5000);
        a(socket1, arraylist);
        if (!socket1.isConnected())
        {
            break MISSING_BLOCK_LABEL_99;
        }
        socket1.close();
_L4:
        return;
        IOException ioexception7;
        ioexception7;
        ioexception7.printStackTrace();
        return;
        IOException ioexception5;
        ioexception5;
        ioexception5.printStackTrace();
        ioexception5.getMessage();
        if (!socket1.isConnected()) goto _L4; else goto _L3
_L3:
        try
        {
            socket1.close();
            return;
        }
        catch (IOException ioexception6)
        {
            ioexception6.printStackTrace();
        }
        return;
        Exception exception1;
        exception1;
        if (socket1.isConnected())
        {
            try
            {
                socket1.close();
            }
            catch (IOException ioexception4)
            {
                ioexception4.printStackTrace();
            }
        }
        throw exception1;
_L2:
        String s;
        String s1;
        Socket socket;
        int i;
        s = intent.getExtras().getString("kitchen");
        s1 = intent.getExtras().getString("go_host");
        socket = new Socket();
        i = intent.getExtras().getInt("go_port");
        socket.bind(null);
        socket.connect(new InetSocketAddress(s1, i), 5000);
        b(socket, s);
        if (socket.isConnected())
        {
            try
            {
                socket.close();
                return;
            }
            catch (IOException ioexception3)
            {
                ioexception3.printStackTrace();
            }
            return;
        }
          goto _L4
        IOException ioexception1;
        ioexception1;
        ioexception1.printStackTrace();
        ioexception1.getMessage();
        if (!socket.isConnected()) goto _L4; else goto _L5
_L5:
        try
        {
            socket.close();
            return;
        }
        catch (IOException ioexception2)
        {
            ioexception2.printStackTrace();
        }
        return;
        Exception exception;
        exception;
        if (socket.isConnected())
        {
            try
            {
                socket.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        throw exception;
    }
}
