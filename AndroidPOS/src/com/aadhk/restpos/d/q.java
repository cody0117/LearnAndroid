// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.widget.Toast;
import com.aadhk.product.library.a.a;
import com.aadhk.product.library.a.c;
import com.aadhk.product.library.b.k;
import com.aadhk.product.library.c.e;
import com.aadhk.product.library.d;
import com.aadhk.restpos.DatabaseActivity;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.util.f;
import com.bugsense.trace.BugSenseHandler;
import com.dropbox.client2.DropboxAPI;
import com.dropbox.client2.android.AndroidAuthSession;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

// Referenced classes of package com.aadhk.restpos.d:
//            ac, ad, y, v, 
//            ab, aa, s, z, 
//            r, w, x

public final class q extends PreferenceFragment
    implements android.preference.Preference.OnPreferenceClickListener
{

    c a;
    c b;
    private DatabaseActivity c;
    private DropboxAPI d;
    private e e;
    private Preference f;
    private Preference g;
    private Preference h;
    private Preference i;
    private Preference j;
    private Preference k;
    private Preference l;
    private CheckBoxPreference m;
    private String n;
    private String o;
    private String p;
    private String q;
    private Resources r;
    private String s[];
    private String t[];
    private int u[] = {
        0x7f060007, 0x7f060008
    };
    private int v;

    public q()
    {
        a = new ac(this);
        b = new ad(this);
    }

    static DatabaseActivity a(q q1)
    {
        return q1.c;
    }

    private void a()
    {
        if (!(new File(n)).exists())
        {
            break MISSING_BLOCK_LABEL_157;
        }
        if (Environment.getExternalStorageDirectory().canWrite())
        {
            com.aadhk.product.library.c.f.b(f.e);
            com.aadhk.product.library.c.f.a(n, o);
            if (v == 0)
            {
                bo bo3 = new bo(c);
                bo3.a((new StringBuilder()).append(getString(0x7f080069)).append(o).toString());
                bo3.show();
                return;
            }
            break MISSING_BLOCK_LABEL_183;
        }
        try
        {
            bo bo2 = new bo(c);
            bo2.a((new StringBuilder()).append(getString(0x7f08006a)).append(o).toString());
            bo2.show();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            BugSenseHandler.sendException(exception);
            return;
        }
        bo bo1 = new bo(c);
        bo1.a(getString(0x7f080071));
        bo1.show();
    }

    static void a(q q1, int i1)
    {
        String s1 = q1.c.getDatabasePath("restpos.db").getAbsolutePath();
        InputStream inputstream;
        FileOutputStream fileoutputstream;
        byte abyte0[];
        inputstream = q1.r.openRawResource(i1);
        fileoutputstream = new FileOutputStream(s1);
        abyte0 = new byte[1024];
_L1:
        int j1 = inputstream.read(abyte0);
label0:
        {
            if (j1 <= 0)
            {
                break label0;
            }
            bo bo1;
            try
            {
                fileoutputstream.write(abyte0, 0, j1);
            }
            catch (FileNotFoundException filenotfoundexception)
            {
                Toast.makeText(q1.c, q1.c.getString(0x7f0802f3), 1).show();
                BugSenseHandler.sendException(filenotfoundexception);
                filenotfoundexception.printStackTrace();
                return;
            }
            catch (IOException ioexception)
            {
                Toast.makeText(q1.c, q1.c.getString(0x7f0802f3), 1).show();
                BugSenseHandler.sendException(ioexception);
                ioexception.printStackTrace();
                return;
            }
        }
          goto _L1
        fileoutputstream.flush();
        fileoutputstream.close();
        inputstream.close();
        bo1 = new bo(q1.c);
        bo1.a(q1.c.getString(0x7f08006b));
        bo1.a(new y(q1));
        bo1.show();
        return;
    }

    static void a(q q1, String s1)
    {
        bo bo1;
        try
        {
            if ((new File(s1)).exists())
            {
                com.aadhk.product.library.c.f.a(s1, q1.n);
                bo bo2 = new bo(q1.c);
                bo2.a(q1.c.getString(0x7f08006b));
                bo2.a(new v(q1));
                bo2.show();
                return;
            }
        }
        catch (Exception exception)
        {
            BugSenseHandler.sendException(exception);
            exception.printStackTrace();
            return;
        }
        bo1 = new bo(q1.c);
        bo1.a((new StringBuilder()).append(q1.getString(0x7f080081)).append(" ").append(s1).toString());
        bo1.show();
        return;
    }

    static int b(q q1, int i1)
    {
        q1.v = i1;
        return i1;
    }

    static DropboxAPI b(q q1)
    {
        return q1.d;
    }

    static int[] c(q q1)
    {
        return q1.u;
    }

    static int d(q q1)
    {
        return q1.v;
    }

    static void e(q q1)
    {
        q1.a();
    }

    static void f(q q1)
    {
        if (!((AndroidAuthSession)q1.d.getSession()).isLinked())
        {
            bo bo1 = new bo(q1.c);
            bo1.a(q1.c.getString(0x7f080077));
            bo1.show();
            return;
        } else
        {
            (new a(q1.a, q1.c, q1.c.getString(0x7f080072))).execute(null);
            return;
        }
    }

    static void g(q q1)
    {
        q1.a();
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setPackage("com.google.android.apps.docs");
        intent.setType("application/db");
        intent.putExtra("android.intent.extra.SUBJECT", q1.q);
        intent.putExtra("android.intent.extra.STREAM", Uri.parse((new StringBuilder("file://")).append(q1.o).toString()));
        q1.startActivity(intent);
    }

    static String h(q q1)
    {
        return q1.n;
    }

    static String i(q q1)
    {
        return q1.p;
    }

    static void j(q q1)
    {
        if (!((AndroidAuthSession)q1.d.getSession()).isLinked())
        {
            bo bo1 = new bo(q1.c);
            bo1.a(q1.c.getString(0x7f080076));
            bo1.show();
            return;
        } else
        {
            (new a(q1.b, q1.c, q1.c.getString(0x7f080073))).execute(null);
            return;
        }
    }

    static void k(q q1)
    {
        Intent intent = new Intent();
        intent.setType("application/db");
        intent.setAction("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        q1.startActivityForResult(intent, 1);
    }

    public final void onActivityResult(int i1, int j1, Intent intent)
    {
        if (i1 != 1 || j1 != -1) goto _L2; else goto _L1
_L1:
        InputStream inputstream2 = c.getContentResolver().openInputStream(intent.getData());
        InputStream inputstream1 = inputstream2;
        FileOutputStream fileoutputstream = new FileOutputStream(n);
        byte abyte0[] = new byte[1024];
_L5:
        int k1 = inputstream1.read(abyte0);
        if (k1 <= 0) goto _L4; else goto _L3
_L3:
        fileoutputstream.write(abyte0, 0, k1);
          goto _L5
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        InputStream inputstream = inputstream1;
_L10:
        filenotfoundexception.printStackTrace();
        bo bo1;
        IOException ioexception7;
        IOException ioexception8;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception3)
            {
                ioexception3.printStackTrace();
            }
        }
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            catch (IOException ioexception2)
            {
                ioexception2.printStackTrace();
            }
        }
