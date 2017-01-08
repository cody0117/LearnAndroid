// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

public final class c
{

    public static int a(Parcel parcel)
    {
        return b(parcel, 20293);
    }

    public static void a(Parcel parcel, int i)
    {
        c(parcel, i);
    }

    public static void a(Parcel parcel, int i, byte byte0)
    {
        b(parcel, i, 4);
        parcel.writeInt(byte0);
    }

    public static void a(Parcel parcel, int i, double d)
    {
        b(parcel, i, 8);
        parcel.writeDouble(d);
    }

    public static void a(Parcel parcel, int i, float f)
    {
        b(parcel, i, 4);
        parcel.writeFloat(f);
    }

    public static void a(Parcel parcel, int i, int j)
    {
        b(parcel, i, 4);
        parcel.writeInt(j);
    }

    public static void a(Parcel parcel, int i, long l)
    {
        b(parcel, i, 8);
        parcel.writeLong(l);
    }

    public static void a(Parcel parcel, int i, Bundle bundle)
    {
        if (bundle == null)
        {
            return;
        } else
        {
            int j = b(parcel, i);
            parcel.writeBundle(bundle);
            c(parcel, j);
            return;
        }
    }

    public static void a(Parcel parcel, int i, IBinder ibinder)
    {
        if (ibinder == null)
        {
            return;
        } else
        {
            int j = b(parcel, i);
            parcel.writeStrongBinder(ibinder);
            c(parcel, j);
            return;
        }
    }

    public static void a(Parcel parcel, int i, Parcelable parcelable, int j, boolean flag)
    {
        if (parcelable == null)
        {
            if (flag)
            {
                b(parcel, i, 0);
            }
            return;
        } else
        {
            int k = b(parcel, i);
            parcelable.writeToParcel(parcel, j);
            c(parcel, k);
            return;
        }
    }

    public static void a(Parcel parcel, int i, Integer integer)
    {
        if (integer == null)
        {
            return;
        } else
        {
            b(parcel, i, 4);
            parcel.writeInt(integer.intValue());
            return;
        }
    }

    public static void a(Parcel parcel, int i, String s, boolean flag)
    {
        if (s == null)
        {
            if (flag)
            {
                b(parcel, i, 0);
            }
            return;
        } else
        {
            int j = b(parcel, i);
            parcel.writeString(s);
            c(parcel, j);
            return;
        }
    }

    public static void a(Parcel parcel, int i, List list)
    {
        if (list == null)
        {
            return;
        } else
        {
            int j = b(parcel, i);
            parcel.writeList(list);
            c(parcel, j);
            return;
        }
    }

    public static void a(Parcel parcel, int i, List list, boolean flag)
    {
        if (list == null)
        {
            if (flag)
            {
                b(parcel, i, 0);
            }
            return;
        } else
        {
            int j = b(parcel, i);
            parcel.writeStringList(list);
            c(parcel, j);
            return;
        }
    }

    public static void a(Parcel parcel, int i, boolean flag)
    {
        b(parcel, i, 4);
        int j;
        if (flag)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        parcel.writeInt(j);
    }

    public static void a(Parcel parcel, int i, byte abyte0[])
    {
        if (abyte0 == null)
        {
            return;
        } else
        {
            int j = b(parcel, i);
            parcel.writeByteArray(abyte0);
            c(parcel, j);
            return;
        }
    }

    public static void a(Parcel parcel, int i, int ai[])
    {
        if (ai == null)
        {
            return;
        } else
        {
            int j = b(parcel, i);
            parcel.writeIntArray(ai);
            c(parcel, j);
            return;
        }
    }

    public static void a(Parcel parcel, int i, Parcelable aparcelable[], int j)
    {
        if (aparcelable == null)
        {
            return;
        }
        int k = b(parcel, i);
        int l = aparcelable.length;
        parcel.writeInt(l);
        int i1 = 0;
        while (i1 < l) 
        {
            Parcelable parcelable = aparcelable[i1];
            if (parcelable == null)
            {
                parcel.writeInt(0);
            } else
            {
                a(parcel, parcelable, j);
            }
            i1++;
        }
        c(parcel, k);
    }

    public static void a(Parcel parcel, int i, String as[])
    {
        if (as == null)
        {
            return;
        } else
        {
            int j = b(parcel, i);
            parcel.writeStringArray(as);
            c(parcel, j);
            return;
        }
    }

    public static void a(Parcel parcel, Parcel parcel1)
    {
        if (parcel1 == null)
        {
            return;
        } else
        {
            int i = b(parcel, 2);
            parcel.appendFrom(parcel1, 0, parcel1.dataSize());
            c(parcel, i);
            return;
        }
    }

    private static void a(Parcel parcel, Parcelable parcelable, int i)
    {
        int j = parcel.dataPosition();
        parcel.writeInt(1);
        int k = parcel.dataPosition();
        parcelable.writeToParcel(parcel, i);
        int l = parcel.dataPosition();
        parcel.setDataPosition(j);
        parcel.writeInt(l - k);
        parcel.setDataPosition(l);
    }

    public static void a(Parcel parcel, Boolean boolean1)
    {
        if (boolean1 == null)
        {
            return;
        }
        b(parcel, 3, 4);
        int i;
        if (boolean1.booleanValue())
        {
            i = 1;
        } else
        {
            i = 0;
        }
        parcel.writeInt(i);
    }

    public static void a(Parcel parcel, Long long1)
    {
        if (long1 == null)
        {
            return;
        } else
        {
            b(parcel, 2, 8);
            parcel.writeLong(long1.longValue());
            return;
        }
    }

    public static void a(Parcel parcel, List list)
    {
        if (list == null)
        {
            return;
        }
        int i = b(parcel, 2);
        int j = list.size();
        parcel.writeInt(j);
        for (int k = 0; k < j; k++)
        {
            parcel.writeInt(((Integer)list.get(k)).intValue());
        }

        c(parcel, i);
    }

    public static void a(Parcel parcel, short word0)
    {
        b(parcel, 3, 4);
        parcel.writeInt(word0);
    }

    public static void a(Parcel parcel, byte abyte0[][])
    {
        if (abyte0 == null)
        {
            return;
        }
        int i = b(parcel, 3);
        int j = abyte0.length;
        parcel.writeInt(j);
        for (int k = 0; k < j; k++)
        {
            parcel.writeByteArray(abyte0[k]);
        }

        c(parcel, i);
    }

    private static int b(Parcel parcel, int i)
    {
        parcel.writeInt(0xffff0000 | i);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    private static void b(Parcel parcel, int i, int j)
    {
        if (j >= 65535)
        {
            parcel.writeInt(0xffff0000 | i);
            parcel.writeInt(j);
            return;
        } else
        {
            parcel.writeInt(i | j << 16);
            return;
        }
    }

    public static void b(Parcel parcel, int i, List list, boolean flag)
    {
        if (list == null)
        {
            if (flag)
            {
                b(parcel, i, 0);
            }
            return;
        }
        int j = b(parcel, i);
        int k = list.size();
        parcel.writeInt(k);
        int l = 0;
        while (l < k) 
        {
            Parcelable parcelable = (Parcelable)list.get(l);
            if (parcelable == null)
            {
                parcel.writeInt(0);
            } else
            {
                a(parcel, parcelable, 0);
            }
            l++;
        }
        c(parcel, j);
    }

    private static void c(Parcel parcel, int i)
    {
        int j = parcel.dataPosition();
        int k = j - i;
        parcel.setDataPosition(i - 4);
        parcel.writeInt(k);
        parcel.setDataPosition(j);
    }
}
