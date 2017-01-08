// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import com.aadhk.product.library.c.h;
import com.aadhk.product.library.c.j;
import com.aadhk.restpos.CustomerActivity;
import com.aadhk.restpos.b.e;
import com.aadhk.restpos.bean.Customer;
import com.bugsense.trace.BugSenseHandler;

public final class d extends Fragment
    implements android.view.View.OnClickListener
{

    private CustomerActivity a;
    private View b;
    private EditText c;
    private EditText d;
    private EditText e;
    private EditText f;
    private EditText g;
    private EditText h;
    private Button i;
    private Button j;
    private Customer k;
    private e l;

    public d()
    {
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        l = new e(a.a());
        if (k == null)
        {
            k = new Customer();
            j.setVisibility(8);
        } else
        {
            j.setVisibility(0);
        }
        c.setText(k.getName());
        d.setText(k.getAddress1());
        e.setText(k.getAddress2());
        f.setText(k.getAddress3());
        g.setText(k.getTel());
        h.setText(k.getEmail());
    }

    public final void onActivityResult(int i1, int j1, Intent intent)
    {
        if (j1 != -1 || i1 != 2) goto _L2; else goto _L1
_L1:
        android.net.Uri uri = intent.getData();
        if (uri == null) goto _L4; else goto _L3
_L3:
        ContentResolver contentresolver;
        int k1;
        Cursor cursor1;
        contentresolver = a.getContentResolver();
        Cursor cursor = contentresolver.query(uri, null, null, null, null);
        cursor.moveToFirst();
        String s = cursor.getString(cursor.getColumnIndexOrThrow("display_name"));
        k1 = cursor.getInt(cursor.getColumnIndex("_id"));
        c.setText(s);
        cursor.close();
        cursor1 = contentresolver.query(android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, (new StringBuilder("contact_id = ")).append(k1).toString(), null, null);
        if (!cursor1.moveToFirst()) goto _L6; else goto _L5
_L5:
        int l1;
        String s1;
        l1 = cursor1.getInt(cursor1.getColumnIndex("data2"));
        s1 = cursor1.getString(cursor1.getColumnIndex("data1"));
        if (l1 != 12 && l1 != 2) goto _L8; else goto _L7
_L7:
        g.setText(s1);
_L24:
        if (cursor1.moveToNext())
        {
            continue; /* Loop/switch isn't completed */
        }
_L6:
        Cursor cursor2;
        cursor1.close();
        cursor2 = contentresolver.query(android.provider.ContactsContract.CommonDataKinds.Email.CONTENT_URI, null, (new StringBuilder("contact_id = ")).append(k1).toString(), null, null);
        if (!cursor2.moveToFirst()) goto _L10; else goto _L9
_L9:
        String s2;
        int i2;
        s2 = cursor2.getString(cursor2.getColumnIndex("data1"));
        i2 = cursor2.getInt(cursor2.getColumnIndex("data2"));
        if (i2 != 1) goto _L12; else goto _L11
_L11:
        h.setText(s2);
_L19:
        if (cursor2.moveToNext()) goto _L9; else goto _L10
_L10:
        Cursor cursor3;
        cursor2.close();
        cursor3 = contentresolver.query(android.provider.ContactsContract.CommonDataKinds.StructuredPostal.CONTENT_URI, null, (new StringBuilder("contact_id = ")).append(k1).toString(), null, null);
        if (!cursor3.moveToFirst()) goto _L14; else goto _L13
_L13:
        String s3;
        String s4;
        String s5;
        int j2;
        s3 = cursor3.getString(cursor3.getColumnIndex("data4"));
        s4 = cursor3.getString(cursor3.getColumnIndex("data7"));
        cursor3.getString(cursor3.getColumnIndex("data8"));
        s5 = cursor3.getString(cursor3.getColumnIndex("data9"));
        j2 = cursor3.getInt(cursor3.getColumnIndex("data2"));
        if (j2 != 1) goto _L16; else goto _L15
_L15:
        d.setText(com.aadhk.product.library.c.h.c(s3));
        e.setText((new StringBuilder()).append(com.aadhk.product.library.c.h.c(s4)).append(" ").append(com.aadhk.product.library.c.h.c(s5)).toString());
_L22:
        if (cursor3.moveToNext()) goto _L13; else goto _L14
_L14:
        cursor3.close();
        return;
_L8:
        if (l1 == 3)
        {
            try
            {
                g.setText(s1);
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                BugSenseHandler.sendException(exception);
                return;
            }
        }
        continue; /* Loop/switch isn't completed */
_L12:
        if (i2 != 4) goto _L18; else goto _L17
_L17:
        h.setText(s2);
          goto _L19
_L18:
        if (i2 != 2) goto _L19; else goto _L20
_L20:
        h.setText(s2);
          goto _L19
_L16:
        if (j2 != 2) goto _L22; else goto _L21
_L21:
        d.setText(com.aadhk.product.library.c.h.c(s3));
        e.setText((new StringBuilder()).append(com.aadhk.product.library.c.h.c(s4)).append(" ").append(com.aadhk.product.library.c.h.c(s5)).toString());
          goto _L22
_L2:
        super.onActivityResult(i1, j1, intent);
_L4:
        return;
        if (true) goto _L24; else goto _L23
_L23:
        if (true) goto _L5; else goto _L25
_L25:
    }

    public final void onAttach(Activity activity)
    {
        a = (CustomerActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        view.getId();
        JVM INSTR lookupswitch 3: default 40
    //                   2131427406: 585
    //                   2131427414: 41
    //                   2131427529: 563;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L3:
        String s = c.getText().toString();
        if (s.equals(""))
        {
            c.setError(getResources().getString(0x7f090055));
            c.requestFocus();
        } else
        {
            c.setError(null);
            String s1 = d.getText().toString();
            if (s1.equals(""))
            {
                d.setError(getResources().getString(0x7f090055));
                d.requestFocus();
                flag = false;
            } else
            {
                d.setError(null);
                String s2 = e.getText().toString();
                if (s2.equals(""))
                {
                    e.setError(getResources().getString(0x7f090055));
                    e.requestFocus();
                    flag = false;
                } else
                {
                    e.setError(null);
                    String s3 = f.getText().toString();
                    if (s3.equals(""))
                    {
                        f.setError(getResources().getString(0x7f090055));
                        f.requestFocus();
                        flag = false;
                    } else
                    {
                        f.setError(null);
                        String s4 = g.getText().toString();
                        if (s4.equals(""))
                        {
                            g.setError(getResources().getString(0x7f090055));
                            g.requestFocus();
                            flag = false;
                        } else
                        {
                            g.setError(null);
                            if (l.a(k.getId(), s4))
                            {
                                g.setError(getResources().getString(0x7f0902d0));
                                g.requestFocus();
                                flag = false;
                            } else
                            {
                                g.setError(null);
                                String s5 = h.getText().toString();
                                if (!s5.equals("") && !com.aadhk.product.library.c.h.a(s5))
                                {
                                    h.setError(getResources().getString(0x7f0902d1));
                                    h.requestFocus();
                                    flag = false;
                                } else
                                {
                                    h.setError(null);
                                    k.setName(s);
                                    k.setAddress1(s1);
                                    k.setAddress2(s2);
                                    k.setAddress3(s3);
                                    k.setTel(s4);
                                    k.setEmail(s5);
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
            if (k.getId() > 0)
            {
                l.b(k);
            } else
            {
                l.a(k);
            }
            a.b();
            return;
        }
          goto _L1
_L4:
        l.a(k.getId());
        a.b();
        return;
_L2:
        try
        {
            a.startActivityForResult(new Intent("android.intent.action.PICK", android.provider.ContactsContract.Contacts.CONTENT_URI), 2);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            activitynotfoundexception.printStackTrace();
            BugSenseHandler.sendException(activitynotfoundexception);
            return;
        }
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            k = (Customer)bundle1.getParcelable("bundleCustomer");
        }
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        if (getArguments() == null)
        {
            menu.removeItem(0x7f0b027f);
        }
        super.onCreateOptionsMenu(menu, menuinflater);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f030063, viewgroup, false);
        c = (EditText)b.findViewById(0x7f0b004f);
        d = (EditText)b.findViewById(0x7f0b0050);
        e = (EditText)b.findViewById(0x7f0b0051);
        f = (EditText)b.findViewById(0x7f0b0052);
        g = (EditText)b.findViewById(0x7f0b004d);
        h = (EditText)b.findViewById(0x7f0b0053);
        EditText edittext = c;
        InputFilter ainputfilter[] = new InputFilter[1];
        ainputfilter[0] = new j();
        edittext.setFilters(ainputfilter);
        i = (Button)b.findViewById(0x7f0b0056);
        j = (Button)b.findViewById(0x7f0b00c9);
        i.setOnClickListener(this);
        j.setOnClickListener(this);
        return b;
    }
}
