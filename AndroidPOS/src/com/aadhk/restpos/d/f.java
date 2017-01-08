// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.c.h;
import com.aadhk.product.library.c.j;
import com.aadhk.restpos.CustomerActivity;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.g.c;
import com.bugsense.trace.BugSenseHandler;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            i, g, h

public final class f extends Fragment
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
    private c l;

    public f()
    {
    }

    static Customer a(f f1)
    {
        return f1.k;
    }

    private void a()
    {
        c.setText(k.getName());
        d.setText(k.getAddress1());
        e.setText(k.getAddress2());
        f.setText(k.getAddress3());
        g.setText(k.getTel());
        h.setText(k.getEmail());
    }

    static c b(f f1)
    {
        return f1.l;
    }

    private void b()
    {
        k = new Customer();
        j.setVisibility(8);
        a();
    }

    static CustomerActivity c(f f1)
    {
        return f1.a;
    }

    static void d(f f1)
    {
        f1.b();
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        l = a.c();
        if (k == null)
        {
            b();
            return;
        } else
        {
            j.setVisibility(0);
            a();
            return;
        }
    }

    public final void onAttach(Activity activity)
    {
        a = (CustomerActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 3: default 40
    //                   2131296338: 616
    //                   2131296346: 41
    //                   2131296476: 580;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L3:
        String s = c.getText().toString();
        if (!s.equals("")) goto _L6; else goto _L5
_L5:
        boolean flag;
        c.setError(getString(0x7f080085));
        c.requestFocus();
        flag = false;
_L9:
        String s1;
        String s2;
        String s3;
        Iterator iterator;
        Customer customer;
        if (flag)
        {
            if (k.getId() > 0)
            {
                (new d(new i(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            } else
            {
                (new d(new g(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            }
        }
        if (true) goto _L1; else goto _L6
_L6:
        c.setError(null);
        s1 = d.getText().toString();
        if (!s1.equals("")) goto _L8; else goto _L7
_L7:
        d.setError(getString(0x7f080085));
        d.requestFocus();
        flag = false;
          goto _L9
_L8:
        d.setError(null);
        s2 = e.getText().toString();
        if (!s2.equals("")) goto _L11; else goto _L10
_L10:
        e.setError(getString(0x7f080085));
        e.requestFocus();
        flag = false;
          goto _L9
_L11:
        e.setError(null);
        s3 = g.getText().toString();
        if (!s3.equals("")) goto _L13; else goto _L12
_L12:
        g.setError(getString(0x7f080085));
        g.requestFocus();
        flag = false;
          goto _L9
_L13:
        g.setError(null);
        iterator = a.a().iterator();
_L18:
        if (!iterator.hasNext()) goto _L15; else goto _L14
_L14:
        customer = (Customer)iterator.next();
        if (customer.getId() == k.getId() || !customer.getTel().equals(s3)) goto _L17; else goto _L16
_L16:
        g.setError(getString(0x7f08032e));
        g.requestFocus();
        flag = false;
          goto _L9
_L17:
        g.setError(null);
          goto _L18
_L15:
        String s4 = h.getText().toString();
        if (!s4.equals("") && !com.aadhk.product.library.c.h.a(s4))
        {
            h.setError(getString(0x7f08032f));
            h.requestFocus();
            flag = false;
        } else
        {
            h.setError(null);
            String s5 = f.getText().toString();
            k.setName(s);
            k.setAddress1(s1);
            k.setAddress2(s2);
            k.setAddress3(s5);
            k.setTel(s3);
            k.setEmail(s4);
            flag = true;
        }
          goto _L9
_L4:
        (new d(new com.aadhk.restpos.d.h(this, k.getId()), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
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

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f030078, viewgroup, false);
        c = (EditText)b.findViewById(0x7f090053);
        d = (EditText)b.findViewById(0x7f090054);
        e = (EditText)b.findViewById(0x7f090055);
        f = (EditText)b.findViewById(0x7f090056);
        g = (EditText)b.findViewById(0x7f090051);
        h = (EditText)b.findViewById(0x7f090057);
        EditText edittext = c;
        InputFilter ainputfilter[] = new InputFilter[1];
        ainputfilter[0] = new j();
        edittext.setFilters(ainputfilter);
        i = (Button)b.findViewById(0x7f09005a);
        j = (Button)b.findViewById(0x7f0900dc);
        i.setOnClickListener(this);
        j.setOnClickListener(this);
        return b;
    }
}
