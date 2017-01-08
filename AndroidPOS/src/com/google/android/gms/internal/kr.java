// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            qu, px, qp, qv

public abstract class kr
{

    public kr()
    {
    }

    protected static Object a(a a1, Object obj)
    {
        if (a.a(a1) != null)
        {
            obj = a1.a(obj);
        }
        return obj;
    }

    private static void a(StringBuilder stringbuilder, a a1, Object obj)
    {
        if (a1.b() == 11)
        {
            stringbuilder.append(((kr)a1.h().cast(obj)).toString());
            return;
        }
        if (a1.b() == 7)
        {
            stringbuilder.append("\"");
            stringbuilder.append(qu.a((String)obj));
            stringbuilder.append("\"");
            return;
        } else
        {
            stringbuilder.append(obj);
            return;
        }
    }

    private static void a(StringBuilder stringbuilder, a a1, ArrayList arraylist)
    {
        stringbuilder.append("[");
        int i = 0;
        for (int j = arraylist.size(); i < j; i++)
        {
            if (i > 0)
            {
                stringbuilder.append(",");
            }
            Object obj = arraylist.get(i);
            if (obj != null)
            {
                a(stringbuilder, a1, obj);
            }
        }

        stringbuilder.append("]");
    }

    protected boolean a(a a1)
    {
        if (a1.d() == 11)
        {
            if (a1.e())
            {
                a1.f();
                throw new UnsupportedOperationException("Concrete type arrays not supported");
            } else
            {
                a1.f();
                throw new UnsupportedOperationException("Concrete types not supported");
            }
        } else
        {
            a1.f();
            return d();
        }
    }

    protected Object b(a a1)
    {
        String s = a1.f();
        if (a1.h() != null)
        {
            a1.f();
            c();
            Object aobj[] = new Object[1];
            aobj[0] = a1.f();
            px.a(true, "Concrete field shouldn't be value object: %s", aobj);
            a1.e();
            Object obj;
            try
            {
                String s1 = (new StringBuilder("get")).append(Character.toUpperCase(s.charAt(0))).append(s.substring(1)).toString();
                obj = getClass().getMethod(s1, new Class[0]).invoke(this, new Object[0]);
            }
            catch (Exception exception)
            {
                throw new RuntimeException(exception);
            }
            return obj;
        } else
        {
            a1.f();
            return c();
        }
    }

    public abstract HashMap b();

    protected abstract Object c();

    protected abstract boolean d();

