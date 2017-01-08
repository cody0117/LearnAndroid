// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.os.AsyncTask;
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
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.k;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.bean.KitchenNote;
import com.aadhk.restpos.bean.ModifierGroup;
import com.aadhk.restpos.c.cx;
import com.aadhk.restpos.c.da;
import com.aadhk.restpos.util.c;
import com.aadhk.restpos.util.g;
import com.aadhk.restpos.util.w;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import yuku.ambilwarna.a;

// Referenced classes of package com.aadhk.restpos.d:
//            bx, by, cc, ce, 
//            cb, bz, ca, bv, 
//            bw

public final class bu extends Fragment
    implements android.view.View.OnClickListener
{

    private List A;
    private List B;
    private Company C;
    private Map D;
    private List E;
    private Map F;
    private List G;
    private int H;
    private String I;
    private String J;
    private String K;
    private String L;
    private com.aadhk.restpos.g.k M;
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
    private EditText k;
    private EditText l;
    private EditText m;
    private EditText n;
    private EditText o;
    private EditText p;
    private EditText q;
    private CheckBox r;
    private ImageButton s;
    private ImageButton t;
    private ImageButton u;
    private ImageButton v;
    private Item w;
    private String x[];
    private boolean y[];
    private Map z;

    public bu()
    {
    }

    private int a(int i1)
    {
        int j1 = 0;
        do
        {
label0:
            {
                int k1 = B.size();
                int l1 = 0;
                if (j1 < k1)
                {
                    if (((Integer)B.get(j1)).intValue() != i1)
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

    static Button a(bu bu1)
    {
        return bu1.c;
    }

    static String a(bu bu1, String s1)
    {
        bu1.K = s1;
        return s1;
    }

    private void a()
    {
        int i1 = 0;
        k.setText(w.getName());
        l.setText(com.aadhk.product.library.c.h.c(w.getPrice()));
        r.setChecked(w.isAskPrice());
        m.setText(com.aadhk.product.library.c.h.c(w.getCost()));
        String s1 = (String)z.get(Integer.valueOf(w.getPrinterId()));
        if (TextUtils.isEmpty(s1))
        {
            s1 = getString(0x7f080281);
        }
        n.setText(s1);
        String s2 = "";
        if (w.getTax1Id() == 1)
        {
            s2 = C.getTax1Name();
        }
        String s3;
        if (w.getTax2Id() == 2)
        {
            if (!TextUtils.isEmpty(s2))
            {
                s2 = (new StringBuilder()).append(s2).append(", ").append(C.getTax2Name()).toString();
            } else
            {
                s2 = C.getTax2Name();
            }
        }
        if (w.getTax3Id() == 3)
        {
            if (!TextUtils.isEmpty(s2))
            {
                s2 = (new StringBuilder()).append(s2).append(", ").append(C.getTax3Name()).toString();
            } else
            {
                s2 = C.getTax3Name();
            }
        }
        o.setText(s2);
        s3 = "";
        if (w.getModifierGroupIds() != null)
        {
            String as1[] = w.getModifierGroupIds().trim().split("\\,");
            int j1 = 0;
            while (j1 < as1.length) 
            {
                String s7 = as1[j1];
                if (j1 == 0)
                {
                    s3 = (String)D.get(s7);
                } else
                {
                    s3 = (new StringBuilder()).append(s3).append(", ").append((String)D.get(s7)).toString();
                }
                j1++;
            }
        }
        String s4 = s3;
        String s5 = "";
        if (w.getKitchenNoteGroupIds() != null)
        {
            String as[] = w.getKitchenNoteGroupIds().trim().split("\\,");
            while (i1 < as.length) 
            {
                String s6 = as[i1];
                if (i1 == 0)
                {
                    s5 = (String)F.get(s6);
                } else
                {
                    s5 = (new StringBuilder()).append(s5).append(", ").append((String)F.get(s6)).toString();
                }
                i1++;
            }
        }
        if (TextUtils.isEmpty(s4))
        {
            s4 = getString(0x7f080284);
        }
        if (TextUtils.isEmpty(s5))
        {
            s5 = getString(0x7f0800eb);
        }
        p.setText(s4);
        q.setText(s5);
        c.setBackgroundColor(com.aadhk.restpos.util.c.a(K));
        d.setBackgroundColor(com.aadhk.restpos.util.c.a(L));
        e.setBackgroundColor(com.aadhk.restpos.util.c.a(K));
        e.setTextColor(com.aadhk.restpos.util.c.a(L));
        i.setText(K);
        j.setText(L);
    }

    static Button b(bu bu1)
    {
        return bu1.e;
    }

    static String b(bu bu1, String s1)
    {
        bu1.L = s1;
        return s1;
    }

    static TextView c(bu bu1)
    {
        return bu1.i;
    }

    static Button d(bu bu1)
    {
        return bu1.d;
    }

    static TextView e(bu bu1)
    {
        return bu1.j;
    }

    static EditText f(bu bu1)
    {
        return bu1.n;
    }

    static Item g(bu bu1)
    {
        return bu1.w;
    }

    static List h(bu bu1)
    {
        return bu1.B;
    }

    static Company i(bu bu1)
    {
        return bu1.C;
    }

    static EditText j(bu bu1)
    {
        return bu1.o;
    }

    static com.aadhk.restpos.g.k k(bu bu1)
    {
        return bu1.M;
    }

    static MgrItemActivity l(bu bu1)
    {
        return bu1.a;
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
            s1 = getString(0x7f080284);
        }
        p.setText(s1);
        w.setModifierGroupIds(stringbuilder1.toString());
    }

    public final void b(List list)
    {
        StringBuilder stringbuilder = new StringBuilder();
        StringBuilder stringbuilder1 = new StringBuilder();
        int i1 = 0;
        while (i1 < list.size()) 
        {
            KitchenNote kitchennote = (KitchenNote)list.get(i1);
            if (i1 == 0)
            {
                stringbuilder.append(kitchennote.getName());
                stringbuilder1.append(kitchennote.getId());
            } else
            {
                stringbuilder.append((new StringBuilder(", ")).append(kitchennote.getName()).toString());
                stringbuilder1.append((new StringBuilder(",")).append(kitchennote.getId()).toString());
            }
            i1++;
        }
        String s1 = stringbuilder.toString();
        if (TextUtils.isEmpty(s1))
        {
            s1 = getString(0x7f0800eb);
        }
        q.setText(s1);
        w.setKitchenNoteGroupIds(stringbuilder1.toString());
    }

    public final void onActivityCreated(Bundle bundle)
    {
        boolean flag = true;
        super.onActivityCreated(bundle);
        M = a.m();
        z = a.j();
        A = a.k();
        B = a.l();
        D = a.f();
        if (D == null)
        {
            D = new LinkedHashMap();
        }
        E = new ArrayList(D.values());
        E.add(0, getString(0x7f080284));
        F = a.g();
        if (F == null)
        {
            F = new LinkedHashMap();
        }
        G = new ArrayList(F.values());
        G.add(0, getString(0x7f0800eb));
        ArrayList arraylist;
        boolean aflag[];
        boolean flag1;
        boolean flag2;
        if (w == null)
        {
            w = new Item();
            h.setVisibility(8);
        } else
        {
            K = w.getBackground();
            L = w.getFontColor();
            h.setVisibility(0);
        }
        if (K == null)
        {
            K = I;
        }
        if (L == null)
        {
            L = J;
        }
        arraylist = new ArrayList();
        if (!TextUtils.isEmpty(C.getTax1Name()))
        {
            arraylist.add(C.getTax1Name());
        }
        if (!TextUtils.isEmpty(C.getTax2Name()))
        {
            arraylist.add(C.getTax2Name());
        }
        if (!TextUtils.isEmpty(C.getTax3Name()))
        {
            arraylist.add(C.getTax3Name());
        }
        x = (String[])arraylist.toArray(new String[arraylist.size()]);
        aflag = new boolean[3];
        if (w.getTax1Id() == flag)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        aflag[0] = flag1;
        if (w.getTax2Id() == 2)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        aflag[flag] = flag2;
        if (w.getTax3Id() != 3)
        {
            flag = false;
        }
        aflag[2] = flag;
        y = aflag;
        a();
    }

    public final void onAttach(Activity activity)
    {
        a = (MgrItemActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        int i1;
        int j1;
        i1 = 1;
        j1 = 0;
        if (view != c) goto _L2; else goto _L1
_L1:
        bx bx1 = new bx(this);
        android.support.v4.app.FragmentTransaction fragmenttransaction = a.getSupportFragmentManager().beginTransaction();
        a a1 = yuku.ambilwarna.a.a(com.aadhk.restpos.util.c.a(K));
        a1.a(bx1);
        a1.show(fragmenttransaction, "color_picker_dialog");
_L4:
        return;
_L2:
        if (view == d)
        {
            by by1 = new by(this);
            android.support.v4.app.FragmentTransaction fragmenttransaction1 = a.getSupportFragmentManager().beginTransaction();
            a a2 = yuku.ambilwarna.a.a(com.aadhk.restpos.util.c.a(L));
            a2.a(by1);
            a2.show(fragmenttransaction1, "color_picker_dialog");
            return;
        }
        if (view == f)
        {
            K = I;
            L = J;
            c.setBackgroundColor(com.aadhk.restpos.util.c.a(I));
            d.setBackgroundColor(com.aadhk.restpos.util.c.a(J));
            e.setBackgroundColor(com.aadhk.restpos.util.c.a(I));
            e.setTextColor(com.aadhk.restpos.util.c.a(J));
            j.setText(J);
            i.setText(I);
            return;
        }
        if (view != g)
        {
            break; /* Loop/switch isn't completed */
        }
        String s2 = k.getText().toString();
        String s3 = l.getText().toString();
        String s4 = m.getText().toString();
        if ("".equals(s2))
        {
            k.setError(getString(0x7f080085));
            i1 = 0;
        } else
        if ("".equals(s3))
        {
            l.setError(getString(0x7f080085));
            i1 = 0;
        } else
        if ("".equals(s4))
        {
            m.setError(getString(0x7f080085));
            i1 = 0;
        }
        w.setAskPrice(r.isChecked());
        w.setBackground(K);
        w.setFontColor(L);
        w.setName(s2);
        w.setPrice(com.aadhk.product.library.c.h.d(s3));
        w.setCost(com.aadhk.product.library.c.h.d(s4));
        if (i1 != 0)
        {
            if (w.getId() == 0L)
            {
                w.setCategoryId(a.i());
                List list = a.c();
                if (list.size() > 0)
                {
                    w.setSequence(1 + ((Item)list.get(0)).getSequence());
                }
                (new d(new cc(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            } else
            {
                (new d(new ce(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (view == h)
        {
            com.aadhk.restpos.c.d d1 = new com.aadhk.restpos.c.d(a);
            String s1 = getString(0x7f0802f7);
            Object aobj[] = new Object[i1];
            aobj[0] = w.getName();
            d1.setTitle(String.format(s1, aobj));
            d1.a(new cb(this));
            d1.show();
            return;
        }
        if (view == s)
        {
            com.aadhk.restpos.util.w.a(l);
            return;
        }
        if (view == t)
        {
            com.aadhk.restpos.util.w.b(l);
            return;
        }
        if (view == u)
        {
            com.aadhk.restpos.util.w.a(m);
            return;
        }
        if (view == v)
        {
            com.aadhk.restpos.util.w.b(m);
            return;
        }
        if (view == n)
        {
            String as[] = new String[A.size()];
            for (; j1 < A.size(); j1++)
            {
                as[j1] = (String)A.get(j1);
            }

            k k1 = new k(a, as, a(w.getPrinterId()));
            k1.setTitle(0x7f08027f);
            k1.a(new bz(this, as));
            k1.show();
            return;
        }
        if (view == o)
        {
            com.aadhk.product.library.b.h h1 = new com.aadhk.product.library.b.h(a, x, y);
            h1.setTitle(0x7f080280);
            h1.a(new ca(this));
            h1.show();
            return;
        }
        if (view == p)
        {
            da da1 = new da(a, w);
            da1.setTitle(a.getString(0x7f0802c1));
            da1.a(new bv(this));
            da1.show();
            return;
        }
        if (view == q)
        {
            cx cx1 = new cx(a, w);
            cx1.setTitle(a.getString(0x7f0800ec));
            cx1.a(new bw(this));
            cx1.show();
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a.setTitle(0x7f0802bf);
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            w = (Item)bundle1.getParcelable("bundleItem");
        }
        C = ((POSApp)a.getApplicationContext()).b();
        H = C.getDecimalPlace();
        I = getString(0x7f07003b);
        J = getString(0x7f07003c);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f030086, viewgroup, false);
        i = (TextView)b.findViewById(0x7f0901a6);
        j = (TextView)b.findViewById(0x7f0901a8);
        s = (ImageButton)b.findViewById(0x7f0900f4);
        s.setOnClickListener(this);
        t = (ImageButton)b.findViewById(0x7f0900f5);
        t.setOnClickListener(this);
        u = (ImageButton)b.findViewById(0x7f0900f7);
        u.setOnClickListener(this);
        v = (ImageButton)b.findViewById(0x7f0900f8);
        v.setOnClickListener(this);
        c = (Button)b.findViewById(0x7f0901a7);
        c.setOnClickListener(this);
        d = (Button)b.findViewById(0x7f0901a9);
        d.setOnClickListener(this);
        e = (Button)b.findViewById(0x7f0901aa);
        f = (Button)b.findViewById(0x7f0901ab);
        f.setOnClickListener(this);
        g = (Button)b.findViewById(0x7f09005a);
        g.setOnClickListener(this);
        h = (Button)b.findViewById(0x7f0900dc);
        h.setOnClickListener(this);
        k = (EditText)b.findViewById(0x7f0900f2);
        l = (EditText)b.findViewById(0x7f0900f3);
        m = (EditText)b.findViewById(0x7f0900f6);
        n = (EditText)b.findViewById(0x7f0901a4);
        n.setOnClickListener(this);
        o = (EditText)b.findViewById(0x7f0901a5);
        o.setOnClickListener(this);
        p = (EditText)b.findViewById(0x7f0901a2);
        p.setOnClickListener(this);
        q = (EditText)b.findViewById(0x7f0901a3);
        q.setOnClickListener(this);
        r = (CheckBox)b.findViewById(0x7f0901a1);
        EditText edittext = l;
        InputFilter ainputfilter[] = new InputFilter[2];
        ainputfilter[0] = new android.text.InputFilter.LengthFilter(13);
        ainputfilter[1] = new g(H);
        edittext.setFilters(ainputfilter);
        return b;
    }
}
