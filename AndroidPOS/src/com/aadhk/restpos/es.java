// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;


// Referenced classes of package com.aadhk.restpos:
//            WiFiDirectActivity

final class es
    implements android.net.wifi.p2p.WifiP2pManager.ActionListener
{

    final WiFiDirectActivity a;

    es(WiFiDirectActivity wifidirectactivity)
    {
        a = wifidirectactivity;
        super();
    }

    public final void onFailure(int i)
    {
        (new StringBuilder("Disconnect failed. Reason :")).append(i);
    }

    public final void onSuccess()
    {
    }
}
