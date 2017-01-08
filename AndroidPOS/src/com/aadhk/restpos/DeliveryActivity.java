// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioButton;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.g.d;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.q;
import com.aadhk.restpos.util.r;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, h, i

public class DeliveryActivity extends POSActivity
    implements android.view.View.OnClickListener
{

    private List A;
    private d B;
    private EditText a;
    private EditText o;
    private EditText p;
    private EditText q;
    private EditText r;
    private AutoCompleteTextView s;
    private RadioButton t;
    private RadioButton u;
    private Button v;
    private Button w;
    private ImageView x;
    private String y;
    private List z;

    public DeliveryActivity()
    {
    }

    static d a(DeliveryActivity deliveryactivity)
    {
        return deliveryactivity.B;
    }

    static List a(DeliveryActivity deliveryactivity, List list)
    {
        deliveryactivity.A = list;
        return list;
    }

    static void a(DeliveryActivity deliveryactivity, String s1)
    {
        deliveryactivity.a(s1);
    }

    private void a(String s1)
    {
        if (A != null && A.size() > 0)
        {
            Iterator iterator = A.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Customer customer = (Customer)iterator.next();
                if (customer.getTel().equals(s1))
                {
                    a.setText(customer.getName());
                    o.setText(customer.getAddress1());
                    p.setText(customer.getAddress2());
                    q.setText(customer.getAddress3());
                    r.setText(customer.getEmail());
                }
            } while (true);
        }
    }

    private boolean a()
    {
        if (s.getText().toString().equals(""))
        {
            s.setError(getString(0x7f080085));
            s.requestFocus();
            return false;
        } else
        {
            s.setError(null);
            return true;
        }
    }

    private Customer b()
    {
        String s1 = s.getText().toString();
        String s2 = a.getText().toString();
        String s3 = o.getText().toString();
        String s4 = p.getText().toString();
        String s5 = q.getText().toString();
        String s6 = r.getText().toString();
        Customer customer = new Customer();
        customer.setTel(s1);
        customer.setName(s2);
        customer.setAddress1(s3);
        customer.setAddress2(s4);
        customer.setAddress3(s5);
        customer.setEmail(s6);
        return customer;
    }

    static List b(DeliveryActivity deliveryactivity)
    {
        return deliveryactivity.A;
    }

    static List b(DeliveryActivity deliveryactivity, List list)
    {
        deliveryactivity.z = list;
        return list;
    }

    static List c(DeliveryActivity deliveryactivity)
    {
        return deliveryactivity.z;
    }

    static AutoCompleteTextView d(DeliveryActivity deliveryactivity)
    {
        return deliveryactivity.s;
    }

    public void onClick(View view)
    {
        boolean flag = false;
        view.getId();
        JVM INSTR lookupswitch 3: default 40
    //                   2131296338: 41
    //                   2131296346: 63
    //                   2131296347: 408;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L2:
        if (a())
        {
            a(s.getText().toString());
            return;
        }
          goto _L1
_L3:
        Order order;
        order = new Order();
        order.setOrderTime(com.aadhk.restpos.util.o.c());
        order.setPersonNum(1);
        order.setWaiterName(y);
        if (!t.isChecked())
        {
            continue; /* Loop/switch isn't completed */
        }
        String s1 = s.getText().toString();
        String s2 = a.getText().toString();
        String s3 = o.getText().toString();
        String s4 = p.getText().toString();
        q.getText();
        if (s1.equals(""))
        {
            s.setError(getString(0x7f080085));
            s.requestFocus();
        } else
        {
            s.setError(null);
            if (s2.equals(""))
            {
                a.setError(getString(0x7f080085));
                a.requestFocus();
                flag = false;
            } else
            {
                a.setError(null);
                if (s3.equals(""))
                {
                    o.setError(getString(0x7f080085));
                    o.requestFocus();
                    flag = false;
                } else
                {
                    o.setError(null);
                    if (s4.equals(""))
                    {
                        p.setError(getString(0x7f080085));
                        p.requestFocus();
                        flag = false;
                    } else
                    {
                        p.setError(null);
                        flag = true;
                    }
                }
            }
        }
        if (!flag) goto _L1; else goto _L5
_L5:
        order.setTableId(-1L);
        order.setTableName(getString(0x7f0800d7));
        com.aadhk.restpos.util.q.b(this, order, b());
        return;
        if (!u.isChecked() || !a()) goto _L1; else goto _L6
_L6:
        order.setTableId(-2L);
        order.setTableName(getString(0x7f0800d8));
        com.aadhk.restpos.util.q.b(this, order, b());
        return;
_L4:
        finish();
        return;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(0x7f0800d2);
        setContentView(0x7f03001d);
        B = new d(this);
        c = new r(this);
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            y = bundle1.getString("userAccount");
        }
        x = (ImageView)findViewById(0x7f090052);
        s = (AutoCompleteTextView)findViewById(0x7f090051);
        a = (EditText)findViewById(0x7f090053);
        o = (EditText)findViewById(0x7f090054);
        p = (EditText)findViewById(0x7f090055);
        q = (EditText)findViewById(0x7f090056);
        r = (EditText)findViewById(0x7f090057);
        t = (RadioButton)findViewById(0x7f090058);
        u = (RadioButton)findViewById(0x7f090059);
        v = (Button)findViewById(0x7f09005a);
        w = (Button)findViewById(0x7f09005b);
        x.setOnClickListener(this);
        v.setOnClickListener(this);
        w.setOnClickListener(this);
        s.setOnItemClickListener(new h(this));
    }

    protected void onDestroy()
    {
        d _tmp = B;
        f.a().c();
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
        (new com.aadhk.product.library.a.d(new i(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
