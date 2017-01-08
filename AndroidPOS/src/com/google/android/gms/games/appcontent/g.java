// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.pt;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            h, l, i, j, 
//            k

public final class g
{

    public static ArrayList a(DataHolder dataholder, ArrayList arraylist, String s, int i1)
    {
        ArrayList arraylist1 = new ArrayList();
        a(dataholder, 1, s, "action_id", i1, ((l) (new h(arraylist1))), arraylist);
        return arraylist1;
    }

    private static void a(DataHolder dataholder, int i1, String s, String s1, int j1, l l1, ArrayList arraylist)
    {
        DataHolder dataholder1;
        String s2;
        dataholder1 = (DataHolder)arraylist.get(i1);
        s2 = dataholder.c(s, j1, dataholder.a(j1));
        if (TextUtils.isEmpty(s2)) goto _L2; else goto _L1
_L1:
        int k1;
        String as[];
        int i2;
        k1 = dataholder1.g();
        as = s2.split(",");
        i2 = 0;
_L11:
        if (i2 >= k1) goto _L2; else goto _L3
_L3:
        String s3 = dataholder1.c(s1, i2, dataholder1.a(i2));
        if (TextUtils.isEmpty(s3)) goto _L5; else goto _L4
_L4:
        int k2;
        int l2;
        int j2;
        if (as != null)
        {
            j2 = as.length;
        } else
        {
            j2 = 0;
        }
        k2 = 0;
_L8:
        if (k2 >= j2)
        {
            break MISSING_BLOCK_LABEL_164;
        }
        if (!pt.a(as[k2], s3)) goto _L7; else goto _L6
_L6:
        l2 = k2;
_L9:
        boolean flag;
        if (l2 >= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            l1.a(arraylist, i2);
        }
_L5:
        i2++;
        continue; /* Loop/switch isn't completed */
_L7:
        k2++;
          goto _L8
        l2 = -1;
          goto _L9
_L2:
        return;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public static ArrayList b(DataHolder dataholder, ArrayList arraylist, String s, int i1)
    {
        ArrayList arraylist1 = new ArrayList();
        a(dataholder, 2, s, "annotation_id", i1, new i(arraylist1), arraylist);
        return arraylist1;
    }

    public static ArrayList c(DataHolder dataholder, ArrayList arraylist, String s, int i1)
    {
        ArrayList arraylist1 = new ArrayList();
        a(dataholder, 4, s, "condition_id", i1, new j(arraylist1), arraylist);
        return arraylist1;
    }

    public static Bundle d(DataHolder dataholder, ArrayList arraylist, String s, int i1)
    {
        Bundle bundle = new Bundle();
        a(dataholder, 3, s, "tuple_id", i1, new k((DataHolder)arraylist.get(3), bundle), arraylist);
        return bundle;
    }
}
