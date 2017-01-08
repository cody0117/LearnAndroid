// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.wifidirect;

import android.app.Activity;
import android.app.Fragment;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Resources;
import android.net.wifi.p2p.WifiP2pDevice;
import android.net.wifi.p2p.WifiP2pInfo;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.DataTransferService;
import com.aadhk.restpos.WiFiDirectActivity;
import com.aadhk.restpos.g.h;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.wifidirect:
//            f, d, a, b, 
//            c

public class DeviceDetailFragment extends Fragment
    implements android.net.wifi.p2p.WifiP2pManager.ConnectionInfoListener
{

    private static WiFiDirectActivity e;
    ProgressDialog a;
    private View b;
    private WifiP2pDevice c;
    private WifiP2pInfo d;
    private h f;
    private List g;

    public DeviceDetailFragment()
    {
        b = null;
        a = null;
    }

    static WifiP2pDevice a(DeviceDetailFragment devicedetailfragment)
    {
        return devicedetailfragment.c;
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

    static List a(DeviceDetailFragment devicedetailfragment, List list)
    {
        devicedetailfragment.g = list;
        return list;
    }

    static WiFiDirectActivity b()
    {
        return e;
    }

    static List b(DeviceDetailFragment devicedetailfragment)
    {
        return devicedetailfragment.g;
    }

    static h c(DeviceDetailFragment devicedetailfragment)
    {
        return devicedetailfragment.f;
    }

    public final void a()
    {
        (new d(new f(this, (byte)0), e, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public final void a(List list)
    {
        ((TextView)b.findViewById(0x7f0902f9)).setText("Sending: listOrder");
        Intent intent = new Intent(getActivity(), com/aadhk/restpos/DataTransferService);
        intent.setAction("com.android.wifidirect.SEND_DATA");
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("kitchen", (ArrayList)list);
        bundle.putString("go_host", d.groupOwnerAddress.getHostAddress());
        bundle.putInt("go_port", 8988);
        intent.putExtras(bundle);
        getActivity().startService(intent);
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        f = new h(e);
    }

    public void onAttach(Activity activity)
    {
        e = (WiFiDirectActivity)activity;
        super.onAttach(activity);
    }

    public void onConnectionInfoAvailable(WifiP2pInfo wifip2pinfo)
    {
        if (a != null && a.isShowing())
        {
            a.dismiss();
        }
        d = wifip2pinfo;
        e;
        WiFiDirectActivity.a(wifip2pinfo);
        getView().setVisibility(0);
        TextView textview = (TextView)b.findViewById(0x7f0902f6);
        StringBuilder stringbuilder = (new StringBuilder()).append(getResources().getString(0x7f08038b));
        String s;
        if (wifip2pinfo.isGroupOwner)
        {
            s = getResources().getString(0x7f080387);
        } else
        {
            s = getResources().getString(0x7f0800a7);
        }
        textview.setText(stringbuilder.append(s).toString());
        ((TextView)b.findViewById(0x7f0902f5)).setText((new StringBuilder("Group Owner IP - ")).append(wifip2pinfo.groupOwnerAddress.getHostAddress()).toString());
        if (!wifip2pinfo.groupFormed || !wifip2pinfo.isGroupOwner) goto _L2; else goto _L1
_L1:
        (new com.aadhk.restpos.wifidirect.d(getActivity(), b.findViewById(0x7f0902f9))).execute(new Void[0]);
_L4:
        if (wifip2pinfo.isGroupOwner)
        {
            b.findViewById(0x7f0902f3).setVisibility(0);
        }
        b.findViewById(0x7f0902f1).setVisibility(8);
        return;
_L2:
        if (wifip2pinfo.groupFormed)
        {
            e;
            WiFiDirectActivity.a(wifip2pinfo.groupFormed);
            b.findViewById(0x7f0902f3).setVisibility(0);
            ((TextView)b.findViewById(0x7f0902f9)).setText(getResources().getString(0x7f080388));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f0300e3, null);
        b.findViewById(0x7f0902f1).setOnClickListener(new a(this));
        b.findViewById(0x7f0902f2).setOnClickListener(new b(this));
        b.findViewById(0x7f0902f3).setOnClickListener(new c(this));
        return b;
    }
}
