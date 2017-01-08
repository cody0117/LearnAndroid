// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

public final class gv extends Fragment
{

    private ImageView a;
    private Bitmap b;

    public gv()
    {
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        Bitmap bitmap = b;
        if (a != null)
        {
            a.setImageBitmap(bitmap);
        }
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            b = (Bitmap)bundle1.getParcelable("bundleBitmap");
        }
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f030096, viewgroup, false);
        a = (ImageView)view.findViewById(0x7f090245);
        return view;
    }
}
