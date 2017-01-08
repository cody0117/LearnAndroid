// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.a.b;
import com.aadhk.restpos.c.ax;
import com.bugsense.trace.BugSenseHandler;
import com.dropbox.client2.DropboxAPI;
import com.dropbox.client2.exception.DropboxException;
import com.dropbox.client2.exception.DropboxUnlinkedException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

// Referenced classes of package com.aadhk.restpos:
//            DatabaseActivity

final class o
    implements b
{

    final DatabaseActivity a;
    private boolean b;

    o(DatabaseActivity databaseactivity)
    {
        a = databaseactivity;
        super();
        b = true;
    }

    public final void a()
    {
        File file;
        FileInputStream fileinputstream;
        file = new File(DatabaseActivity.g(a));
        fileinputstream = new FileInputStream(file);
        DatabaseActivity.a(a).putFileOverwrite(DatabaseActivity.h(a), fileinputstream, file.length(), null);
        fileinputstream.close();
_L2:
        return;
        IOException ioexception4;
        ioexception4;
        ioexception4.printStackTrace();
        return;
        DropboxUnlinkedException dropboxunlinkedexception;
        dropboxunlinkedexception;
        fileinputstream = null;
_L9:
        b = false;
        dropboxunlinkedexception.printStackTrace();
        BugSenseHandler.sendException(dropboxunlinkedexception);
        if (fileinputstream == null) goto _L2; else goto _L1
_L1:
        try
        {
            fileinputstream.close();
            return;
        }
        catch (IOException ioexception1)
        {
            ioexception1.printStackTrace();
        }
        return;
        DropboxException dropboxexception;
        dropboxexception;
        fileinputstream = null;
_L8:
        b = false;
        dropboxexception.printStackTrace();
        BugSenseHandler.sendException(dropboxexception);
        if (fileinputstream == null) goto _L2; else goto _L3
_L3:
        try
        {
            fileinputstream.close();
            return;
        }
        catch (IOException ioexception2)
        {
            ioexception2.printStackTrace();
        }
        return;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        fileinputstream = null;
_L7:
        b = false;
        filenotfoundexception.printStackTrace();
        BugSenseHandler.sendException(filenotfoundexception);
        if (fileinputstream == null) goto _L2; else goto _L4
_L4:
        try
        {
            fileinputstream.close();
            return;
        }
        catch (IOException ioexception3)
        {
            ioexception3.printStackTrace();
        }
        return;
        Exception exception;
        exception;
        fileinputstream = null;
_L6:
        if (fileinputstream != null)
        {
            try
            {
                fileinputstream.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        throw exception;
        exception;
        if (true) goto _L6; else goto _L5
_L5:
        filenotfoundexception;
          goto _L7
        dropboxexception;
          goto _L8
        dropboxunlinkedexception;
          goto _L9
    }

    public final void b()
    {
        ax ax1 = new ax(a);
        boolean _tmp = b;
        ax1.a(0x7f09004b);
        ax1.show();
    }
}
