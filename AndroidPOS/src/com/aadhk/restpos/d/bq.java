// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Toast;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.PrinterActivity;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.g.u;
import com.aadhk.restpos.util.f;
import com.soundcloud.android.crop.a;
import java.io.File;

// Referenced classes of package com.aadhk.restpos.d:
//            bt, br, bs

public final class bq extends Fragment
    implements android.view.View.OnClickListener
{

    private ImageView a;
    private Button b;
    private PrinterActivity c;
    private int d;
    private POSPrinterSetting e;
    private u f;

    public bq()
    {
    }

    static POSPrinterSetting a(bq bq1)
    {
        return bq1.e;
    }

    private void a()
    {
        if (TextUtils.isEmpty(e.getLogoName()))
        {
            b.setVisibility(8);
            a.setImageResource(0x7f02009e);
            return;
        } else
        {
            (new d(new bt(this, (byte)0), c, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;
        }
    }

    static u b(bq bq1)
    {
        return bq1.f;
    }

    static Button c(bq bq1)
    {
        return bq1.b;
    }

    static ImageView d(bq bq1)
    {
        return bq1.a;
    }

    static PrinterActivity e(bq bq1)
    {
        return bq1.c;
    }

    static void f(bq bq1)
    {
        bq1.a();
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        e = ((POSApp)c.getApplicationContext()).k();
        f = c.e();
        d = 8 * e.getPaperWidth();
        b.setOnClickListener(this);
        a.setOnClickListener(this);
        a();
    }

    public final void onActivityResult(int i, int j, Intent intent)
    {
        if (i != 9162) goto _L2; else goto _L1
_L1:
        c;
        if (j != -1) goto _L2; else goto _L3
_L3:
        Uri uri = intent.getData();
        Uri uri1 = Uri.fromFile(new File(f.f));
        (new a(uri)).a(uri1).a(d, d).a(c);
_L5:
        return;
_L2:
        if (i != 6709) goto _L5; else goto _L4
_L4:
        c;
        if (j != -1)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (Drawable.createFromPath(f.f) == null) goto _L5; else goto _L6
_L6:
        (new d(new br(this, (byte)0), c, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        return;
        if (j != 404) goto _L5; else goto _L7
_L7:
        Toast.makeText(c, com.soundcloud.android.crop.a.a(intent).getMessage(), 1).show();
        return;
    }

    public final void onAttach(Activity activity)
    {
        c = (PrinterActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131296665: 
            (new d(new bs(this, (byte)0), c, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;

        case 2131296664: 
            com.soundcloud.android.crop.a.b(c);
            return;
        }
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f030084, viewgroup, false);
        b = (Button)view.findViewById(0x7f090199);
        a = (ImageView)view.findViewById(0x7f090198);
        return view;
    }
}
