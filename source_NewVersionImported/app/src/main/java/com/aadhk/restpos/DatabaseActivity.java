// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.app.ActionBar;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.view.MenuItem;
import android.widget.Toast;
import com.aadhk.product.library.a.a;
import com.aadhk.product.library.a.b;
import com.aadhk.product.library.b.k;
import com.aadhk.product.library.c.e;
import com.aadhk.product.library.c.f;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.c.g;
import com.aadhk.restpos.f.d;
import com.bugsense.trace.BugSenseHandler;
import com.dropbox.client2.DropboxAPI;
import com.dropbox.client2.android.AndroidAuthSession;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

// Referenced classes of package com.aadhk.restpos:
//            o, p, k, h, 
//            n, m, e, l, 
//            d, i, j

public class DatabaseActivity extends PreferenceActivity
    implements android.preference.Preference.OnPreferenceClickListener
{

    b a;
    b b;
    private DropboxAPI c;
    private e d;
    private Preference e;
    private Preference f;
    private Preference g;
    private Preference h;
    private Preference i;
    private Preference j;
    private Preference k;
    private CheckBoxPreference l;
    private String m;
    private String n;
    private String o;
    private String p;
    private Resources q;
    private String r[];
    private String s[];
    private int t[] = {
        0x7f060007, 0x7f060008
    };
    private int u;

    public DatabaseActivity()
    {
        a = new o(this);
        b = new p(this);
    }

    static DropboxAPI a(DatabaseActivity databaseactivity)
    {
        return databaseactivity.c;
    }

    private void a()
    {
        if (!(new File(m)).exists())
        {
            break MISSING_BLOCK_LABEL_157;
        }
        if (Environment.getExternalStorageDirectory().canWrite())
        {
            com.aadhk.product.library.c.f.a(d.e);
            com.aadhk.product.library.c.f.a(m, n);
            if (u == 0)
            {
                ax ax3 = new ax(this);
                ax3.a((new StringBuilder()).append(q.getString(0x7f090039)).append(n).toString());
                ax3.show();
                return;
            }
            break MISSING_BLOCK_LABEL_183;
        }
        try
        {
            ax ax2 = new ax(this);
            ax2.a((new StringBuilder()).append(q.getString(0x7f09003a)).append(n).toString());
            ax2.show();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            BugSenseHandler.sendException(exception);
            return;
        }
        ax ax1 = new ax(this);
        ax1.a(q.getString(0x7f090041));
        ax1.show();
    }

    static void a(DatabaseActivity databaseactivity, int i1)
    {
        String s1 = databaseactivity.getDatabasePath("restpos.db").getAbsolutePath();
        InputStream inputstream;
        FileOutputStream fileoutputstream;
        byte abyte0[];
        inputstream = databaseactivity.q.openRawResource(i1);
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
            ax ax1;
            try
            {
                fileoutputstream.write(abyte0, 0, j1);
            }
            catch (FileNotFoundException filenotfoundexception)
            {
                Toast.makeText(databaseactivity, 0x7f090294, 1).show();
                BugSenseHandler.sendException(filenotfoundexception);
                filenotfoundexception.printStackTrace();
                return;
            }
            catch (IOException ioexception)
            {
                Toast.makeText(databaseactivity, 0x7f090294, 1).show();
                BugSenseHandler.sendException(ioexception);
                ioexception.printStackTrace();
                return;
            }
        }
          goto _L1
        fileoutputstream.flush();
        fileoutputstream.close();
        inputstream.close();
        ax1 = new ax(databaseactivity);
        ax1.a(0x7f09003b);
        ax1.a(new com.aadhk.restpos.k(databaseactivity));
        ax1.show();
        return;
    }

    static void a(DatabaseActivity databaseactivity, String s1)
    {
        ax ax1;
        try
        {
            if ((new File(s1)).exists())
            {
                com.aadhk.product.library.c.f.a(s1, databaseactivity.m);
                ax ax2 = new ax(databaseactivity);
                ax2.a(0x7f09003b);
                ax2.a(new h(databaseactivity));
                ax2.show();
                return;
            }
        }
        catch (Exception exception)
        {
            BugSenseHandler.sendException(exception);
            exception.printStackTrace();
            return;
        }
        ax1 = new ax(databaseactivity);
        ax1.a((new StringBuilder()).append(databaseactivity.getString(0x7f090051)).append(" ").append(s1).toString());
        ax1.show();
        return;
    }

    static int b(DatabaseActivity databaseactivity, int i1)
    {
        databaseactivity.u = i1;
        return i1;
    }

    static int[] b(DatabaseActivity databaseactivity)
    {
        return databaseactivity.t;
    }

    static int c(DatabaseActivity databaseactivity)
    {
        return databaseactivity.u;
    }

    static void d(DatabaseActivity databaseactivity)
    {
        databaseactivity.a();
    }

    static void e(DatabaseActivity databaseactivity)
    {
        if (!((AndroidAuthSession)databaseactivity.c.getSession()).isLinked())
        {
            ax ax1 = new ax(databaseactivity);
            ax1.a(0x7f090047);
            ax1.show();
            return;
        } else
        {
            (new a(databaseactivity, databaseactivity.a, databaseactivity.q.getString(0x7f090042))).execute(null);
            return;
        }
    }

    static void f(DatabaseActivity databaseactivity)
    {
        databaseactivity.a();
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setPackage("com.google.android.apps.docs");
        intent.setType("application/db");
        intent.putExtra("android.intent.extra.SUBJECT", databaseactivity.p);
        intent.putExtra("android.intent.extra.STREAM", Uri.parse((new StringBuilder("file://")).append(databaseactivity.n).toString()));
        databaseactivity.startActivity(intent);
    }

    static String g(DatabaseActivity databaseactivity)
    {
        return databaseactivity.m;
    }

    static String h(DatabaseActivity databaseactivity)
    {
        return databaseactivity.o;
    }

    static void i(DatabaseActivity databaseactivity)
    {
        if (!((AndroidAuthSession)databaseactivity.c.getSession()).isLinked())
        {
            ax ax1 = new ax(databaseactivity);
            ax1.a(0x7f090046);
            ax1.show();
            return;
        } else
        {
            (new a(databaseactivity, databaseactivity.b, databaseactivity.q.getString(0x7f090043))).execute(null);
            return;
        }
    }

    static void j(DatabaseActivity databaseactivity)
    {
        Intent intent = new Intent();
        intent.setType("application/db");
        intent.setAction("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        databaseactivity.startActivityForResult(intent, 1);
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        if (i1 != 1 || j1 != -1) goto _L2; else goto _L1
_L1:
        InputStream inputstream2 = getContentResolver().openInputStream(intent.getData());
        InputStream inputstream1 = inputstream2;
        FileOutputStream fileoutputstream = new FileOutputStream(m);
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
        ax ax1;
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
        ax1 = new ax(this);
        ax1.a(0x7f09003b);
        ax1.a(new n(this));
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

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            getActionBar().setDisplayHomeAsUpEnabled(true);
        }
        addPreferencesFromResource(0x7f050001);
        setTitle(0x7f090000);
        BugSenseHandler.initAndStartSession(this, "9fa2b19a");
        q = getResources();
        d = new e(this, "a8lxybk98ib2i9x", "7kxlca8anbcr9uq");
        c = d.a();
        e = findPreference("prefBackup");
        e.setOnPreferenceClickListener(this);
        f = findPreference("prefRestore");
        f.setOnPreferenceClickListener(this);
        g = findPreference("prefRestoreDemo");
        g.setOnPreferenceClickListener(this);
        h = findPreference("prefLinkDropBox");
        h.setOnPreferenceClickListener(this);
        l = (CheckBoxPreference)findPreference("prefAutoBackupDropBox");
        l.setOnPreferenceClickListener(this);
        k = findPreference("prefEmailDb");
        k.setOnPreferenceClickListener(this);
        i = findPreference("prefNewRestaurant");
        i.setOnPreferenceClickListener(this);
        j = findPreference("prefDeleteAllOrder");
        j.setOnPreferenceClickListener(this);
        o = "restpos.db";
        p = (new StringBuilder()).append(com.aadhk.product.library.c.f.a()).append("_restpos.db").toString();
        n = (new StringBuilder()).append(d.e).append("/").append(p).toString();
        m = getDatabasePath("restpos.db").getAbsolutePath();
        r = new String[3];
        s = new String[3];
        r[0] = q.getString(0x7f090061);
        r[1] = q.getString(0x7f090063);
        r[2] = q.getString(0x7f090064);
        s[0] = q.getString(0x7f090062);
        s[1] = q.getString(0x7f090063);
        s[2] = q.getString(0x7f090064);
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            finish();
        }
        return super.onOptionsItemSelected(menuitem);
    }

    public boolean onPreferenceClick(Preference preference)
    {
        if (preference != e)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        if (!(new File(m)).exists())
        {
            break MISSING_BLOCK_LABEL_67;
        }
        com.aadhk.product.library.b.a a2 = new com.aadhk.product.library.b.a(this, r);
        a2.setTitle(0x7f09004f);
        a2.a(new m(this));
        a2.show();
        return true;
        try
        {
            ax ax4 = new ax(this);
            ax4.a(0x7f090041);
            ax4.show();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            BugSenseHandler.sendException(exception);
            return true;
        }
        return true;
        if (preference != f)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        com.aadhk.product.library.b.a a1 = new com.aadhk.product.library.b.a(this, s);
        a1.setTitle(0x7f090050);
        a1.a(new com.aadhk.restpos.e(this));
        a1.show();
        return true;
        if (preference != g)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        k k1 = new k(this, q.getStringArray(0x7f070019), 0);
        k1.setTitle(0x7f090295);
        k1.a(new l(this, k1));
        k1.show();
        return true;
        Preference preference1 = k;
        if (preference != preference1)
        {
            break MISSING_BLOCK_LABEL_428;
        }
        if (!Environment.getExternalStorageDirectory().canWrite())
        {
            break MISSING_BLOCK_LABEL_377;
        }
        com.aadhk.product.library.c.f.a(m, n);
        String s1 = n;
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("application/octet-stream");
        intent.putExtra("android.intent.extra.EMAIL", new String[] {
            ""
        });
        String s2 = getString(com.aadhk.product.library.d.f);
        Object aobj[] = new Object[1];
        aobj[0] = getString(com.aadhk.product.library.d.b);
        intent.putExtra("android.intent.extra.SUBJECT", String.format(s2, aobj));
        intent.putExtra("android.intent.extra.STREAM", Uri.parse((new StringBuilder("file://")).append(s1).toString()));
        startActivity(intent);
        return true;
        Exception exception1;
        exception1;
        BugSenseHandler.sendException(exception1);
        exception1.printStackTrace();
        return true;
        ax ax3 = new ax(this);
        ax3.a((new StringBuilder()).append(q.getString(0x7f09003a)).append(n).toString());
        ax3.show();
        return true;
        if (preference != h)
        {
            break MISSING_BLOCK_LABEL_563;
        }
        if (!((AndroidAuthSession)c.getSession()).isLinked())
        {
            break MISSING_BLOCK_LABEL_525;
        }
        d.b();
        ((AndroidAuthSession)c.getSession()).unlink();
        h.setTitle(0x7f09001e);
        h.setSummary(0x7f09001f);
        l.setChecked(false);
        ax ax2 = new ax(this);
        ax2.a(0x7f090049);
        ax2.show();
        return true;
        g g3 = new g(this);
        g3.setTitle(0x7f09004a);
        g3.a(new com.aadhk.restpos.d(this));
        g3.show();
        return true;
        if (preference != l)
        {
            break MISSING_BLOCK_LABEL_620;
        }
        if (((AndroidAuthSession)c.getSession()).isLinked())
        {
            break MISSING_BLOCK_LABEL_710;
        }
        ax ax1 = new ax(this);
        ax1.a(0x7f090048);
        ax1.show();
        l.setChecked(false);
        return true;
        if (preference != i)
        {
            break MISSING_BLOCK_LABEL_666;
        }
        g g1 = new g(this);
        g1.setTitle(0x7f09026a);
        g1.a(new i(this));
        g1.show();
        return true;
        if (preference == j)
        {
            g g2 = new g(this);
            g2.setTitle(0x7f09026c);
            g2.a(new j(this));
            g2.show();
        }
        return true;
    }

    protected void onResume()
    {
        super.onResume();
        if (((AndroidAuthSession)c.getSession()).authenticationSuccessful())
        {
            try
            {
                ((AndroidAuthSession)c.getSession()).finishAuthentication();
                String s1 = ((AndroidAuthSession)c.getSession()).getOAuth2AccessToken();
                d.a(s1);
            }
            catch (IllegalStateException illegalstateexception)
            {
                illegalstateexception.printStackTrace();
                BugSenseHandler.sendException(illegalstateexception);
                ax ax1 = new ax(this);
                ax1.a(0x7f09004e);
                ax1.show();
            }
        }
        if (((AndroidAuthSession)c.getSession()).isLinked())
        {
            h.setTitle(0x7f090020);
            h.setSummary(0x7f090021);
            return;
        } else
        {
            h.setTitle(0x7f09001e);
            h.setSummary(0x7f09001f);
            return;
        }
    }
}
