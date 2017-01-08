// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.a.c;
import com.aadhk.restpos.DatabaseActivity;
import com.aadhk.restpos.c.bo;
import com.bugsense.trace.BugSenseHandler;
import com.dropbox.client2.DropboxAPI;
import com.dropbox.client2.exception.DropboxException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

// Referenced classes of package com.aadhk.restpos.d:
//            q, ae

final class ad
    implements c
{

    final q a;
    private boolean b;

    ad(q q1)
    {
        a = q1;
        super();
        b = true;
    }

    public final void a()
    {
        FileOutputStream fileoutputstream = null;
        FileOutputStream fileoutputstream1 = new FileOutputStream(new File(q.h(a)));
        q.b(a).getFile(q.i(a), null, fileoutputstream1, null);
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
            bo bo1 = new bo(q.a(a));
            bo1.a(q.a(a).getString(0x7f08006b));
            bo1.a(new ae(this));
            bo1.show();
            return;
        } else
        {
            bo bo2 = new bo(q.a(a));
            bo2.a(q.a(a).getString(0x7f08006c));
            bo2.show();
            return;
        }
    }
}
