// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.wifidirect;

import android.app.Activity;
import android.content.Context;
import android.net.wifi.p2p.WifiP2pDevice;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.wifidirect:
//            DeviceListFragment

final class h extends ArrayAdapter
{

    final DeviceListFragment a;
    private List b;

    public h(DeviceListFragment devicelistfragment, Context context, List list)
    {
        a = devicelistfragment;
        super(context, 0x7f0300e6, list);
        b = list;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = ((LayoutInflater)a.getActivity().getSystemService("layout_inflater")).inflate(0x7f0300e6, null);
        }
        WifiP2pDevice wifip2pdevice = (WifiP2pDevice)b.get(i);
        if (wifip2pdevice != null)
        {
            TextView textview = (TextView)view.findViewById(0x7f0902fe);
            TextView textview1 = (TextView)view.findViewById(0x7f0902ff);
            if (textview != null)
            {
                textview.setText(wifip2pdevice.deviceName);
            }
            if (textview1 != null)
            {
                textview1.setText(DeviceListFragment.a(wifip2pdevice.status));
            }
        }
        return view;
    }
}
