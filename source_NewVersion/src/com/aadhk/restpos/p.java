// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.a.b;
import com.aadhk.restpos.c.ax;
import com.bugsense.trace.BugSenseHandler;
import com.dropbox.client2.DropboxAPI;
import com.dropbox.client2.exception.DropboxException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

// Referenced classes of package com.aadhk.restpos:
//            DatabaseActivity, q

final class p
    implements b
{

    final DatabaseActivity a;
    private boolean b;

    p(DatabaseActivity databaseactivity)
    {
        a = databaseactivity;
        super();
        b = true;
    }

    public final void a()
    {
        FileOutputStream fileoutputstream = null;
        FileOutputStream fileoutputstream1 = new FileOutputStream(new File(DatabaseActivity.g(a)));
        DatabaseActivity.a(a).getFile(DatabaseActivity.h(a), null, fileoutputstream1, null);
        fileoutputstream1.close();
_L2:
        return;
        DropboxException dropboxexception;
        dropboxexception;
        fileoutputstream1 = null;
_L7:
        b = false;
        dropboxexception.printStackTrace();
        BugSenseHandler.sendException(dropboxexception);
        if (fileoutputstream1 == null) goto _L2; else goto _L1
_L1:
        try
        {
            fileoutputstream1.close();
            return;
        }
        catch (IOException ioexception1)
        {
            return;
        }
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
_L6:
        b = false;
        filenotfoundexception.printStackTrace();
        BugSenseHandler.sendException(filenotfoundexception);
        if (fileoutputstream == null) goto _L2; else goto _L3
_L3:
        try
        {
            fileoutputstream.close();
            return;
        }
        catch (IOException ioexception2)
        {
            return;
        }
        Exception exception;
        exception;
_L5:
        IOException ioexception3;
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception;
        ioexception3;
        return;
        exception;
        fileoutputstream = fileoutputstream1;
        if (true) goto _L5; else goto _L4
_L4:
        filenotfoundexception;
        fileoutputstream = fileoutputstream1;
          goto _L6
        dropboxexception;
          goto _L7
    }

    public final void b()
    {
        if (b)
        {
            ax ax1 = new ax(a);
            ax1.a(0x7f09003b);
            ax1.a(new q(this));
            ax1.show();
            return;
        } else
        {
            ax ax2 = new ax(a);
            ax2.a(0x7f09003c);
            ax2.show();
            return;
        }
    }
}