_L2:
        super.onActivityResult(i1, j1, intent);
        return;
_L4:
        fileoutputstream.flush();
        bo1 = new bo(c);
        bo1.a(c.getString(0x7f08006b));
        bo1.a(new ab(this));
        if (inputstream1 != null)
        {
            try
            {
                inputstream1.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception8)
            {
                ioexception8.printStackTrace();
            }
        }
        try
        {
            fileoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception7)
        {
            ioexception7.printStackTrace();
        }
          goto _L2
        IOException ioexception4;
        ioexception4;
        fileoutputstream = null;
        inputstream1 = null;
_L8:
        ioexception4.printStackTrace();
        if (inputstream1 != null)
        {
            try
            {
                inputstream1.close();
            }
            catch (IOException ioexception6)
            {
                ioexception6.printStackTrace();
            }
        }
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            catch (IOException ioexception5)
            {
                ioexception5.printStackTrace();
            }
        }
          goto _L2
        Exception exception;
        exception;
        fileoutputstream = null;
        inputstream1 = null;
_L7:
        if (inputstream1 != null)
        {
            try
            {
                inputstream1.close();
            }
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        }
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        throw exception;
        exception;
        fileoutputstream = null;
        continue; /* Loop/switch isn't completed */
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        inputstream1 = inputstream;
        if (true) goto _L7; else goto _L6
