// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.wifidirect;

import android.app.ListFragment;
import android.app.ProgressDialog;
import android.net.wifi.p2p.WifiP2pDevice;
import android.net.wifi.p2p.WifiP2pDeviceList;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.wifidirect:
//            h, g

public class DeviceListFragment extends ListFragment
    implements android.net.wifi.p2p.WifiP2pManager.PeerListListener
{

    ProgressDialog a;
    View b;
    private List c;

    public DeviceListFragment()
    {
        c = new ArrayList();
        a = null;
        b = null;
    }

    static String a(int i)
    {
        (new StringBuilder("Peer status :")).append(i);
        switch (i)
        {
        default:
            return "Unknown";

        case 3: // '\003'
            return "Available";

        case 1: // '\001'
            return "Invited";

        case 0: // '\0'
            return "Connected";

        case 2: // '\002'
            return "Failed";

        case 4: // '\004'
            return "Unavailable";
        }
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        setListAdapter(new h(this, getActivity(), c));
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f0300e4, null);
        return b;
    }

    public void onListItemClick(ListView listview, View view, int i, long l)
    {
        WifiP2pDevice wifip2pdevice = (WifiP2pDevice)getListAdapter().getItem(i);
        ((g)getActivity()).a(wifip2pdevice);
    }

    public void onPeersAvailable(WifiP2pDeviceList wifip2pdevicelist)
    {
        if (a != null && a.isShowing())
        {
            a.dismiss();
        }
        c.clear();
        c.addAll(wifip2pdevicelist.getDeviceList());
        ((h)getListAdapter()).notifyDataSetChanged();
        if (c.size() != 0);
    }
}
