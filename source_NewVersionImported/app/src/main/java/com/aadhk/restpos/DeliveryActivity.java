// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioButton;
import com.aadhk.restpos.b.e;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.j;
import com.aadhk.restpos.f.k;
import com.aadhk.restpos.f.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            r

public class DeliveryActivity extends Activity
    implements android.view.View.OnClickListener
{

    private EditText a;
    private EditText b;
    private EditText c;
    private EditText d;
    private EditText e;
    private AutoCompleteTextView f;
    private RadioButton g;
    private RadioButton h;
    private Button i;
    private Button j;
    private ImageView k;
    private e l;
    private SQLiteDatabase m;
    private l n;
    private String o;
    private List p;

    public DeliveryActivity()
    {
    }

    static void a(DeliveryActivity deliveryactivity, String s)
    {
        deliveryactivity.a(s);
    }

    private void a(String s)
    {
        Customer customer = l.b(s);
        if (customer != null)
        {
            a.setText(customer.getName());
            b.setText(customer.getAddress1());
            c.setText(customer.getAddress2());
            d.setText(customer.getAddress3());
            e.setText(customer.getEmail());
        }
    }

    private boolean a()
    {
        if (f.getText().toString().equals(""))
        {
            f.setError(getResources().getString(0x7f090055));
            f.requestFocus();
            return false;
        } else
        {
            f.setError(null);
            return true;
        }
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 3: default 40
    //                   2131427406: 41
    //                   2131427414: 63
    //                   2131427415: 667;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L2:
        if (a())
        {
            a(f.getText().toString());
            return;
        }
          goto _L1
_L3:
        Customer customer;
        Order order;
        String s;
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        customer = new Customer();
        order = new Order();
        order.setStartTime(com.aadhk.restpos.f.i.c());
        order.setPersonNum(1);
        order.setWaiterName(o);
        String s6;
        String s7;
        String s8;
        String s9;
        String s10;
        boolean flag;
        if (TextUtils.isEmpty(n.r()))
        {
            order.setOrderNum(n.q());
        } else
        {
            order.setOrderNum(com.aadhk.restpos.f.j.f(n.r()));
        }
        s = f.getText().toString();
        s1 = a.getText().toString();
        s2 = e.getText().toString();
        s3 = b.getText().toString();
        s4 = c.getText().toString();
        s5 = d.getText().toString();
        if (!g.isChecked())
        {
            continue; /* Loop/switch isn't completed */
        }
        s6 = f.getText().toString();
        s7 = a.getText().toString();
        s8 = b.getText().toString();
        s9 = c.getText().toString();
        s10 = d.getText().toString();
        if (s6.equals(""))
        {
            f.setError(getResources().getString(0x7f090055));
            f.requestFocus();
            flag = false;
        } else
        {
            f.setError(null);
            if (s7.equals(""))
            {
                a.setError(getResources().getString(0x7f090055));
                a.requestFocus();
                flag = false;
            } else
            {
                a.setError(null);
                if (s8.equals(""))
                {
                    b.setError(getResources().getString(0x7f090055));
                    b.requestFocus();
                    flag = false;
                } else
                {
                    b.setError(null);
                    if (s9.equals(""))
                    {
                        c.setError(getResources().getString(0x7f090055));
                        c.requestFocus();
                        flag = false;
                    } else
                    {
                        c.setError(null);
                        if (s10.equals(""))
                        {
                            d.setError(getResources().getString(0x7f090055));
                            d.requestFocus();
                            flag = false;
                        } else
                        {
                            d.setError(null);
                            flag = true;
                        }
                    }
                }
            }
        }
        if (!flag) goto _L1; else goto _L5
_L5:
        customer.setTel(s);
        customer.setEmail(s2);
        customer.setName(s1);
        customer.setAddress1(s3);
        customer.setAddress2(s4);
        customer.setAddress3(s5);
        order.setTableId(-1L);
        order.setTableName(getString(0x7f0900ca));
        com.aadhk.restpos.f.k.a(this, order, customer);
        return;
        if (!h.isChecked() || !a()) goto _L1; else goto _L6
_L6:
        customer.setTel(s);
        customer.setEmail(s2);
        customer.setName(s1);
        customer.setAddress1(s3);
        customer.setAddress2(s4);
        customer.setAddress3(s5);
        order.setTableId(-2L);
        order.setTableName(getString(0x7f0900cb));
        com.aadhk.restpos.f.k.a(this, order, customer);
        return;
_L4:
        finish();
        return;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        setTitle(0x7f0900c5);
        setContentView(0x7f03001c);
        m = com.aadhk.restpos.b.f.a().b();
        l = new e(m);
        n = new l(this);
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            o = bundle1.getString("userAccount");
        }
        k = (ImageView)findViewById(0x7f0b004e);
        f = (AutoCompleteTextView)findViewById(0x7f0b004d);
        a = (EditText)findViewById(0x7f0b004f);
        b = (EditText)findViewById(0x7f0b0050);
        c = (EditText)findViewById(0x7f0b0051);
        d = (EditText)findViewById(0x7f0b0052);
        e = (EditText)findViewById(0x7f0b0053);
        g = (RadioButton)findViewById(0x7f0b0054);
        h = (RadioButton)findViewById(0x7f0b0055);
        i = (Button)findViewById(0x7f0b0056);
        j = (Button)findViewById(0x7f0b0057);
        k.setOnClickListener(this);
        i.setOnClickListener(this);
        j.setOnClickListener(this);
        f.setOnItemClickListener(new r(this));
    }

    protected void onDestroy()
    {
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            finish();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    protected void onResume()
    {
        super.onResume();
        List list = l.a();
        p = new ArrayList();
        Customer customer;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); p.add(customer.getTel()))
        {
            customer = (Customer)iterator.next();
        }

        ArrayAdapter arrayadapter = new ArrayAdapter(this, 0x1090003, p);
        f.setAdapter(arrayadapter);
    }
}
