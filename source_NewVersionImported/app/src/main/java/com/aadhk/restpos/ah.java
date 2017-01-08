// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.widget.Toast;
import com.aadhk.restpos.f.l;

// Referenced classes of package com.aadhk.restpos:
//            LoginActivity

final class ah extends BroadcastReceiver
{

    final LoginActivity a;

    ah(LoginActivity loginactivity)
    {
        a = loginactivity;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        if ((new l(context)).t() && !((ConnectivityManager)context.getSystemService("connectivity")).getNetworkInfo(1).isConnected())
        {
            Toast.makeText(context, 0x7f090120, 0).show();
        }
    }
}
