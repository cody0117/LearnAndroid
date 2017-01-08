// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.app.ProgressDialog;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;

// Referenced classes of package com.aadhk.restpos.c:
//            bn, ax

final class bq extends Handler
{

    final bn a;

    bq(bn bn1)
    {
        a = bn1;
        super();
    }

    public final void handleMessage(Message message)
    {
        super.handleMessage(message);
        bn.e(a).dismiss();
        boolean flag;
        if (message.what != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            Toast.makeText(a.e, 0x7f0901ef, 0).show();
            return;
        } else
        {
            ax ax1 = new ax(a.e);
            ax1.a(0x7f0901f2);
            ax1.show();
            return;
        }
    }
}
