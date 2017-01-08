// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.wifidirect;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.aadhk.restpos.KitchenActivity;
import com.aadhk.restpos.WiFiDirectActivity;
import com.aadhk.restpos.util.i;
import com.google.gson.Gson;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.wifidirect:
//            DeviceDetailFragment, e

public final class d extends AsyncTask
{

    private Context a;
    private TextView b;

    public d(Context context, View view)
    {
        a = context;
        b = (TextView)view;
    }

    private static transient String a()
    {
        ServerSocket serversocket;
        Socket socket;
        serversocket = new ServerSocket(8988);
        socket = serversocket.accept();
        String s1 = DeviceDetailFragment.a(socket.getInputStream(), new ByteArrayOutputStream());
        String s = s1;
_L1:
        Exception exception;
        try
        {
            serversocket.close();
        }
        catch (IOException ioexception)
        {
            ioexception.getMessage();
            return null;
        }
        return s;
        exception;
        exception.printStackTrace();
        s = null;
          goto _L1
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a();
    }

    protected final void onPostExecute(Object obj)
    {
        String s = (String)obj;
        if (s != null)
        {
            Gson gson = new Gson();
            if (i.a(s, "tableName"))
            {
                List list = (List)gson.fromJson(s, (new e(this)).getType());
                Intent intent = new Intent(DeviceDetailFragment.b(), com/aadhk/restpos/KitchenActivity);
                Bundle bundle = new Bundle();
                bundle.putParcelableArrayList("kitchen", (ArrayList)list);
                intent.putExtras(bundle);
                DeviceDetailFragment.b().startActivity(intent);
            }
        }
    }

    protected final void onPreExecute()
    {
        b.setText("Opening a server socket");
    }
}
