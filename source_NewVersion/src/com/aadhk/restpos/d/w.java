// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.restpos.ListTableActivity;
import com.aadhk.restpos.LoginActivity;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.t;
import com.aadhk.restpos.b.x;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.f.l;
import com.bugsense.trace.BugSenseHandler;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            x

public final class w extends Fragment
    implements android.view.View.OnClickListener
{

    private l A;
    private String B;
    private View a;
    private LoginActivity b;
    private LinearLayout c;
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
    private Button r;
    private ImageButton s;
    private EditText t;
    private ImageView u;
    private List v;
    private User w;
    private String x;
    private SQLiteDatabase y;
    private x z;

    public w()
    {
    }

    static Button a(w w1)
    {
        return w1.r;
    }

    static Button a(w w1, Button button)
    {
        w1.r = button;
        return button;
    }

    static User a(w w1, User user)
    {
        w1.w = user;
        return user;
    }

    static String a(w w1, String s1)
    {
        w1.B = s1;
        return s1;
    }

    private void a()
    {
        e.setVisibility(8);
        u.setVisibility(0);
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        b = (LoginActivity)activity;
    }

    public final void onClick(View view)
    {
        int i1 = 1;
        view.getId();
        JVM INSTR lookupswitch 13: default 120
    //                   2131427581: 154
    //                   2131427582: 207
    //                   2131427583: 260
    //                   2131427584: 313
    //                   2131427585: 366
    //                   2131427586: 419
    //                   2131427587: 473
    //                   2131427588: 527
    //                   2131427589: 581
    //                   2131427732: 121
    //                   2131427891: 688
    //                   2131427892: 635
    //                   2131427893: 758;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14
_L1:
        return;
_L11:
        t.setText("");
        x = "";
        e.setVisibility(0);
        u.setVisibility(8);
        return;
_L2:
        if (x.length() < 6)
        {
            x = (new StringBuilder()).append(x).append(i1).toString();
            t.setText(x);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (x.length() < 6)
        {
            x = (new StringBuilder()).append(x).append(2).toString();
            t.setText(x);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (x.length() < 6)
        {
            x = (new StringBuilder()).append(x).append(3).toString();
            t.setText(x);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (x.length() < 6)
        {
            x = (new StringBuilder()).append(x).append(4).toString();
            t.setText(x);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (x.length() < 6)
        {
            x = (new StringBuilder()).append(x).append(5).toString();
            t.setText(x);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L7:
        if (x.length() < 6)
        {
            x = (new StringBuilder()).append(x).append(6).toString();
            t.setText(x);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        if (x.length() < 6)
        {
            x = (new StringBuilder()).append(x).append(7).toString();
            t.setText(x);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L9:
        if (x.length() < 6)
        {
            x = (new StringBuilder()).append(x).append(8).toString();
            t.setText(x);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L10:
        if (x.length() < 6)
        {
            x = (new StringBuilder()).append(x).append(9).toString();
            t.setText(x);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L13:
        if (x.length() < 6)
        {
            x = (new StringBuilder()).append(x).append(0).toString();
            t.setText(x);
            a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L12:
        if (x.length() != 0)
        {
            x = x.substring(0, -1 + x.length());
            t.setText(x);
            if (x.length() == 0)
            {
                e.setVisibility(0);
                u.setVisibility(8);
                return;
            }
        }
        if (true) goto _L1; else goto _L14
_L14:
        if (w != null) goto _L16; else goto _L15
_L15:
        Toast.makeText(b, 0x7f090210, 0).show();
        i1 = 0;
_L17:
        if (i1 != 0)
        {
            java.util.Map map = (new t(y)).b(w.getRole());
            ((POSApp)b.getApplicationContext()).a(w, map);
            A.a("pref_user_account", w.getAccount());
            A.a("pref_user_role", w.getRole());
            String s1;
            Intent intent;
            if (A.p())
            {
                A.a(w.getAccount(), w.getPassword());
            } else
            {
                A.a(w.getAccount(), "");
            }
            intent = new Intent();
            intent.setClass(b, com/aadhk/restpos/ListTableActivity);
            intent.setFlags(0x4000000);
            startActivityForResult(intent, 0);
            return;
        }
        if (true) goto _L1; else goto _L16
_L16:
        s1 = t.getText().toString();
        if (s1.equals(""))
        {
            Toast.makeText(b, 0x7f090213, 0).show();
            i1 = 0;
        } else
        if (!s1.equals(w.getPassword()))
        {
            Toast.makeText(b, 0x7f090211, 0).show();
            i1 = 0;
        }
          goto _L17
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        y = com.aadhk.restpos.b.f.a().b();
        z = new x(y);
        A = new l(b);
        B = A.o();
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        a = layoutinflater.inflate(0x7f03006c, viewgroup, false);
        c = (LinearLayout)a.findViewById(0x7f0b0148);
        g = (Button)a.findViewById(0x7f0b00fd);
        h = (Button)a.findViewById(0x7f0b00fe);
        i = (Button)a.findViewById(0x7f0b00ff);
        j = (Button)a.findViewById(0x7f0b0100);
        k = (Button)a.findViewById(0x7f0b0101);
        l = (Button)a.findViewById(0x7f0b0102);
        m = (Button)a.findViewById(0x7f0b0103);
        n = (Button)a.findViewById(0x7f0b0104);
        o = (Button)a.findViewById(0x7f0b0105);
        p = (Button)a.findViewById(0x7f0b0234);
        s = (ImageButton)a.findViewById(0x7f0b0233);
        q = (Button)a.findViewById(0x7f0b0235);
        t = (EditText)a.findViewById(0x7f0b00f0);
        u = (ImageView)a.findViewById(0x7f0b0194);
        e = (TextView)a.findViewById(0x7f0b0232);
        d = (TextView)a.findViewById(0x7f0b014b);
        f = (TextView)a.findViewById(0x7f0b0149);
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
        u.setOnClickListener(this);
        if (!A.i())
        {
            f.setVisibility(8);
        }
        String s1 = "1.0.0";
        String s2;
        try
        {
            s1 = b.getPackageManager().getPackageInfo(b.getPackageName(), 0).versionName;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            BugSenseHandler.sendException(namenotfoundexception);
            namenotfoundexception.printStackTrace();
        }
        s2 = String.format(getString(0x7f090208), new Object[] {
            s1
        });
        d.setText(s2);
        return a;
    }

    public final void onDestroy()
    {
        super.onDestroy();
        com.aadhk.restpos.b.f.a().c();
    }

    public final void onResume()
    {
        super.onResume();
        v = z.a();
        if (TextUtils.isEmpty(B) && v.size() > 0)
        {
            B = ((User)v.get(0)).getAccount();
        }
        c.removeAllViewsInLayout();
        for (int i1 = 0; i1 < v.size(); i1++)
        {
            User user = (User)v.get(i1);
            View view = b.getLayoutInflater().inflate(0x7f03006d, null);
            Button button = (Button)view.findViewById(0x7f0b014c);
            if (i1 == -1 + v.size())
            {
                view.findViewById(0x7f0b014d).setVisibility(8);
            }
            button.setText(user.getAccount());
            c.addView(view);
            if (i1 == 0)
            {
                r = button;
            }
            if (user.getAccount().equals(B))
            {
                w = user;
                r.setTextColor(0xff000000);
                r.setTypeface(Typeface.DEFAULT);
                r.setTextSize(18F);
                button.setTextColor(getResources().getColor(0x7f080073));
                button.setTypeface(Typeface.DEFAULT_BOLD);
                button.setTextSize(22F);
                r = button;
            }
            button.setOnClickListener(new com.aadhk.restpos.d.x(this, user, button));
        }

        if (w == null)
        {
            r.performClick();
        }
        if (w != null && w.getAccount().equals(B) && A.p())
        {
            e.setVisibility(8);
            u.setVisibility(0);
            x = A.b(w.getAccount());
        } else
        {
            x = "";
        }
        if (TextUtils.isEmpty(x))
        {
            e.setVisibility(0);
            u.setVisibility(8);
            t.setText("");
            x = "";
            return;
        } else
        {
            t.setText(x);
            return;
        }
    }
}
