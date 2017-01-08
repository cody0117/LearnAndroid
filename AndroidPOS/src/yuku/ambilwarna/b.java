// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package yuku.ambilwarna;

import android.graphics.Color;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;

// Referenced classes of package yuku.ambilwarna:
//            a, AmbilWarnaKotak

final class b
    implements TextWatcher
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public final void afterTextChanged(Editable editable)
    {
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        String s = yuku.ambilwarna.a.a(a).getText().toString();
        if (s.equals(yuku.ambilwarna.a.b(a))) goto _L2; else goto _L1
_L1:
        (new StringBuilder("strColor 3:")).append(s);
        yuku.ambilwarna.a.a(a, s);
        if (!a.c()) goto _L2; else goto _L3
_L3:
        String s1;
        String s2;
        s1 = s.substring(0, 2);
        s2 = s.substring(2);
        if (s.startsWith("#")) goto _L5; else goto _L4
_L4:
        if (s.length() != 8) goto _L7; else goto _L6
_L6:
        s = (new StringBuilder("#")).append(s).toString();
_L5:
        Color.colorToHSV(Color.parseColor(s), yuku.ambilwarna.a.c(a));
        yuku.ambilwarna.a.d(a).a(yuku.ambilwarna.a.e(a));
        a.b();
        yuku.ambilwarna.a.f(a).setBackgroundColor(yuku.ambilwarna.a.g(a));
_L2:
        return;
_L7:
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
        if (true) goto _L5; else goto _L8
_L8:
    }
}
