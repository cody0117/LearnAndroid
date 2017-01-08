// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.c;

import android.content.Context;
import android.content.res.Resources;
import com.bugsense.trace.BugSenseHandler;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.regex.Pattern;

// Referenced classes of package com.aadhk.product.library.c:
//            g

public final class f
{

    public static String a()
    {
        Calendar calendar = Calendar.getInstance();
        return (new SimpleDateFormat("yyyy_MM_dd")).format(calendar.getTime());
    }

    public static void a(Context context, String s)
    {
        InputStream inputstream;
        FileOutputStream fileoutputstream;
        byte abyte0[];
        inputstream = context.getResources().openRawResource(0x7f060006);
        fileoutputstream = new FileOutputStream(s);
        abyte0 = new byte[1024];
_L1:
        int i = inputstream.read(abyte0);
label0:
        {
            if (i <= 0)
            {
                break label0;
            }
            try
            {
                fileoutputstream.write(abyte0, 0, i);
            }
            catch (Exception exception)
            {
                BugSenseHandler.sendException(exception);
                exception.printStackTrace();
                return;
            }
        }
          goto _L1
        fileoutputstream.flush();
        fileoutputstream.close();
        inputstream.close();
        return;
    }

    public static void a(String s)
    {
        File afile[] = (new File(s)).listFiles();
        Arrays.sort(afile);
        for (int i = 0; i < -2 + afile.length; i++)
        {
            afile[i].delete();
        }

    }

    public static void a(String s, String s1)
    {
        File file = new File(s);
        if (file.exists())
        {
            FileInputStream fileinputstream = new FileInputStream(file);
            FileOutputStream fileoutputstream = new FileOutputStream(s1);
            byte abyte0[] = new byte[1024];
            do
            {
                int i = fileinputstream.read(abyte0);
                if (i <= 0)
                {
                    break;
                }
                fileoutputstream.write(abyte0, 0, i);
            } while (true);
            fileoutputstream.flush();
            fileoutputstream.close();
            fileinputstream.close();
        }
    }

    public static String[] a(File file, String s)
    {
        if (!file.isDirectory())
        {
            throw new IllegalArgumentException((new StringBuilder()).append(file).append(" is no directory.").toString());
        }
        File afile[] = file.listFiles(new g(Pattern.compile(s)));
        String as[] = new String[afile.length];
        for (int i = 0; i < afile.length; i++)
        {
            as[i] = afile[i].getName();
        }

        return as;
    }

    public static String b(String s)
    {
        if (s != null)
        {
            s = s.replaceAll("[\\W]", "");
        }
        return s;
    }
}
