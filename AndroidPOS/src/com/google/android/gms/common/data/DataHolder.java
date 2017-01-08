// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.data;

import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.px;

// Referenced classes of package com.google.android.gms.common.data:
//            g, b, c

public final class DataHolder
    implements SafeParcelable
{

    public static final g CREATOR = new g();
    private static final c l = new b(new String[0]);
    Bundle a;
    int b[];
    int c;
    boolean d;
    private final int e;
    private final String f[];
    private final CursorWindow g[];
    private final int h;
    private final Bundle i;
    private Object j;
    private boolean k;

    DataHolder(int i1, String as[], CursorWindow acursorwindow[], int j1, Bundle bundle)
    {
        d = false;
        k = true;
        e = i1;
        f = as;
        g = acursorwindow;
        h = j1;
        i = bundle;
    }

    private void a(String s, int i1)
    {
        if (a == null || !a.containsKey(s))
        {
            throw new IllegalArgumentException((new StringBuilder("No such column: ")).append(s).toString());
        }
        if (h())
        {
            throw new IllegalArgumentException("Buffer is closed.");
        }
        if (i1 < 0 || i1 >= c)
        {
            throw new CursorIndexOutOfBoundsException(i1, c);
        } else
        {
            return;
        }
    }

    private boolean h()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = d;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    private void i()
    {
        this;
        JVM INSTR monitorenter ;
        if (d) goto _L2; else goto _L1
_L1:
        d = true;
        int i1 = 0;
_L3:
        if (i1 >= g.length)
        {
            break; /* Loop/switch isn't completed */
        }
        g[i1].close();
        i1++;
        if (true) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final int a(int i1)
    {
        int j1 = 0;
        boolean flag;
        if (i1 >= 0 && i1 < c)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        px.a(flag);
        do
        {
label0:
            {
                if (j1 < b.length)
                {
                    if (i1 >= b[j1])
                    {
                        break label0;
                    }
                    j1--;
                }
                if (j1 == b.length)
                {
                    j1--;
                }
                return j1;
            }
            j1++;
        } while (true);
    }

    public final long a(String s, int i1, int j1)
    {
        a(s, i1);
        return g[j1].getLong(i1, a.getInt(s));
    }

    public final void a()
    {
        int i1 = 0;
        a = new Bundle();
        for (int j1 = 0; j1 < f.length; j1++)
        {
            a.putInt(f[j1], j1);
        }

        b = new int[g.length];
        int k1 = 0;
        for (; i1 < g.length; i1++)
        {
            b[i1] = k1;
            int l1 = k1 - g[i1].getStartPosition();
            k1 += g[i1].getNumRows() - l1;
        }

        c = k1;
    }

    public final boolean a(String s)
    {
        return a.containsKey(s);
    }

    final int b()
    {
        return e;
    }

    public final int b(String s, int i1, int j1)
    {
        a(s, i1);
        return g[j1].getInt(i1, a.getInt(s));
    }

    public final String c(String s, int i1, int j1)
    {
        a(s, i1);
        return g[j1].getString(i1, a.getInt(s));
    }

    final String[] c()
    {
        return f;
    }

    public final boolean d(String s, int i1, int j1)
    {
        a(s, i1);
        return Long.valueOf(g[j1].getLong(i1, a.getInt(s))).longValue() == 1L;
    }

    final CursorWindow[] d()
    {
        return g;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final float e(String s, int i1, int j1)
    {
        a(s, i1);
        return g[j1].getFloat(i1, a.getInt(s));
    }

    public final int e()
    {
        return h;
    }

    public final Bundle f()
    {
        return i;
    }

    public final byte[] f(String s, int i1, int j1)
    {
        a(s, i1);
        return g[j1].getBlob(i1, a.getInt(s));
    }

    protected final void finalize()
    {
        if (!k || g.length <= 0 || h())
        {
            break MISSING_BLOCK_LABEL_89;
        }
        if (j != null) goto _L2; else goto _L1
_L1:
        String s1 = (new StringBuilder("internal object: ")).append(toString()).toString();
_L3:
        (new StringBuilder("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (")).append(s1).append(")");
        i();
        return;
_L2:
        String s = j.toString();
        s1 = s;
          goto _L3
        Exception exception;
        exception;
        throw exception;
    }

    public final int g()
    {
        return c;
    }

    public final Uri g(String s, int i1, int j1)
    {
        String s1 = c(s, i1, j1);
        if (s1 == null)
        {
            return null;
        } else
        {
            return Uri.parse(s1);
        }
    }

    public final boolean h(String s, int i1, int j1)
    {
        a(s, i1);
        return g[j1].isNull(i1, a.getInt(s));
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        com.google.android.gms.common.data.g.a(this, parcel, i1);
    }

}
