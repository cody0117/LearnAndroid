// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.internal:
//            qw

public final class al
{

    public static int a(String s)
    {
        byte abyte1[] = s.getBytes("UTF-8");
        byte abyte0[] = abyte1;
_L2:
        return qw.a(abyte0, abyte0.length);
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        abyte0 = s.getBytes();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String[] b(String s)
    {
        ArrayList arraylist;
        char ac[];
        int i;
        boolean flag;
        int j;
        int k;
        if (s == null)
        {
            return null;
        }
        arraylist = new ArrayList();
        ac = s.toCharArray();
        i = s.length();
        flag = false;
        j = 0;
        k = 0;
_L3:
        int l;
        boolean flag1;
        int j1;
        boolean flag3;
        if (k >= i)
        {
            break MISSING_BLOCK_LABEL_342;
        }
        l = Character.codePointAt(ac, k);
        int i1 = Character.charCount(l);
        if (!Character.isLetter(l))
        {
            break MISSING_BLOCK_LABEL_274;
        }
        Character.UnicodeBlock unicodeblock = Character.UnicodeBlock.of(l);
        boolean flag4;
        boolean flag5;
        if (unicodeblock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || unicodeblock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || unicodeblock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B || unicodeblock == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || unicodeblock == Character.UnicodeBlock.CJK_RADICALS_SUPPLEMENT || unicodeblock == Character.UnicodeBlock.CJK_COMPATIBILITY || unicodeblock == Character.UnicodeBlock.CJK_COMPATIBILITY_FORMS || unicodeblock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || unicodeblock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT || unicodeblock == Character.UnicodeBlock.BOPOMOFO || unicodeblock == Character.UnicodeBlock.HIRAGANA || unicodeblock == Character.UnicodeBlock.KATAKANA || unicodeblock == Character.UnicodeBlock.HANGUL_SYLLABLES || unicodeblock == Character.UnicodeBlock.HANGUL_JAMO)
        {
            flag5 = true;
        } else
        {
            flag5 = false;
        }
        if (!flag5)
        {
            break MISSING_BLOCK_LABEL_274;
        }
        flag1 = true;
_L1:
        if (flag1)
        {
            if (flag)
            {
                arraylist.add(new String(ac, j, k - j));
            }
            arraylist.add(new String(ac, k, i1));
            j1 = j;
            flag3 = false;
        } else
        if (Character.isLetterOrDigit(l))
        {
            if (!flag)
            {
                j = k;
            }
            j1 = j;
            flag3 = true;
        } else
        if (flag)
        {
            arraylist.add(new String(ac, j, k - j));
            j1 = j;
            flag3 = false;
        } else
        {
            boolean flag2 = flag;
            j1 = j;
            flag3 = flag2;
        }
        k += i1;
        flag4 = flag3;
        j = j1;
        flag = flag4;
        continue; /* Loop/switch isn't completed */
        flag1 = false;
          goto _L1
        if (flag)
        {
            arraylist.add(new String(ac, j, k - j));
        }
        return (String[])arraylist.toArray(new String[arraylist.size()]);
        if (true) goto _L3; else goto _L2
_L2:
    }
}