_L6:
        ioexception4;
        fileoutputstream = null;
          goto _L8
        ioexception4;
          goto _L8
        filenotfoundexception;
        fileoutputstream = null;
        inputstream = null;
        continue; /* Loop/switch isn't completed */
        filenotfoundexception;
        inputstream = inputstream1;
        fileoutputstream = null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public final void onAttach(Activity activity)
    {
        c = (DatabaseActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        addPreferencesFromResource(0x7f050002);
        c.setTitle(c.getString(0x7f08002f));
        r = getResources();
        e = new e(c, "a8lxybk98ib2i9x", "7kxlca8anbcr9uq");
        d = e.a();
        f = findPreference("prefBackup");
        f.setOnPreferenceClickListener(this);
        g = findPreference("prefRestore");
        g.setOnPreferenceClickListener(this);
        h = findPreference("prefRestoreDemo");
        h.setOnPreferenceClickListener(this);
        i = findPreference("prefLinkDropBox");
        i.setOnPreferenceClickListener(this);
        m = (CheckBoxPreference)findPreference("prefAutoBackupDropBox");
        m.setOnPreferenceClickListener(this);
        l = findPreference("prefEmailDb");
        l.setOnPreferenceClickListener(this);
        j = findPreference("prefNewRestaurant");
        j.setOnPreferenceClickListener(this);
        k = findPreference("prefDeleteAllOrder");
        k.setOnPreferenceClickListener(this);
        p = "restpos.db";
        q = (new StringBuilder()).append(com.aadhk.product.library.c.f.a()).append("_restpos.db").toString();
        o = (new StringBuilder()).append(f.e).append("/").append(q).toString();
        n = c.getDatabasePath("restpos.db").getAbsolutePath();
        s = new String[3];
        t = new String[3];
        s[0] = c.getString(0x7f080093);
        s[1] = c.getString(0x7f080095);
        s[2] = c.getString(0x7f080096);
        t[0] = c.getString(0x7f080094);
        t[1] = c.getString(0x7f080095);
        t[2] = c.getString(0x7f080096);
    }

    public final boolean onPreferenceClick(Preference preference)
    {
        if (preference != f)
        {
            break MISSING_BLOCK_LABEL_122;
        }
        if (!(new File(n)).exists())
        {
            break MISSING_BLOCK_LABEL_77;
        }
        com.aadhk.product.library.b.a a2 = new com.aadhk.product.library.b.a(c, s);
        a2.setTitle(c.getString(0x7f08007f));
        a2.a(new aa(this));
        a2.show();
        return true;
        try
        {
            bo bo4 = new bo(c);
            bo4.a(c.getString(0x7f080071));
            bo4.show();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            BugSenseHandler.sendException(exception);
            return true;
        }
        return true;
        if (preference != g)
        {
            break MISSING_BLOCK_LABEL_178;
        }
        com.aadhk.product.library.b.a a1 = new com.aadhk.product.library.b.a(c, t);
        a1.setTitle(c.getString(0x7f080080));
        a1.a(new s(this));
        a1.show();
        return true;
        if (preference != h)
        {
            break MISSING_BLOCK_LABEL_251;
        }
        String as[] = r.getStringArray(0x7f0e001c);
        k k1 = new k(c, as, 0);
        k1.setTitle(c.getString(0x7f0802f4));
        k1.a(new z(this, k1));
        k1.show();
        return true;
        Preference preference1 = l;
        if (preference != preference1)
        {
            break MISSING_BLOCK_LABEL_482;
        }
        if (!Environment.getExternalStorageDirectory().canWrite())
        {
            break MISSING_BLOCK_LABEL_431;
        }
        com.aadhk.product.library.c.f.a(n, o);
        DatabaseActivity databaseactivity = c;
        String s1 = o;
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("application/octet-stream");
        intent.putExtra("android.intent.extra.EMAIL", new String[] {
            ""
        });
        String s2 = databaseactivity.getString(d.f);
        Object aobj[] = new Object[1];
        aobj[0] = databaseactivity.getString(d.b);
        intent.putExtra("android.intent.extra.SUBJECT", String.format(s2, aobj));
        intent.putExtra("android.intent.extra.STREAM", Uri.parse((new StringBuilder("file://")).append(s1).toString()));
        databaseactivity.startActivity(intent);
        return true;
        Exception exception1;
        exception1;
        BugSenseHandler.sendException(exception1);
        exception1.printStackTrace();
        return true;
        bo bo3 = new bo(c);
        bo3.a((new StringBuilder()).append(getString(0x7f08006a)).append(o).toString());
        bo3.show();
        return true;
        if (preference != i)
        {
            break MISSING_BLOCK_LABEL_651;
        }
        if (!((AndroidAuthSession)d.getSession()).isLinked())
        {
            break MISSING_BLOCK_LABEL_603;
        }
        e.b();
        ((AndroidAuthSession)d.getSession()).unlink();
        i.setTitle(c.getString(0x7f08004b));
        i.setSummary(c.getString(0x7f08004c));
        m.setChecked(false);
        bo bo2 = new bo(c);
        bo2.a(c.getString(0x7f080079));
        bo2.show();
        return true;
        com.aadhk.restpos.c.d d3 = new com.aadhk.restpos.c.d(c);
        d3.setTitle(c.getString(0x7f08007a));
        d3.a(new r(this));
        d3.show();
        return true;
        if (preference != m)
        {
            break MISSING_BLOCK_LABEL_718;
        }
        if (((AndroidAuthSession)d.getSession()).isLinked())
        {
            break MISSING_BLOCK_LABEL_828;
        }
        bo bo1 = new bo(c);
        bo1.a(c.getString(0x7f080078));
        bo1.show();
        m.setChecked(false);
        return true;
        if (preference != j)
        {
            break MISSING_BLOCK_LABEL_774;
        }
        com.aadhk.restpos.c.d d1 = new com.aadhk.restpos.c.d(c);
        d1.setTitle(c.getString(0x7f0802c5));
        d1.a(new w(this));
        d1.show();
        return true;
        if (preference == k)
        {
            com.aadhk.restpos.c.d d2 = new com.aadhk.restpos.c.d(c);
            d2.setTitle(c.getString(0x7f0802c7));
            d2.a(new x(this));
            d2.show();
        }
        return true;
    }

    public final void onResume()
    {
        super.onResume();
        if (((AndroidAuthSession)d.getSession()).authenticationSuccessful())
        {
            try
            {
                ((AndroidAuthSession)d.getSession()).finishAuthentication();
                String s1 = ((AndroidAuthSession)d.getSession()).getOAuth2AccessToken();
                e.a(s1);
            }
            catch (IllegalStateException illegalstateexception)
            {
                illegalstateexception.printStackTrace();
                BugSenseHandler.sendException(illegalstateexception);
                bo bo1 = new bo(c);
                bo1.a(c.getString(0x7f08007e));
                bo1.show();
            }
        }
        if (((AndroidAuthSession)d.getSession()).isLinked())
        {
            i.setTitle(c.getString(0x7f08004d));
            i.setSummary(c.getString(0x7f08004e));
            return;
        } else
        {
            i.setTitle(c.getString(0x7f08004b));
            i.setSummary(c.getString(0x7f08004c));
            return;
        }
    }
}
