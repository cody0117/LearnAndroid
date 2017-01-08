// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.CompanyActivity;
import com.aadhk.restpos.CurrencyActivity;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Currency;
import com.aadhk.restpos.c.dr;
import com.aadhk.restpos.util.w;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos.d:
//            b, c, e, d

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
    private CompanyActivity k;
    private com.aadhk.restpos.g.a l;

    public a()
    {
    }

    static Company a(a a1)
    {
        return a1.j;
    }

    static com.aadhk.restpos.g.a b(a a1)
    {
        return a1.l;
    }

    static CompanyActivity c(a a1)
    {
        return a1.k;
    }

    static EditText d(a a1)
    {
        return a1.g;
    }

    static EditText e(a a1)
    {
        return a1.h;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        l = new com.aadhk.restpos.g.a(k);
        j = ((POSApp)k.getApplicationContext()).b();
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
        k;
        if (j1 != -1 || i1 != 10) goto _L2; else goto _L1
_L1:
        Currency currency = (Currency)intent.getExtras().getParcelable("currency");
        e.setText((new StringBuilder()).append(currency.getCode()).append("(").append(currency.getSign()).append(")").toString());
_L4:
        return;
_L2:
        if (j1 != -1 || i1 != 2) goto _L4; else goto _L3
_L3:
        android.net.Uri uri = intent.getData();
        if (uri == null) goto _L4; else goto _L5
_L5:
        Cursor cursor2;
        ContentResolver contentresolver = k.getContentResolver();
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
        k = (CompanyActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 7: default 72
    //                   2131296346: 209
    //                   2131296500: 193
    //                   2131296501: 201
    //                   2131296630: 151
    //                   2131296632: 73
    //                   2131296633: 112
    //                   2131296858: 185;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
        return;
_L6:
        dr dr2 = new dr(k, j.getTimeIn());
        dr2.a(new b(this));
        dr2.show();
        return;
_L7:
        dr dr1 = new dr(k, j.getTimeOut());
        dr1.a(new c(this));
        dr1.show();
        return;
_L5:
        Intent intent = new Intent();
        intent.setClass(k, com/aadhk/restpos/CurrencyActivity);
        k.startActivityForResult(intent, 10);
        return;
_L8:
        k.a();
        return;
_L3:
        w.a(f);
        return;
_L4:
        w.b(f);
        return;
_L2:
        String s = c.getText().toString();
        String s1 = g.getText().toString();
        String s2 = h.getText().toString();
        String s3 = d.getText().toString();
        String s4 = e.getText().toString();
        String s5 = f.getText().toString();
        boolean flag;
        if (s.equals(""))
        {
            c.setError(getResources().getString(0x7f080085));
            c.requestFocus();
            flag = false;
        } else
        {
            c.setError(null);
            if (s4.equals(""))
            {
                e.setError(getString(0x7f080085));
                e.requestFocus();
                flag = false;
            } else
            {
                e.setError(null);
                if (s5.equals(""))
                {
                    f.setError(getString(0x7f080085));
                    f.requestFocus();
                    flag = false;
                } else
                {
                    f.setError(null);
                    if (!s3.equals("") && !com.aadhk.product.library.c.h.a(s3))
                    {
                        d.setError(getString(0x7f08032f));
                        d.requestFocus();
                        flag = false;
                    } else
                    {
                        d.setError(null);
                        if (s1.equals(""))
                        {
                            g.setError(getString(0x7f080085));
                            g.requestFocus();
                            flag = false;
                        } else
                        {
                            g.setError(null);
                            if (s1.equals(""))
                            {
                                g.setError(getString(0x7f080085));
                                g.requestFocus();
                                flag = false;
                            } else
                            {
                                g.setError(null);
                                if (s2.equals(""))
                                {
                                    h.setError(getString(0x7f080085));
                                    h.requestFocus();
                                    flag = false;
                                } else
                                {
                                    h.setError(null);
                                    j.setName(s);
                                    j.setEmail(s3);
                                    j.setCurrency(s4);
                                    j.setCurrencySign(com.aadhk.product.library.c.h.b(s4));
                                    j.setDecimalPlace(com.aadhk.product.library.c.h.e(s5));
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
                (new d(new e(this, (byte)0), k, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            } else
            {
                (new d(new com.aadhk.restpos.d.d(this, (byte)0), k, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            }
        }
        if (true) goto _L1; else goto _L9
_L9:
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        k.setTitle(0x7f0802a2);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f030076, viewgroup, false);
        c = (EditText)view.findViewById(0x7f090174);
        d = (EditText)view.findViewById(0x7f090175);
        e = (EditText)view.findViewById(0x7f090176);
        f = (EditText)view.findViewById(0x7f090177);
        g = (EditText)view.findViewById(0x7f090178);
        h = (EditText)view.findViewById(0x7f090179);
        a = (ImageView)view.findViewById(0x7f0900f4);
        b = (ImageView)view.findViewById(0x7f0900f5);
        i = (Button)view.findViewById(0x7f09005a);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
        a.setOnClickListener(this);
        b.setOnClickListener(this);
        i.setOnClickListener(this);
        e.setOnClickListener(this);
        return view;
    }

    public final void onDestroy()
    {
        com.aadhk.restpos.g.a _tmp = l;
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }
}