    public String toString()
    {
        HashMap hashmap = b();
        StringBuilder stringbuilder = new StringBuilder(100);
        Iterator iterator = hashmap.keySet().iterator();
label0:
        do
        {
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                String s = (String)iterator.next();
                a a1 = (a)hashmap.get(s);
                if (a(a1))
                {
                    Object obj = a(a1, b(a1));
                    if (stringbuilder.length() == 0)
                    {
                        stringbuilder.append("{");
                    } else
                    {
                        stringbuilder.append(",");
                    }
                    stringbuilder.append("\"").append(s).append("\":");
                    if (obj == null)
                    {
                        stringbuilder.append("null");
                    } else
                    {
                        switch (a1.d())
                        {
                        default:
                            if (a1.c())
                            {
                                a(stringbuilder, a1, (ArrayList)obj);
                            } else
                            {
                                a(stringbuilder, a1, obj);
                            }
                            break;

                        case 8: // '\b'
                            stringbuilder.append("\"").append(qp.a((byte[])obj)).append("\"");
                            break;

                        case 9: // '\t'
                            stringbuilder.append("\"").append(qp.b((byte[])obj)).append("\"");
                            break;

                        case 10: // '\n'
                            qv.a(stringbuilder, (HashMap)obj);
                            break;
                        }
                        continue label0;
                    }
                }
            } while (true);
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append("}");
            } else
            {
                stringbuilder.append("{}");
            }
            return stringbuilder.toString();
        } while (true);
    }

    private class a
        implements SafeParcelable
    {

        public static final qi CREATOR = new qi();
        protected final int a;
        protected final boolean b;
        protected final int c;
        protected final boolean d;
        protected final String e;
        protected final int f;
        protected final Class g;
        protected final String h;
        private final int i;
        private kv j;
        private qh k;

        public static a a(String s)
        {
            return new a(7, true, 7, true, s, 3, null, null);
        }

        public static a a(String s, int i1)
        {
            return new a(0, false, 0, false, s, i1, null, null);
        }

        public static a a(String s, int i1, qh qh1)
        {
            return new a(7, false, 0, false, s, i1, null, qh1);
        }

        public static a a(String s, int i1, Class class1)
        {
            return new a(11, false, 11, false, s, i1, class1, null);
        }

        static qh a(a a1)
        {
            return a1.k;
        }

        public static a b(String s, int i1)
        {
            return new a(4, false, 4, false, s, i1, null, null);
        }

        public static a b(String s, int i1, Class class1)
        {
            return new a(11, true, 11, true, s, i1, class1, null);
        }

        public static a c(String s, int i1)
        {
            return new a(6, false, 6, false, s, i1, null, null);
        }

        public static a d(String s, int i1)
        {
            return new a(7, false, 7, false, s, i1, null, null);
        }

        public final int a()
        {
            return i;
        }

        public final Object a(Object obj)
        {
            return k.a(obj);
        }

        public final void a(kv kv1)
        {
            j = kv1;
        }

        public final int b()
        {
            return a;
        }

        public final boolean c()
        {
            return b;
        }

        public final int d()
        {
            return c;
        }

        public int describeContents()
        {
            qi _tmp = CREATOR;
            return 0;
        }

        public final boolean e()
        {
            return d;
        }

        public final String f()
        {
            return e;
        }

        public final int g()
        {
            return f;
        }

        public final Class h()
        {
            return g;
        }

        final String i()
        {
            if (h == null)
            {
                return null;
            } else
            {
                return h;
            }
        }

        public final boolean j()
        {
            return k != null;
        }

        final km k()
        {
            if (k == null)
            {
                return null;
            } else
            {
                return km.a(k);
            }
        }

        public final HashMap l()
        {
            px.a(h);
            px.a(j);
            return j.a(h);
        }

        public final String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("Field\n");
            stringbuilder.append("            versionCode=").append(i).append('\n');
            stringbuilder.append("                 typeIn=").append(a).append('\n');
            stringbuilder.append("            typeInArray=").append(b).append('\n');
            stringbuilder.append("                typeOut=").append(c).append('\n');
            stringbuilder.append("           typeOutArray=").append(d).append('\n');
            stringbuilder.append("        outputFieldName=").append(e).append('\n');
            stringbuilder.append("      safeParcelFieldId=").append(f).append('\n');
            stringbuilder.append("       concreteTypeName=").append(i()).append('\n');
            if (g != null)
            {
                stringbuilder.append("     concreteType.class=").append(g.getCanonicalName()).append('\n');
            }
            StringBuilder stringbuilder1 = stringbuilder.append("          converterName=");
            String s;
            if (k == null)
            {
                s = "null";
            } else
            {
                s = k.getClass().getCanonicalName();
            }
            stringbuilder1.append(s).append('\n');
            return stringbuilder.toString();
        }

        public void writeToParcel(Parcel parcel, int i1)
        {
            qi _tmp = CREATOR;
            qi.a(this, parcel, i1);
        }


        a(int i1, int j1, boolean flag, int k1, boolean flag1, String s, int l1, 
                String s1, km km1)
        {
            i = i1;
            a = j1;
            b = flag;
            c = k1;
            d = flag1;
            e = s;
            f = l1;
            if (s1 == null)
            {
                g = null;
                h = null;
            } else
            {
                g = com/google/android/gms/internal/ky;
                h = s1;
            }
            if (km1 == null)
            {
                k = null;
                return;
            } else
            {
                k = km1.c();
                return;
            }
        }

        private a(int i1, boolean flag, int j1, boolean flag1, String s, int k1, Class class1, 
                qh qh1)
        {
            i = 1;
            a = i1;
            b = flag;
            c = j1;
            d = flag1;
            e = s;
            f = k1;
            g = class1;
            if (class1 == null)
            {
                h = null;
            } else
            {
                h = class1.getCanonicalName();
            }
            k = qh1;
        }
    }

}
