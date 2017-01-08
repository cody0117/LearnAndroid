// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.LoginActivity;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.c.dm;
import com.aadhk.restpos.g.i;
import com.aadhk.restpos.util.r;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos.d:
//            bo, bn, bp

public final class bm extends Fragment
    implements android.view.View.OnClickListener
{

    c a;
    private View b;
    private LoginActivity c;
    private TextView d;
    private TextView e;
    private TextView f;
    private Button g;
    private Button h;
    private Button i;
    private Button j;
    private Button k;
    private Button l;
    private Button m;
    private Button n;
    private Button o;
    private Button p;
    private Button q;
    private TextView r;
    private ImageButton s;
    private EditText t;
    private ImageView u;
    private String v;
    private r w;
    private i x;
    private User y;

    public bm()
    {
        v = "";
        a = new bo(this);
    }

    static User a(bm bm1, User user)
    {
        bm1.y = user;
        return user;
    }

    static i a(bm bm1, i i1)
    {
        bm1.x = i1;
        return i1;
    }

    static r a(bm bm1)
    {
        return bm1.w;
    }

    private void a()
    {
        e.setVisibility(8);
        u.setVisibility(0);
    }

    static LoginActivity b(bm bm1)
    {
        return bm1.c;
    }

    static TextView c(bm bm1)
    {
        return bm1.r;
    }

    static String d(bm bm1)
    {
        return bm1.v;
    }

    static i e(bm bm1)
    {
        return bm1.x;
    }

    static void f(bm bm1)
    {
        ((POSApp)bm1.c.getApplicationContext()).a(bm1.y, bm1.x.a(bm1.y.getRole()));
        bm1.w.a("pref_user_account", bm1.y.getAccount());
        bm1.w.a("pref_user_role", bm1.y.getRole());
        if (bm1.w.q())
        {
            bm1.w.a("pref_user_password", bm1.y.getPassword());
        }
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        x = c.c();
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        c = (LoginActivity)activity;
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        view.getId();
        JVM INSTR lookupswitch 14: default 128
    //                   2131296578: 162
    //                   2131296579: 215
    //                   2131296580: 268
    //                   2131296581: 321
    //                   2131296582: 374
    //                   2131296583: 427
    //                   2131296584: 481
    //                   2131296585: 535
    //                   2131296586: 589
    //                   2131296658: 824
    //                   2131296738: 129
    //                   2131296914: 696
    //                   2131296915: 643
    //                   2131296916: 766;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15
_L1:
        return;
_L12:
        t.setText("");
        v = "";
        e.setVisibility(0);
        u.setVisibility(8);
        return;
_L2:
        if (v.length() < 6)
        {
            v = (new StringBuilder()).append(v).append(1).toString();
            t.setText(v);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (v.length() < 6)
        {
            v = (new StringBuilder()).append(v).append(2).toString();
            t.setText(v);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (v.length() < 6)
        {
            v = (new StringBuilder()).append(v).append(3).toString();
            t.setText(v);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (v.length() < 6)
        {
            v = (new StringBuilder()).append(v).append(4).toString();
            t.setText(v);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (v.length() < 6)
        {
            v = (new StringBuilder()).append(v).append(5).toString();
            t.setText(v);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L7:
        if (v.length() < 6)
        {
            v = (new StringBuilder()).append(v).append(6).toString();
            t.setText(v);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        if (v.length() < 6)
        {
            v = (new StringBuilder()).append(v).append(7).toString();
            t.setText(v);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L9:
        if (v.length() < 6)
        {
            v = (new StringBuilder()).append(v).append(8).toString();
            t.setText(v);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L10:
        if (v.length() < 6)
        {
            v = (new StringBuilder()).append(v).append(9).toString();
            t.setText(v);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L14:
        if (v.length() < 6)
        {
            v = (new StringBuilder()).append(v).append(0).toString();
            t.setText(v);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L13:
        if (v.length() != 0)
        {
            v = v.substring(0, -1 + v.length());
            t.setText(v);
            if (v.length() == 0)
            {
                e.setVisibility(0);
                u.setVisibility(8);
                return;
            }
        }
        if (true) goto _L1; else goto _L15
_L15:
        if (v.equals(""))
        {
            Toast.makeText(c, 0x7f080259, 0).show();
        } else
        {
            flag = true;
        }
        if (flag)
        {
            (new d(a, c)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;
        }
        if (true) goto _L1; else goto _L11
_L11:
        dm dm1 = new dm(c, w.w());
        dm1.setTitle(getString(0x7f08025b));
        dm1.a(new bn(this));
        dm1.show();
        return;
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        w = new r(c);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f030082, viewgroup, false);
        g = (Button)b.findViewById(0x7f090142);
        h = (Button)b.findViewById(0x7f090143);
        i = (Button)b.findViewById(0x7f090144);
        j = (Button)b.findViewById(0x7f090145);
        k = (Button)b.findViewById(0x7f090146);
        l = (Button)b.findViewById(0x7f090147);
        m = (Button)b.findViewById(0x7f090148);
        n = (Button)b.findViewById(0x7f090149);
        o = (Button)b.findViewById(0x7f09014a);
        p = (Button)b.findViewById(0x7f090293);
        s = (ImageButton)b.findViewById(0x7f090292);
        q = (Button)b.findViewById(0x7f090294);
        r = (TextView)b.findViewById(0x7f090192);
        t = (EditText)b.findViewById(0x7f09012c);
        u = (ImageView)b.findViewById(0x7f0901e2);
        e = (TextView)b.findViewById(0x7f090291);
        d = (TextView)b.findViewById(0x7f090194);
        f = (TextView)b.findViewById(0x7f090191);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
        i.setOnClickListener(this);
        j.setOnClickListener(this);
        k.setOnClickListener(this);
        l.setOnClickListener(this);
        m.setOnClickListener(this);
        n.setOnClickListener(this);
        o.setOnClickListener(this);
        p.setOnClickListener(this);
        s.setOnClickListener(this);
        q.setOnClickListener(this);
        r.setOnClickListener(this);
        u.setOnClickListener(this);
        if (!w.j())
        {
            f.setVisibility(8);
        }
        r.setVisibility(8);
        if (w.q())
        {
            v = w.p();
        }
        if (!v.equals(""))
        {
            e.setVisibility(8);
            u.setVisibility(0);
            t.setText(v);
        }
        String s1 = "1.0.0";
        String s2;
        try
        {
            s1 = c.getPackageManager().getPackageInfo(c.getPackageName(), 0).versionName;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            BugSenseHandler.sendException(namenotfoundexception);
            namenotfoundexception.printStackTrace();
        }
        s2 = String.format(getString(0x7f08024e), new Object[] {
            s1
        });
        d.setText(s2);
        return b;
    }

    public final void onResume()
    {
        super.onResume();
        r.setText(0x7f08025d);
        (new d(new bp(this, (byte)0), c, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
