// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Toast;
import com.aadhk.restpos.PrinterActivity;
import com.aadhk.restpos.b.r;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.f.d;
import com.soundcloud.android.crop.a;
import java.io.File;

public final class y extends Fragment
    implements android.view.View.OnClickListener
{

    private ImageView a;
    private Button b;
    private PrinterActivity c;
    private int d;
    private r e;
    private POSPrinterSetting f;

    public y()
    {
    }

    private void a()
    {
        if (TextUtils.isEmpty(f.getLogoName()))
        {
            b.setVisibility(8);
            a.setImageResource(0x7f020092);
            return;
        } else
        {
            String s = (new StringBuilder()).append(d.b).append("/").append(f.getLogoName()).toString();
            a.setImageDrawable(Drawable.createFromPath(s));
            b.setVisibility(0);
            return;
        }
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        e = c.e();
        f = c.f();
        d = 8 * f.getPaperWidth();
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
        Uri uri1 = Uri.fromFile(new File(d.f));
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
        if (Drawable.createFromPath(d.f) == null) goto _L5; else goto _L6
_L6:
        f.setLogoName("logo.png");
        e.a(f.getId(), f.getLogoName());
        a();
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

        case 2131427664: 
            f.setLogoName("");
            e.a(f.getId(), f.getLogoName());
            File file = new File(d.f);
            if (file.exists())
            {
                file.delete();
            }
            a();
            return;

        case 2131427663: 
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
        View view = layoutinflater.inflate(0x7f03006e, viewgroup, false);
        b = (Button)view.findViewById(0x7f0b0150);
        a = (ImageView)view.findViewById(0x7f0b014f);
        return view;
    }
}
