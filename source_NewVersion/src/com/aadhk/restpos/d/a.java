// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import com.aadhk.product.library.bean.Currency;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.CompanyActivity;
import com.aadhk.restpos.CurrencyActivity;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.b.c;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.c.cg;
import com.aadhk.restpos.f.n;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos.d:
//            b, c

public final class a extends Fragment
    implements android.view.View.OnClickListener
{

    private ImageView a;
    private ImageView b;
    private EditText c;
    private EditText d;
    private EditText e;
    private EditText f;
    private EditText g;
    private EditText h;
    private Button i;
    private Company j;
    private c k;
    private CompanyActivity l;

    public a()
    {
    }

    static EditText a(a a1)
    {
        return a1.g;
    }

    static EditText b(a a1)
    {
        return a1.h;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        k = new c(l.a());
        j = ((POSApp)l.getApplicationContext()).b();
        c.setText(j.getName());
        d.setText(j.getEmail());
        e.setText(j.getCurrency());
        String s = "";
        if (j.getTax1() != 0.0D)
        {
            s = (new StringBuilder()).append(j.getTax1Name()).append(" ").append(j.getTax1()).append("%").toString();
        }
        if (j.getTax2() != 0.0D)
        {
            (new StringBuilder()).append(s).append(", ").append(j.getTax2Name()).append(" ").append(j.getTax2()).append("%");
        }
        f.setText((new StringBuilder()).append(j.getDecimalPlace()).toString());
        g.setText(j.getTimeIn());
        h.setText(j.getTimeOut());
    }

    public final void onActivityResult(int i1, int j1, Intent intent)
    {
        l;
        if (j1 != -1 || i1 != 10) goto _L2; else goto _L1
_L1:
        Currency currency = (Currency)intent.getExtras().getParcelable("currency");
        e.setText((new StringBuilder()).append(currency.a()).append("(").append(currency.b()).append(")").toString());
_L4:
        return;
_L2:
        if (j1 != -1 || i1 != 2) goto _L4; else goto _L3
_L3:
        android.net.Uri uri = intent.getData();
        if (uri == null) goto _L4; else goto _L5
_L5:
        Cursor cursor2;
        ContentResolver contentresolver = l.getContentResolver();
        Cursor cursor = contentresolver.query(uri, null, null, null, null);
        cursor.moveToFirst();
        String s = cursor.getString(cursor.getColumnIndexOrThrow("display_name"));
        int k1 = cursor.getInt(cursor.getColumnIndex("_id"));
        c.setText(s);
        cursor.close();
        Cursor cursor1 = contentresolver.query(android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, (new StringBuilder("contact_id = ")).append(k1).toString(), null, null);
        if (cursor1.moveToFirst())
        {
            do
            {
                cursor1.getInt(cursor1.getColumnIndex("data2"));
                cursor1.getString(cursor1.getColumnIndex("data1"));
            } while (cursor1.moveToNext());
        }
        cursor1.close();
        cursor2 = contentresolver.query(android.provider.ContactsContract.CommonDataKinds.Email.CONTENT_URI, null, (new StringBuilder("contact_id = ")).append(k1).toString(), null, null);
        if (!cursor2.moveToFirst()) goto _L7; else goto _L6
_L6:
        String s1;
        int l1;
        s1 = cursor2.getString(cursor2.getColumnIndex("data1"));
        l1 = cursor2.getInt(cursor2.getColumnIndex("data2"));
        if (l1 != 1) goto _L9; else goto _L8
_L8:
        d.setText(s1);
_L12:
        if (cursor2.moveToNext())
        {
            continue; /* Loop/switch isn't completed */
        }
_L7:
        Exception exception;
        cursor2.close();
        return;
_L9:
        if (l1 != 4) goto _L11; else goto _L10
_L10:
        try
        {
            d.setText(s1);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            exception.printStackTrace();
            BugSenseHandler.sendException(exception);
            return;
        }
          goto _L12
_L11:
        if (l1 != 2) goto _L12; else goto _L13
_L13:
        d.setText(s1);
          goto _L12
        if (true) goto _L6; else goto _L14
_L14:
    }

    public final void onAttach(Activity activity)
    {
        l = (CompanyActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        view.getId();
        JVM INSTR lookupswitch 7: default 72
    //                   2131427414: 209
    //                   2131427540: 193
    //                   2131427541: 201
    //                   2131427633: 151
    //                   2131427635: 73
    //                   2131427636: 112
    //                   2131427844: 185;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
        return;
_L6:
        cg cg2 = new cg(l, j.getTimeIn());
        cg2.a(new b(this));
        cg2.show();
        return;
_L7:
        cg cg1 = new cg(l, j.getTimeOut());
        cg1.a(new com.aadhk.restpos.d.c(this));
        cg1.show();
        return;
_L5:
        Intent intent = new Intent();
        intent.setClass(l, com/aadhk/restpos/CurrencyActivity);
        l.startActivityForResult(intent, 10);
        return;
_L8:
        l.b();
        return;
_L3:
        n.a(f);
        return;
_L4:
        n.b(f);
        return;
_L2:
        String s = c.getText().toString();
        String s1 = g.getText().toString();
        String s2 = h.getText().toString();
        String s3 = d.getText().toString();
        String s4 = e.getText().toString();
        String s5 = f.getText().toString();
        if (s.equals(""))
        {
            c.setError(getResources().getString(0x7f090055));
            c.requestFocus();
        } else
        {
            c.setError(null);
            if (s4.equals(""))
            {
                e.setError(getResources().getString(0x7f090055));
                e.requestFocus();
                flag = false;
            } else
            {
                e.setError(null);
                if (s5.equals(""))
                {
                    f.setError(getResources().getString(0x7f090055));
                    f.requestFocus();
                    flag = false;
                } else
                {
                    f.setError(null);
                    if (s3.equals(""))
                    {
                        d.setError(getResources().getString(0x7f090055));
                        d.requestFocus();
                        flag = false;
                    } else
                    if (!com.aadhk.product.library.c.h.a(s3))
                    {
                        d.setError(getResources().getString(0x7f0902d1));
                        d.requestFocus();
                        flag = false;
                    } else
                    {
                        d.setError(null);
                        if (s1.equals(""))
                        {
                            g.setError(getResources().getString(0x7f090055));
                            g.requestFocus();
                            flag = false;
                        } else
                        {
                            g.setError(null);
                            if (s1.equals(""))
                            {
                                g.setError(getResources().getString(0x7f090055));
                                g.requestFocus();
                                flag = false;
                            } else
                            {
                                g.setError(null);
                                if (s2.equals(""))
                                {
                                    h.setError(getResources().getString(0x7f090055));
                                    h.requestFocus();
                                    flag = false;
                                } else
                                {
                                    h.setError(null);
                                    j.setName(s);
                                    j.setEmail(s3);
                                    j.setCurrency(s4);
                                    j.setCurrencySign(com.aadhk.product.library.c.h.b(s4));
                                    j.setDecimalPlace(Integer.parseInt(s5));
                                    j.setTimeIn(s1);
                                    j.setTimeOut(s2);
                                    flag = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        if (flag)
        {
            if (j.getId() > 0)
            {
                k.b(j);
            } else
            {
                k.a(j);
            }
            ((POSApp)l.getApplicationContext()).a(j);
            l.finish();
            return;
        }
        if (true) goto _L1; else goto _L9
_L9:
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        l.setTitle(0x7f090246);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f030061, viewgroup, false);
        c = (EditText)view.findViewById(0x7f0b012f);
        d = (EditText)view.findViewById(0x7f0b0130);
        e = (EditText)view.findViewById(0x7f0b0131);
        f = (EditText)view.findViewById(0x7f0b0132);
        g = (EditText)view.findViewById(0x7f0b0133);
        h = (EditText)view.findViewById(0x7f0b0134);
        a = (ImageView)view.findViewById(0x7f0b00d4);
        b = (ImageView)view.findViewById(0x7f0b00d5);
        i = (Button)view.findViewById(0x7f0b0056);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
        a.setOnClickListener(this);
        b.setOnClickListener(this);
        i.setOnClickListener(this);
        e.setOnClickListener(this);
        return view;
    }
}
