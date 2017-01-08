// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;

// Referenced classes of package com.aadhk.restpos:
//            WiFiDirectActivity

final class er
    implements android.net.wifi.p2p.WifiP2pManager.ActionListener
{

    final WiFiDirectActivity a;

    er(WiFiDirectActivity wifidirectactivity)
    {
        a = wifidirectactivity;
        super();
    }

    public final void onFailure(int i)
    {
        Toast.makeText(a, "Connect failed. Retry.", 0).show();
    }

    public final void onSuccess()
    {
    }
}
