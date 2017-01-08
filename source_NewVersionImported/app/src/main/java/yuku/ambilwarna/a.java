// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package yuku.ambilwarna;

import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;

// Referenced classes of package yuku.ambilwarna:
//            b, AmbilWarnaKotak, i, g, 
//            e, h, c, d

public final class a extends DialogFragment
    implements android.view.View.OnClickListener, android.view.View.OnTouchListener
{

    TextWatcher a;
    private int b;
    private int c;
    private int d;
    private e e;
    private AmbilWarnaKotak f;
    private View g;
    private View h;
    private View i;
    private View j;
    private ImageView k;
    private ImageView l;
    private Button m;
    private Button n;
    private ViewGroup o;
    private EditText p;
    private String q;
    private final float r[] = new float[3];

    public a()
    {
        a = new b(this);
    }

    static EditText a(a a1)
    {
        return a1.p;
    }

    public static a a(int i1)
    {
        a a1 = new a();
        Bundle bundle = new Bundle();
        bundle.putInt("color", i1);
        a1.setArguments(bundle);
        return a1;
    }

    static void a(a a1, String s)
    {
        a1.q = s;
    }

    static String b(a a1)
    {
        return a1.q;
    }

    static float[] c(a a1)
    {
        return a1.r;
    }

    static AmbilWarnaKotak d(a a1)
    {
        return a1.f;
    }

    static float e(a a1)
    {
        return a1.r[0];
    }

    static View f(a a1)
    {
        return a1.j;
    }

    static int g(a a1)
    {
        return Color.HSVToColor(a1.r);
    }

    static View h(a a1)
    {
        return a1.g;
    }

    protected final void a()
    {
        float f1 = (float)h.getMeasuredHeight() - (r[0] * (float)h.getMeasuredHeight()) / 360F;
        float f2;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        if (f1 == (float)h.getMeasuredHeight())
        {
            f2 = 0.0F;
        } else
        {
            f2 = f1;
        }
        layoutparams = (android.widget.RelativeLayout.LayoutParams)k.getLayoutParams();
        layoutparams.leftMargin = (int)((double)h.getLeft() - Math.floor(k.getMeasuredWidth() / 2) - (double)o.getPaddingLeft());
        layoutparams.topMargin = (int)((double)(f2 + (float)h.getTop()) - Math.floor(k.getMeasuredHeight() / 2) - (double)o.getPaddingTop());
        k.setLayoutParams(layoutparams);
    }

    public final void a(e e1)
    {
        e = e1;
    }

    protected final void b()
    {
        float f1 = r[1] * (float)f.getMeasuredWidth();
        float f2 = (1.0F - r[2]) * (float)f.getMeasuredHeight();
        android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)l.getLayoutParams();
        layoutparams.leftMargin = (int)((double)(f1 + (float)f.getLeft()) - Math.floor(l.getMeasuredWidth() / 2) - (double)o.getPaddingLeft());
        layoutparams.topMargin = (int)((double)(f2 + (float)f.getTop()) - Math.floor(l.getMeasuredHeight() / 2) - (double)o.getPaddingTop());
        l.setLayoutParams(layoutparams);
    }

    public final boolean c()
    {
        String s = p.getText().toString();
        boolean flag = s.matches("[0-9a-fA-F]+");
        if (TextUtils.isEmpty(s))
        {
            p.setError(getString(i.c));
            p.requestFocus();
            return false;
        }
        if (!flag)
        {
            p.setError(getString(i.a));
            return false;
        }
        if (s.length() < 3)
        {
            p.setError(getString(i.b));
            return false;
        } else
        {
            p.setError(null);
            return true;
        }
    }

    public final void onClick(View view)
    {
        int i1;
        String s;
        i1 = view.getId();
        s = p.getText().toString();
        if (i1 != g.a) goto _L2; else goto _L1
_L1:
        if (e != null)
        {
            e;
        }
        dismiss();
_L4:
        return;
_L2:
        if (i1 != g.b || e == null || !c()) goto _L4; else goto _L3
_L3:
        String s1;
        String s2;
        s1 = s.substring(0, 2);
        s2 = s.substring(2);
        if (s.startsWith("#")) goto _L6; else goto _L5
_L5:
        if (s.length() != 8) goto _L8; else goto _L7
_L7:
        s = (new StringBuilder("#")).append(s).toString();
_L6:
        e.a(s);
        dismiss();
        return;
_L8:
        if (s.length() == 7)
        {
            s = (new StringBuilder("#")).append(s1).append("0").append(s2).toString();
        } else
        if (s.length() == 6)
        {
            s = (new StringBuilder("#")).append(s1).append("00").append(s2).toString();
        } else
        if (s.length() == 5)
        {
            s = (new StringBuilder("#")).append(s1).append("000").append(s2).toString();
        } else
        if (s.length() == 4)
        {
            s = (new StringBuilder("#")).append(s1).append("0000").append(s2).toString();
        } else
        if (s.length() == 3)
        {
            s = (new StringBuilder("#")).append(s1).append("00000").append(s2).toString();
        } else
        if (s.length() == 2)
        {
            s = (new StringBuilder("#")).append(s1).append("000000").append(s2).toString();
        }
        if (true) goto _L6; else goto _L9
_L9:
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (bundle != null && bundle.containsKey("key_color") && bundle.containsKey("key_theme"))
        {
            b = bundle.getInt("key_color_original");
            c = bundle.getInt("key_color");
            d = bundle.getInt("key_theme");
        } else
        {
            Bundle bundle1 = getArguments();
            b = bundle1.getInt("color");
            c = bundle1.getInt("color");
            d = bundle1.getInt("theme");
        }
        if (android.os.Build.VERSION.SDK_INT <= 10) goto _L2; else goto _L1
_L1:
        if (d != 0x103006f && d != 0x1030073)
        {
            d = 0x103006f;
        }
_L4:
        setStyle(1, d);
        return;
_L2:
        if (d != 0x103000b)
        {
            d = 0x103000b;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = layoutinflater.inflate(h.a, viewgroup, false);
        if (c != 0)
        {
            Color.colorToHSV(c, r);
            h = g.findViewById(g.f);
            f = (AmbilWarnaKotak)g.findViewById(g.g);
            k = (ImageView)g.findViewById(g.c);
            i = g.findViewById(g.i);
            j = g.findViewById(g.h);
            l = (ImageView)g.findViewById(g.d);
            m = (Button)g.findViewById(g.a);
            n = (Button)g.findViewById(g.b);
            o = (ViewGroup)g.findViewById(g.e);
            p = (EditText)g.findViewById(g.j);
            f.a(r[0]);
            i.setBackgroundColor(b);
            j.setBackgroundColor(c);
        }
        if (g != null)
        {
            g.getViewTreeObserver().addOnGlobalLayoutListener(new c(this));
            p.setText(yuku.ambilwarna.d.a(c).replace("#", ""));
            p.setSelection(p.getText().length());
        }
        h.setOnTouchListener(this);
        f.setOnTouchListener(this);
        n.setOnClickListener(this);
        m.setOnClickListener(this);
        p.addTextChangedListener(a);
        return g;
    }

    public final void onSaveInstanceState(Bundle bundle)
    {
        bundle.putInt("key_color_original", b);
        bundle.putInt("key_color", Color.HSVToColor(r));
        bundle.putInt("key_theme", d);
        super.onSaveInstanceState(bundle);
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        if (view.equals(h))
        {
            if (motionevent.getAction() == 2 || motionevent.getAction() == 0 || motionevent.getAction() == 1)
            {
                float f6 = motionevent.getY();
                if (f6 < 0.0F)
                {
                    f6 = 0.0F;
                }
                if (f6 > (float)h.getMeasuredHeight())
                {
                    f6 = (float)h.getMeasuredHeight() - 0.001F;
                }
                float f7 = 360F - f6 * (360F / (float)h.getMeasuredHeight());
                int j1 = f7 != 360F;
                float f8 = 0.0F;
                float f1;
                float f2;
                int i1;
                float f3;
                float f4;
                float f5;
                String s;
                String s1;
                if (j1 != 0)
                {
                    f8 = f7;
                }
                r[0] = f8;
                f.a(r[0]);
                a();
                j.setBackgroundColor(Color.HSVToColor(r));
                s1 = yuku.ambilwarna.d.a(Color.HSVToColor(r));
                (new StringBuilder("strColor 0:")).append(s1);
                p.setText(s1.replace("#", ""));
                p.setSelection(p.getText().length());
                return true;
            }
        } else
        if (view.equals(f) && (motionevent.getAction() == 2 || motionevent.getAction() == 0 || motionevent.getAction() == 1))
        {
            f1 = motionevent.getX();
            f2 = motionevent.getY();
            if (f1 < 0.0F)
            {
                f1 = 0.0F;
            }
            if (f1 > (float)f.getMeasuredWidth())
            {
                f1 = f.getMeasuredWidth();
            }
            i1 = f2 != 0.0F;
            f3 = 0.0F;
            if (i1 >= 0)
            {
                f3 = f2;
            }
            if (f3 > (float)f.getMeasuredHeight())
            {
                f3 = f.getMeasuredHeight();
            }
            f4 = f1 * (1.0F / (float)f.getMeasuredWidth());
            r[1] = f4;
            f5 = 1.0F - f3 * (1.0F / (float)f.getMeasuredHeight());
            r[2] = f5;
            b();
            j.setBackgroundColor(Color.HSVToColor(r));
            s = yuku.ambilwarna.d.a(Color.HSVToColor(r));
            (new StringBuilder("strColor 1:")).append(s);
            p.setText(s.replace("#", ""));
            p.setSelection(p.getText().length());
            return true;
        }
        return false;
    }
}
