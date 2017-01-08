// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.b.k;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.b.i;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.b.r;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.bean.ModifierGroup;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.c.g;
import com.aadhk.restpos.f.c;
import com.aadhk.restpos.f.e;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import yuku.ambilwarna.a;

// Referenced classes of package com.aadhk.restpos.d:
//            ad, ab, ac, af, 
//            ae, aa

public final class z extends Fragment
    implements android.view.View.OnClickListener
{

    private String A[];
    private boolean B[];
    private Map C;
    private List D;
    private List E;
    private Company F;
    private Map G;
    private List H;
    private List I;
    private Resources J;
    private n K;
    private i L;
    private int M;
    private String N;
    private String O;
    private String P;
    private String Q;
    private MgrItemActivity a;
    private View b;
    private Button c;
    private Button d;
    private Button e;
    private Button f;
    private Button g;
    private Button h;
    private TextView i;
    private TextView j;
    private TextView k;
    private EditText l;
    private EditText m;
    private EditText n;
    private EditText o;
    private EditText p;
    private EditText q;
    private EditText r;
    private CheckBox s;
    private ImageButton t;
    private ImageButton u;
    private ImageButton v;
    private ImageButton w;
    private ImageButton x;
    private ImageButton y;
    private Item z;

    public z()
    {
    }

    private int a(int i1)
    {
        int j1 = 0;
        do
        {
label0:
            {
                int k1 = E.size();
                int l1 = 0;
                if (j1 < k1)
                {
                    if (((Integer)E.get(j1)).intValue() != i1)
                    {
                        break label0;
                    }
                    l1 = j1 + 1;
                }
                return l1;
            }
            j1++;
        } while (true);
    }

    static TextView a(z z1)
    {
        return z1.i;
    }

    static String a(z z1, String s1)
    {
        z1.P = s1;
        return s1;
    }

    private void a()
    {
        l.setText(z.getName());
        m.setText(com.aadhk.product.library.c.h.c(z.getPrice()));
        String s1 = (String)C.get(Integer.valueOf(z.getPrinterId()));
        if (TextUtils.isEmpty(s1))
        {
            s1 = J.getString(0x7f090230);
        }
        n.setText(s1);
        String s2 = "";
        if (z.getTax1Id() == 1)
        {
            s2 = F.getTax1Name();
        }
        String s3;
        if (z.getTax2Id() == 2)
        {
            if (!TextUtils.isEmpty(s2))
            {
                s2 = (new StringBuilder()).append(s2).append(", ").append(F.getTax2Name()).toString();
            } else
            {
                s2 = F.getTax2Name();
            }
        }
        o.setText(s2);
        s3 = "";
        if (z.getModifierGroupIds() != null)
        {
            String as[] = z.getModifierGroupIds().trim().split("\\,");
            int i1 = 0;
            while (i1 < as.length) 
            {
                String s4 = as[i1];
                if (i1 == 0)
                {
                    s3 = (String)G.get(s4);
                } else
                {
                    s3 = (new StringBuilder()).append(s3).append(", ").append((String)G.get(s4)).toString();
                }
                i1++;
            }
        }
        if (TextUtils.isEmpty(s3))
        {
            s3 = J.getString(0x7f090233);
        }
        p.setText(s3);
        q.setText((new StringBuilder()).append(z.getQty()).toString());
        if (z.isWarn())
        {
            s.setChecked(true);
            i.setTextColor(getResources().getColor(0x7f080061));
            r.setEnabled(true);
            x.setVisibility(0);
            y.setVisibility(0);
        } else
        {
            s.setChecked(false);
            i.setTextColor(getResources().getColor(0x7f08006d));
            r.setEnabled(false);
            x.setVisibility(8);
            y.setVisibility(8);
        }
        r.setText((new StringBuilder()).append(z.getWarnQty()).toString());
        c.setBackgroundColor(com.aadhk.restpos.f.c.a(P));
        d.setBackgroundColor(com.aadhk.restpos.f.c.a(Q));
        e.setBackgroundColor(com.aadhk.restpos.f.c.a(P));
        e.setTextColor(com.aadhk.restpos.f.c.a(Q));
        j.setText(P);
        k.setText(Q);
    }

    static EditText b(z z1)
    {
        return z1.r;
    }

    static String b(z z1, String s1)
    {
        z1.Q = s1;
        return s1;
    }

    private void b()
    {
        String as[] = new String[1 + D.size()];
        as[0] = J.getString(0x7f090230);
        for (int i1 = 0; i1 < D.size(); i1++)
        {
            as[i1 + 1] = (String)D.get(i1);
        }

        k k1 = new k(a, as, a(z.getPrinterId()));
        k1.setTitle(0x7f09022d);
        k1.a(new ad(this, as));
        k1.show();
    }

    static ImageButton c(z z1)
    {
        return z1.x;
    }

    static ImageButton d(z z1)
    {
        return z1.y;
    }

    static Button e(z z1)
    {
        return z1.c;
    }

    static Button f(z z1)
    {
        return z1.e;
    }

    static TextView g(z z1)
    {
        return z1.j;
    }

    static Button h(z z1)
    {
        return z1.d;
    }

    static TextView i(z z1)
    {
        return z1.k;
    }

    static EditText j(z z1)
    {
        return z1.n;
    }

    static Item k(z z1)
    {
        return z1.z;
    }

    static List l(z z1)
    {
        return z1.E;
    }

    static Company m(z z1)
    {
        return z1.F;
    }

    static EditText n(z z1)
    {
        return z1.o;
    }

    static i o(z z1)
    {
        return z1.L;
    }

    static MgrItemActivity p(z z1)
    {
        return z1.a;
    }

    public final void a(List list)
    {
        StringBuilder stringbuilder = new StringBuilder();
        StringBuilder stringbuilder1 = new StringBuilder();
        int i1 = 0;
        while (i1 < list.size()) 
        {
            ModifierGroup modifiergroup = (ModifierGroup)list.get(i1);
            if (i1 == 0)
            {
                stringbuilder.append(modifiergroup.getName());
                stringbuilder1.append(modifiergroup.getId());
            } else
            {
                stringbuilder.append((new StringBuilder(", ")).append(modifiergroup.getName()).toString());
                stringbuilder1.append((new StringBuilder(",")).append(modifiergroup.getId()).toString());
            }
            i1++;
        }
        String s1 = stringbuilder.toString();
        if (TextUtils.isEmpty(s1))
        {
            s1 = J.getString(0x7f090233);
        }
        p.setText(s1);
        z.setModifierGroupIds(stringbuilder1.toString());
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = a.a();
        L = new i(sqlitedatabase);
        K = new n(sqlitedatabase);
        C = (new r(sqlitedatabase)).b();
        D = new ArrayList(C.values());
        E = new ArrayList(C.keySet());
        G = (new com.aadhk.restpos.b.k(sqlitedatabase)).b();
        H = new ArrayList(G.values());
        H.add(0, J.getString(0x7f090233));
        I = new ArrayList(G.keySet());
        ArrayList arraylist;
        boolean aflag[];
        boolean flag;
        int i1;
        boolean flag1;
        if (z == null)
        {
            z = new Item();
            h.setVisibility(8);
        } else
        {
            P = z.getBackground();
            Q = z.getFontColor();
            h.setVisibility(0);
        }
        if (P == null)
        {
            P = N;
        }
        if (Q == null)
        {
            Q = O;
        }
        arraylist = new ArrayList();
        if (!TextUtils.isEmpty(F.getTax1Name()))
        {
            arraylist.add(F.getTax1Name());
        }
        if (!TextUtils.isEmpty(F.getTax2Name()))
        {
            arraylist.add(F.getTax2Name());
        }
        A = (String[])arraylist.toArray(new String[arraylist.size()]);
        aflag = new boolean[2];
        if (z.getTax1Id() == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        aflag[0] = flag;
        i1 = z.getTax2Id();
        flag1 = false;
        if (i1 == 2)
        {
            flag1 = true;
        }
        aflag[1] = flag1;
        B = aflag;
        a();
    }

    public final void onAttach(Activity activity)
    {
        a = (MgrItemActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        if (view == c)
        {
            ab ab1 = new ab(this);
            android.support.v4.app.FragmentTransaction fragmenttransaction = a.getSupportFragmentManager().beginTransaction();
            a a1 = yuku.ambilwarna.a.a(com.aadhk.restpos.f.c.a(P));
            a1.a(ab1);
            a1.show(fragmenttransaction, "color_picker_dialog");
        } else
        {
            if (view == d)
            {
                ac ac1 = new ac(this);
                android.support.v4.app.FragmentTransaction fragmenttransaction1 = a.getSupportFragmentManager().beginTransaction();
                a a2 = yuku.ambilwarna.a.a(com.aadhk.restpos.f.c.a(Q));
                a2.a(ac1);
                a2.show(fragmenttransaction1, "color_picker_dialog");
                return;
            }
            if (view == f)
            {
                P = N;
                Q = O;
                c.setBackgroundColor(com.aadhk.restpos.f.c.a(N));
                d.setBackgroundColor(com.aadhk.restpos.f.c.a(O));
                e.setBackgroundColor(com.aadhk.restpos.f.c.a(N));
                e.setTextColor(com.aadhk.restpos.f.c.a(O));
                k.setText(O);
                j.setText(N);
                return;
            }
            if (view == g)
            {
                String s3 = l.getText().toString();
                String s4 = m.getText().toString();
                com.aadhk.product.library.b.h h1;
                String s1;
                ax ax1;
                g g1;
                String s2;
                Object aobj[];
                boolean flag;
                if ("".equals(s3))
                {
                    l.setError(J.getString(0x7f090055));
                    flag = false;
                } else
                if ("".equals(s4))
                {
                    m.setError(J.getString(0x7f090055));
                    flag = false;
                } else
                {
                    flag = true;
                }
                z.setBackground(P);
                z.setFontColor(Q);
                z.setName(s3);
                z.setPrice(com.aadhk.product.library.c.h.d(s4));
                z.setQty(com.aadhk.product.library.c.h.e(q.getText().toString()));
                if (s.isChecked())
                {
                    z.setWarn(true);
                } else
                {
                    z.setWarn(false);
                }
                z.setWarnQty(com.aadhk.product.library.c.h.e(r.getText().toString()));
                if (flag)
                {
                    if (z.getId() == 0L)
                    {
                        z.setCategoryId(a.g());
                        L.a(z);
                    } else
                    {
                        L.b(z);
                    }
                    a.c();
                    Toast.makeText(a, J.getString(0x7f09023e), 0).show();
                    return;
                }
            }
            while (false) 
            {
                if (view == h)
                {
                    s1 = (new StringBuilder(" b.rowid=")).append(z.getId()).toString();
                    if (K.a(s1))
                    {
                        ax1 = new ax(a);
                        ax1.a(J.getString(0x7f0900be));
                        ax1.show();
                        return;
                    } else
                    {
                        g1 = new g(a);
                        s2 = J.getString(0x7f090298);
                        aobj = new Object[1];
                        aobj[0] = z.getName();
                        g1.setTitle(String.format(s2, aobj));
                        g1.a(new af(this));
                        g1.show();
                        return;
                    }
                }
                if (view == l)
                {
                    l.selectAll();
                    return;
                }
                if (view == m)
                {
                    m.selectAll();
                    return;
                }
                if (view == t)
                {
                    com.aadhk.restpos.f.n.a(m);
                    return;
                }
                if (view == u)
                {
                    com.aadhk.restpos.f.n.b(m);
                    return;
                }
                if (view == v)
                {
                    com.aadhk.restpos.f.n.a(q);
                    return;
                }
                if (view == w)
                {
                    com.aadhk.restpos.f.n.b(q);
                    return;
                }
                if (view == x)
                {
                    com.aadhk.restpos.f.n.a(r);
                    return;
                }
                if (view == y)
                {
                    com.aadhk.restpos.f.n.b(r);
                    return;
                }
                if (view == n)
                {
                    b();
                    return;
                }
                if (view == o)
                {
                    h1 = new com.aadhk.product.library.b.h(a, A, B);
                    h1.setTitle(0x7f09022f);
                    h1.a(new ae(this));
                    h1.show();
                    return;
                }
                if (view == p)
                {
                    a.b(z);
                    return;
                }
            }
        }
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a.setTitle(0x7f090264);
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            z = (Item)bundle1.getParcelable("bundleItem");
        }
        F = ((POSApp)a.getApplicationContext()).b();
        M = F.getDecimalPlace();
        J = getResources();
        N = J.getString(0x7f080039);
        O = J.getString(0x7f08003a);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f03006f, viewgroup, false);
        j = (TextView)b.findViewById(0x7f0b015c);
        k = (TextView)b.findViewById(0x7f0b015e);
        t = (ImageButton)b.findViewById(0x7f0b00d4);
        t.setOnClickListener(this);
        u = (ImageButton)b.findViewById(0x7f0b00d5);
        u.setOnClickListener(this);
        v = (ImageButton)b.findViewById(0x7f0b0156);
        v.setOnClickListener(this);
        w = (ImageButton)b.findViewById(0x7f0b0157);
        w.setOnClickListener(this);
        x = (ImageButton)b.findViewById(0x7f0b015a);
        x.setOnClickListener(this);
        y = (ImageButton)b.findViewById(0x7f0b015b);
        y.setOnClickListener(this);
        c = (Button)b.findViewById(0x7f0b015d);
        c.setOnClickListener(this);
        d = (Button)b.findViewById(0x7f0b015f);
        d.setOnClickListener(this);
        e = (Button)b.findViewById(0x7f0b0160);
        f = (Button)b.findViewById(0x7f0b0161);
        f.setOnClickListener(this);
        g = (Button)b.findViewById(0x7f0b0056);
        g.setOnClickListener(this);
        h = (Button)b.findViewById(0x7f0b00c9);
        h.setOnClickListener(this);
        l = (EditText)b.findViewById(0x7f0b00d2);
        l.setOnClickListener(this);
        m = (EditText)b.findViewById(0x7f0b00d3);
        m.setOnClickListener(this);
        n = (EditText)b.findViewById(0x7f0b0153);
        n.setOnClickListener(this);
        o = (EditText)b.findViewById(0x7f0b0154);
        o.setOnClickListener(this);
        p = (EditText)b.findViewById(0x7f0b0152);
        p.setOnClickListener(this);
        q = (EditText)b.findViewById(0x7f0b0155);
        s = (CheckBox)b.findViewById(0x7f0b0158);
        s.setOnCheckedChangeListener(new aa(this));
        i = (TextView)b.findViewById(0x7f0b0151);
        r = (EditText)b.findViewById(0x7f0b0159);
        q.setSelectAllOnFocus(true);
        r.setSelectAllOnFocus(true);
        l.setSelectAllOnFocus(true);
        m.setSelectAllOnFocus(true);
        EditText edittext = m;
        InputFilter ainputfilter[] = new InputFilter[2];
        ainputfilter[0] = new android.text.InputFilter.LengthFilter(13);
        ainputfilter[1] = new e(M);
        edittext.setFilters(ainputfilter);
        return b;
    }
}
