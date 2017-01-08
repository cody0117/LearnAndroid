// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.a;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import com.android.vending.billing.IInAppBillingService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

// Referenced classes of package com.aadhk.a:
//            n, m, l, o, 
//            c, k, h, e, 
//            i, f, j

public final class d
{

    boolean a;
    String b;
    boolean c;
    boolean d;
    boolean e;
    boolean f;
    boolean g;
    String h;
    Context i;
    IInAppBillingService j;
    ServiceConnection k;
    int l;
    String m;
    String n;
    h o;

    public d(Context context, String s)
    {
        a = false;
        b = "IabHelper";
        c = false;
        d = false;
        e = false;
        f = false;
        g = false;
        h = "";
        n = null;
        i = context.getApplicationContext();
        n = s;
        c();
    }

    private int a(Bundle bundle)
    {
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null)
        {
            c();
            return 0;
        }
        if (obj instanceof Integer)
        {
            return ((Integer)obj).intValue();
        }
        if (obj instanceof Long)
        {
            return (int)((Long)obj).longValue();
        } else
        {
            c("Unexpected type for bundle response code.");
            c(obj.getClass().getName());
            throw new RuntimeException((new StringBuilder("Unexpected type for bundle response code: ")).append(obj.getClass().getName()).toString());
        }
    }

    private int a(l l1, String s)
    {
        String s1;
        boolean flag;
        (new StringBuilder("Querying owned items, item type: ")).append(s);
        c();
        (new StringBuilder("Package name: ")).append(i.getPackageName());
        c();
        s1 = null;
        flag = false;
_L6:
        Bundle bundle;
        int i1;
        (new StringBuilder("Calling getPurchases with continuation token: ")).append(s1);
        c();
        bundle = j.a(3, i.getPackageName(), s, s1);
        i1 = a(bundle);
        (new StringBuilder("Owned items response: ")).append(String.valueOf(i1));
        c();
        if (i1 == 0) goto _L2; else goto _L1
_L1:
        int k1;
        (new StringBuilder("getPurchases() failed: ")).append(a(i1));
        c();
        k1 = i1;
_L4:
        return k1;
_L2:
        boolean flag1;
        String s5;
        if (!bundle.containsKey("INAPP_PURCHASE_ITEM_LIST") || !bundle.containsKey("INAPP_PURCHASE_DATA_LIST") || !bundle.containsKey("INAPP_DATA_SIGNATURE_LIST"))
        {
            c("Bundle returned from getPurchases() doesn't contain required fields.");
            return -1002;
        }
        ArrayList arraylist = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
        ArrayList arraylist1 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList arraylist2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        int j1 = 0;
        flag1 = flag;
label0:
        do
        {
label1:
            {
label2:
                {
                    if (j1 < arraylist1.size())
                    {
                        break label2;
                    }
                    s5 = bundle.getString("INAPP_CONTINUATION_TOKEN");
                    (new StringBuilder("Continuation token: ")).append(s5);
                    c();
                    if (!TextUtils.isEmpty(s5))
                    {
                        break label1;
                    }
                    k1 = 0;
                    if (flag1)
                    {
                        return -1003;
                    }
                }
                if (true)
                {
                    break label0;
                }
                String s2 = (String)arraylist1.get(j1);
                String s3 = (String)arraylist2.get(j1);
                String s4 = (String)arraylist.get(j1);
                boolean flag2;
                if (com.aadhk.a.n.a(n, s2, s3))
                {
                    (new StringBuilder("Sku is owned: ")).append(s4);
                    c();
                    m m1 = new m(s, s2, s3);
                    if (TextUtils.isEmpty(m1.h))
                    {
                        d("BUG: empty/null token!");
                        (new StringBuilder("Purchase data: ")).append(s2);
                        c();
                    }
                    l1.b.put(m1.d, m1);
                    flag2 = flag1;
                } else
                {
                    d("Purchase signature verification **FAILED**. Not adding item.");
                    (new StringBuilder("   Purchase data: ")).append(s2);
                    c();
                    (new StringBuilder("   Signature: ")).append(s3);
                    c();
                    flag2 = true;
                }
                j1++;
                flag1 = flag2;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        s1 = s5;
        flag = flag1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private int a(String s, l l1, List list)
    {
        ArrayList arraylist;
        c();
        arraylist = new ArrayList();
        arraylist.addAll(l1.c(s));
        if (list == null) goto _L2; else goto _L1
_L1:
        Iterator iterator1 = list.iterator();
_L5:
        if (iterator1.hasNext()) goto _L3; else goto _L2
_L2:
        if (arraylist.size() == 0)
        {
            c();
            return 0;
        }
        break; /* Loop/switch isn't completed */
_L3:
        String s1 = (String)iterator1.next();
        if (!arraylist.contains(s1))
        {
            arraylist.add(s1);
        }
        if (true) goto _L5; else goto _L4
_L4:
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("ITEM_ID_LIST", arraylist);
        Bundle bundle1 = j.a(3, i.getPackageName(), s, bundle);
        if (!bundle1.containsKey("DETAILS_LIST"))
        {
            int i1 = a(bundle1);
            if (i1 != 0)
            {
                (new StringBuilder("getSkuDetails() failed: ")).append(a(i1));
                c();
                return i1;
            } else
            {
                c("getSkuDetails() returned a bundle with neither an error nor a detail list.");
                return -1002;
            }
        }
        Iterator iterator = bundle1.getStringArrayList("DETAILS_LIST").iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return 0;
            }
            o o1 = new o(s, (String)iterator.next());
            (new StringBuilder("Got sku details: ")).append(o1);
            c();
            l1.a.put(o1.b, o1);
        } while (true);
    }

    public static String a(int i1)
    {
        String as[] = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
        String as1[] = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
        if (i1 <= -1000)
        {
            int j1 = -1000 - i1;
            if (j1 >= 0 && j1 < as1.length)
            {
                return as1[j1];
            } else
            {
                return (new StringBuilder(String.valueOf(String.valueOf(i1)))).append(":Unknown IAB Helper Error").toString();
            }
        }
        if (i1 < 0 || i1 >= as.length)
        {
            return (new StringBuilder(String.valueOf(String.valueOf(i1)))).append(":Unknown").toString();
        } else
        {
            return as[i1];
        }
    }

    private void a(String s)
    {
        if (!c)
        {
            c((new StringBuilder("Illegal state for operation (")).append(s).append("): IAB helper is not set up.").toString());
            throw new IllegalStateException((new StringBuilder("IAB helper is not set up. Can't perform operation: ")).append(s).toString());
        } else
        {
            return;
        }
    }

    private void b(String s)
    {
        if (g)
        {
            throw new IllegalStateException((new StringBuilder("Can't start async operation (")).append(s).append(") because another async operation(").append(h).append(") is in progress.").toString());
        } else
        {
            h = s;
            g = true;
            (new StringBuilder("Starting async operation: ")).append(s);
            c();
            return;
        }
    }

    private void c(String s)
    {
        String _tmp = b;
        (new StringBuilder("In-app billing error: ")).append(s);
    }

    private void d()
    {
        if (d)
        {
            throw new IllegalStateException("IabHelper was disposed of, so it cannot be used.");
        } else
        {
            return;
        }
    }

    private void d(String s)
    {
        String _tmp = b;
        (new StringBuilder("In-app billing warning: ")).append(s);
    }

    public final l a(boolean flag, List list)
    {
        l l1;
        d();
        a("queryInventory");
        int i1;
        int j1;
        int i2;
        try
        {
            l1 = new l();
            i1 = a(l1, "inapp");
        }
        catch (RemoteException remoteexception)
        {
            throw new c(-1001, "Remote exception while refreshing inventory.", remoteexception);
        }
        catch (JSONException jsonexception)
        {
            throw new c(-1002, "Error parsing JSON response while refreshing inventory.", jsonexception);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            throw new c(-1008, "Exception", exception);
        }
        if (i1 == 0)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        throw new c(i1, "Error refreshing inventory (querying owned items).");
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        i2 = a("inapp", l1, list);
        if (i2 == 0)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        throw new c(i2, "Error refreshing inventory (querying prices of items).");
        if (!f)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        j1 = a(l1, "subs");
        if (j1 == 0)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        throw new c(j1, "Error refreshing inventory (querying owned subscriptions).");
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        int k1 = a("subs", l1, list);
        if (k1 == 0)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        throw new c(k1, "Error refreshing inventory (querying prices of subscriptions).");
        return l1;
    }

    public final void a()
    {
        c();
        c = false;
        if (k != null)
        {
            c();
            if (i != null && e)
            {
                i.unbindService(k);
            }
        }
        d = true;
        i = null;
        k = null;
        j = null;
        o = null;
    }

    public final void a(Activity activity, String s, h h1, String s1)
    {
        k k5;
        d();
        a("launchPurchaseFlow");
        b("launchPurchaseFlow");
        if (!"inapp".equals("subs") || f)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        k5 = new k(-1009, "Subscriptions are not available.");
        b();
        Bundle bundle;
        int i1;
        k k4;
        PendingIntent pendingintent;
        if (h1 != null)
        {
            try
            {
                h1.a(k5, null);
                return;
            }
            catch (android.content.IntentSender.SendIntentException sendintentexception)
            {
                c((new StringBuilder("SendIntentException while launching purchase flow for sku ")).append(s).toString());
                sendintentexception.printStackTrace();
                b();
                k k3 = new k(-1004, "Failed to send intent.");
                if (h1 != null)
                {
                    h1.a(k3, null);
                    return;
                }
            }
            catch (RemoteException remoteexception)
            {
                c((new StringBuilder("RemoteException while launching purchase flow for sku ")).append(s).toString());
                remoteexception.printStackTrace();
                b();
                k k2 = new k(-1001, "Remote exception while starting purchase flow");
                if (h1 != null)
                {
                    h1.a(k2, null);
                    return;
                }
            }
            catch (IllegalStateException illegalstateexception)
            {
                c((new StringBuilder("IllegalStateException:")).append(illegalstateexception.getMessage()).toString());
                illegalstateexception.printStackTrace();
                b();
                k k1 = new k(-1008, "illegal exception while starting purchase flow");
                if (h1 != null)
                {
                    h1.a(k1, null);
                }
            }
        }
        break MISSING_BLOCK_LABEL_480;
        (new StringBuilder("Constructing buy intent for ")).append(s).append(", item type: ").append("inapp");
        c();
        bundle = j.a(3, i.getPackageName(), s, "inapp", s1);
        i1 = a(bundle);
        if (i1 == 0)
        {
            break MISSING_BLOCK_LABEL_257;
        }
        c((new StringBuilder("Unable to buy item, Error response: ")).append(a(i1)).toString());
        b();
        k4 = new k(i1, "Unable to buy item");
        if (h1 == null)
        {
            break MISSING_BLOCK_LABEL_480;
        }
        h1.a(k4, null);
        return;
        pendingintent = (PendingIntent)bundle.getParcelable("BUY_INTENT");
        (new StringBuilder("Launching buy intent for ")).append(s).append(". Request code: 10001");
        c();
        l = 10001;
        o = h1;
        m = "inapp";
        activity.startIntentSenderForResult(pendingintent.getIntentSender(), 10001, new Intent(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue());
        return;
    }

    public final void a(i i1)
    {
        d();
        if (c)
        {
            throw new IllegalStateException("IAB helper is already set up.");
        }
        c();
        k = new e(this, i1);
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage("com.android.vending");
        List list = i.getPackageManager().queryIntentServices(intent, 0);
        if (list != null && !list.isEmpty())
        {
            e = i.bindService(intent, k, 1);
        } else
        if (i1 != null)
        {
            i1.a(new k(3, "Billing service unavailable on device."));
            return;
        }
    }

    public final void a(List list, j j1)
    {
        Handler handler = new Handler();
        d();
        a("queryInventory");
        b("refresh inventory");
        (new Thread(new f(this, list, j1, handler))).start();
    }

    public final boolean a(int i1, int j1, Intent intent)
    {
        int k1;
        String s;
        String s1;
        if (i1 != l)
        {
            return false;
        }
        d();
        a("handleActivityResult");
        b();
        if (intent == null)
        {
            c("Null data in IAB activity result.");
            k k8 = new k(-1002, "Null data in IAB result");
            if (o != null)
            {
                o.a(k8, null);
            }
            return true;
        }
        Object obj = intent.getExtras().get("RESPONSE_CODE");
        k k5;
        if (obj == null)
        {
            c("Intent with no response code, assuming OK (known issue)");
            k1 = 0;
        } else
        if (obj instanceof Integer)
        {
            k1 = ((Integer)obj).intValue();
        } else
        if (obj instanceof Long)
        {
            k1 = (int)((Long)obj).longValue();
        } else
        {
            c("Unexpected type for intent response code.");
            c(obj.getClass().getName());
            throw new RuntimeException((new StringBuilder("Unexpected type for intent response code: ")).append(obj.getClass().getName()).toString());
        }
        s = intent.getStringExtra("INAPP_PURCHASE_DATA");
        s1 = intent.getStringExtra("INAPP_DATA_SIGNATURE");
        if (j1 != -1 || k1 != 0) goto _L2; else goto _L1
_L1:
        c();
        (new StringBuilder("Purchase data: ")).append(s);
        c();
        (new StringBuilder("Data signature: ")).append(s1);
        c();
        (new StringBuilder("Extras: ")).append(intent.getExtras());
        c();
        (new StringBuilder("Expected item type: ")).append(m);
        c();
        if (s == null || s1 == null)
        {
            c("BUG: either purchaseData or dataSignature is null.");
            (new StringBuilder("Extras: ")).append(intent.getExtras().toString());
            c();
            k5 = new k(-1008, "IAB returned null purchaseData or dataSignature");
            if (o != null)
            {
                o.a(k5, null);
            }
            return true;
        }
        m m1;
        String s2;
        m1 = new m(m, s, s1);
        s2 = m1.d;
        if (com.aadhk.a.n.a(n, s, s1)) goto _L4; else goto _L3
_L3:
        c((new StringBuilder("Purchase signature verification FAILED for sku ")).append(s2).toString());
        k k7 = new k(-1003, (new StringBuilder("Signature verification failed for sku ")).append(s2).toString());
        if (o != null)
        {
            o.a(k7, m1);
        }
          goto _L5
_L4:
        try
        {
            c();
        }
        catch (JSONException jsonexception)
        {
            c("Failed to parse purchase data.");
            jsonexception.printStackTrace();
            k k6 = new k(-1002, "Failed to parse purchase data.");
            if (o != null)
            {
                o.a(k6, null);
            }
            return true;
        }
        if (o != null)
        {
            o.a(new k(0, "Success"), m1);
        }
_L6:
        return true;
_L2:
        if (j1 == -1)
        {
            (new StringBuilder("Result code was OK but in-app billing response was not OK: ")).append(a(k1));
            c();
            if (o != null)
            {
                k k4 = new k(k1, "Problem purchashing item.");
                o.a(k4, null);
            }
        } else
        if (j1 == 0)
        {
            (new StringBuilder("Purchase canceled - Response: ")).append(a(k1));
            c();
            k k3 = new k(-1005, "User canceled.");
            if (o != null)
            {
                o.a(k3, null);
            }
        } else
        {
            c((new StringBuilder("Purchase failed. Result code: ")).append(Integer.toString(j1)).append(". Response: ").append(a(k1)).toString());
            k k2 = new k(-1006, "Unknown purchase response.");
            if (o != null)
            {
                o.a(k2, null);
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
        return true;
    }

    public final void b()
    {
        (new StringBuilder("Ending async operation: ")).append(h);
        c();
        h = "";
        g = false;
    }

    final void c()
    {
        if (a)
        {
            String _tmp = b;
        }
    }
}
