// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.wifidirect;

import android.app.ProgressDialog;
import android.net.wifi.WpsInfo;
import android.net.wifi.p2p.WifiP2pConfig;
import android.net.wifi.p2p.WifiP2pDevice;
import android.view.View;

// Referenced classes of package com.aadhk.restpos.wifidirect:
//            DeviceDetailFragment, g

final class a
    implements android.view.View.OnClickListener
{

    final DeviceDetailFragment a;

    a(DeviceDetailFragment devicedetailfragment)
    {
        a = devicedetailfragment;
        super();
    }

    public final void onClick(View view)
    {
        WifiP2pConfig wifip2pconfig = new WifiP2pConfig();
        wifip2pconfig.deviceAddress = DeviceDetailFragment.a(a).deviceAddress;
        wifip2pconfig.wps.setup = 0;
        if (a.a != null && a.a.isShowing())
        {
            a.a.dismiss();
        }
        a.a = ProgressDialog.show(a.getActivity(), "Press back to cancel", (new StringBuilder("Connecting to :")).append(DeviceDetailFragment.a(a).deviceAddress).toString(), true, true);
        ((g)a.getActivity()).a(wifip2pconfig);
    }
}
