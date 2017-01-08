.class public final Lcom/aadhk/a/d;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Ljava/lang/String;

.field i:Landroid/content/Context;

.field j:Lcom/android/vending/billing/IInAppBillingService;

.field k:Landroid/content/ServiceConnection;

.field l:I

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Lcom/aadhk/a/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v1, p0, Lcom/aadhk/a/d;->a:Z

    .line 73
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/aadhk/a/d;->b:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lcom/aadhk/a/d;->c:Z

    .line 79
    iput-boolean v1, p0, Lcom/aadhk/a/d;->d:Z

    .line 81
    iput-boolean v1, p0, Lcom/aadhk/a/d;->e:Z

    .line 84
    iput-boolean v1, p0, Lcom/aadhk/a/d;->f:Z

    .line 88
    iput-boolean v1, p0, Lcom/aadhk/a/d;->g:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/aadhk/a/d;->h:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aadhk/a/d;->n:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/a/d;->i:Landroid/content/Context;

    .line 188
    iput-object p2, p0, Lcom/aadhk/a/d;->n:Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 190
    return-void
.end method

.method private a(Landroid/os/Bundle;)I
    .locals 4
    .parameter

    .prologue
    .line 830
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 831
    if-nez v0, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 833
    const/4 v0, 0x0

    .line 836
    :goto_0
    return v0

    .line 835
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 836
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 838
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-direct {p0, v1}, Lcom/aadhk/a/d;->c(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aadhk/a/d;->c(Ljava/lang/String;)V

    .line 840
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for bundle response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Lcom/aadhk/a/l;Ljava/lang/String;)I
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Querying owned items, item type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Package name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/a/d;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 884
    const/4 v0, 0x0

    move-object v1, v0

    move v0, v4

    .line 887
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling getPurchases with continuation token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 888
    iget-object v2, p0, Lcom/aadhk/a/d;->j:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v5, p0, Lcom/aadhk/a/d;->i:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5, p2, v1}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 891
    invoke-direct {p0, v6}, Lcom/aadhk/a/d;->a(Landroid/os/Bundle;)I

    move-result v1

    .line 892
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Owned items response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 893
    if-eqz v1, :cond_1

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getPurchases() failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/aadhk/a/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    move v4, v1

    .line 939
    :cond_0
    :goto_1
    return v4

    .line 897
    :cond_1
    const-string v1, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 898
    const-string v1, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 899
    const-string v1, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 900
    :cond_2
    const-string v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-direct {p0, v0}, Lcom/aadhk/a/d;->c(Ljava/lang/String;)V

    .line 901
    const/16 v4, -0x3ea

    goto :goto_1

    .line 905
    :cond_3
    const-string v1, "INAPP_PURCHASE_ITEM_LIST"

    .line 904
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 907
    const-string v1, "INAPP_PURCHASE_DATA_LIST"

    .line 906
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 909
    const-string v1, "INAPP_DATA_SIGNATURE_LIST"

    .line 908
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    move v3, v4

    move v5, v0

    .line 911
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_4

    .line 935
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Continuation token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 937
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 939
    if-eqz v5, :cond_0

    const/16 v4, -0x3eb

    goto :goto_1

    .line 912
    :cond_4
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 913
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 914
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 915
    iget-object v10, p0, Lcom/aadhk/a/d;->n:Ljava/lang/String;

    invoke-static {v10, v0, v1}, Lcom/aadhk/a/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 916
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Sku is owned: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 917
    new-instance v2, Lcom/aadhk/a/m;

    invoke-direct {v2, p2, v0, v1}, Lcom/aadhk/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget-object v1, v2, Lcom/aadhk/a/m;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 920
    const-string v1, "BUG: empty/null token!"

    invoke-direct {p0, v1}, Lcom/aadhk/a/d;->d(Ljava/lang/String;)V

    .line 921
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "Purchase data: "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 925
    :cond_5
    iget-object v0, p1, Lcom/aadhk/a/l;->b:Ljava/util/Map;

    iget-object v1, v2, Lcom/aadhk/a/m;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v5

    .line 911
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v1

    goto :goto_2

    .line 928
    :cond_6
    const-string v2, "Purchase signature verification **FAILED**. Not adding item."

    invoke-direct {p0, v2}, Lcom/aadhk/a/d;->d(Ljava/lang/String;)V

    .line 929
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "   Purchase data: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "   Signature: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 931
    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    move-object v1, v0

    move v0, v5

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/aadhk/a/l;Ljava/util/List;)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aadhk/a/l;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 944
    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 945
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 946
    invoke-virtual {p2, p1}, Lcom/aadhk/a/l;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 947
    if-eqz p3, :cond_1

    .line 948
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 955
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 956
    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    move v0, v1

    .line 985
    :goto_1
    return v0

    .line 948
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 949
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 950
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 960
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 961
    const-string v3, "ITEM_ID_LIST"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 962
    iget-object v2, p0, Lcom/aadhk/a/d;->j:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/aadhk/a/d;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1, v0}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 965
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 966
    invoke-direct {p0, v0}, Lcom/aadhk/a/d;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 967
    if-eqz v0, :cond_4

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSkuDetails() failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/aadhk/a/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    goto :goto_1

    .line 972
    :cond_4
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-direct {p0, v0}, Lcom/aadhk/a/d;->c(Ljava/lang/String;)V

    .line 973
    const/16 v0, -0x3ea

    goto :goto_1

    .line 978
    :cond_5
    const-string v2, "DETAILS_LIST"

    .line 977
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 980
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 985
    goto :goto_1

    .line 980
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 981
    new-instance v3, Lcom/aadhk/a/o;

    invoke-direct {v3, p1, v0}, Lcom/aadhk/a/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Got sku details: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 983
    iget-object v0, p2, Lcom/aadhk/a/l;->a:Ljava/util/Map;

    iget-object v4, v3, Lcom/aadhk/a/o;->b:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 793
    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    .line 796
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 797
    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    .line 806
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 808
    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    .line 809
    rsub-int v0, p0, -0x3e8

    .line 810
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    .line 816
    :goto_0
    return-object v0

    .line 811
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 813
    :cond_1
    if-ltz p0, :cond_2

    array-length v1, v0

    if-lt p0, v1, :cond_3

    .line 814
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 816
    :cond_3
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/aadhk/a/d;->c:Z

    if-nez v0, :cond_0

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aadhk/a/d;->c(Ljava/lang/String;)V

    .line 824
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 861
    iget-boolean v0, p0, Lcom/aadhk/a/d;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/a/d;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_0
    iput-object p1, p0, Lcom/aadhk/a/d;->h:Ljava/lang/String;

    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/a/d;->g:Z

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 866
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/aadhk/a/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In-app billing error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/aadhk/a/d;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/aadhk/a/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In-app billing warning: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    return-void
.end method


# virtual methods
.method public final a(ZLjava/util/List;)Lcom/aadhk/a/l;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aadhk/a/l;"
        }
    .end annotation

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/aadhk/a/d;->d()V

    .line 577
    const-string v0, "queryInventory"

    invoke-direct {p0, v0}, Lcom/aadhk/a/d;->a(Ljava/lang/String;)V

    .line 579
    :try_start_0
    new-instance v0, Lcom/aadhk/a/l;

    invoke-direct {v0}, Lcom/aadhk/a/l;-><init>()V

    .line 580
    const-string v1, "inapp"

    invoke-direct {p0, v0, v1}, Lcom/aadhk/a/d;->a(Lcom/aadhk/a/l;Ljava/lang/String;)I

    move-result v1

    .line 581
    if-eqz v1, :cond_0

    .line 582
    new-instance v0, Lcom/aadhk/a/c;

    const-string v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lcom/aadhk/a/c;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 609
    :catch_0
    move-exception v0

    .line 610
    new-instance v1, Lcom/aadhk/a/c;

    const/16 v2, -0x3e9

    const-string v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/aadhk/a/c;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 585
    :cond_0
    if-eqz p1, :cond_1

    .line 586
    :try_start_1
    const-string v1, "inapp"

    invoke-direct {p0, v1, v0, p2}, Lcom/aadhk/a/d;->a(Ljava/lang/String;Lcom/aadhk/a/l;Ljava/util/List;)I

    move-result v1

    .line 587
    if-eqz v1, :cond_1

    .line 588
    new-instance v0, Lcom/aadhk/a/c;

    const-string v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lcom/aadhk/a/c;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 612
    :catch_1
    move-exception v0

    .line 613
    new-instance v1, Lcom/aadhk/a/c;

    const/16 v2, -0x3ea

    const-string v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/aadhk/a/c;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 593
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/aadhk/a/d;->f:Z

    if-eqz v1, :cond_3

    .line 594
    const-string v1, "subs"

    invoke-direct {p0, v0, v1}, Lcom/aadhk/a/d;->a(Lcom/aadhk/a/l;Ljava/lang/String;)I

    move-result v1

    .line 595
    if-eqz v1, :cond_2

    .line 596
    new-instance v0, Lcom/aadhk/a/c;

    const-string v2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/aadhk/a/c;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 614
    :catch_2
    move-exception v0

    .line 615
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 616
    new-instance v1, Lcom/aadhk/a/c;

    const/16 v2, -0x3f0

    const-string v3, "Exception"

    invoke-direct {v1, v2, v3, v0}, Lcom/aadhk/a/c;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 599
    :cond_2
    if-eqz p1, :cond_3

    .line 600
    :try_start_3
    const-string v1, "subs"

    invoke-direct {p0, v1, v0, p2}, Lcom/aadhk/a/d;->a(Ljava/lang/String;Lcom/aadhk/a/l;Ljava/util/List;)I

    move-result v1

    .line 601
    if-eqz v1, :cond_3

    .line 602
    new-instance v0, Lcom/aadhk/a/c;

    const-string v2, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/aadhk/a/c;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 607
    :cond_3
    return-object v0
.end method

.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 313
    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aadhk/a/d;->c:Z

    .line 315
    iget-object v0, p0, Lcom/aadhk/a/d;->k:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 317
    iget-object v0, p0, Lcom/aadhk/a/d;->i:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aadhk/a/d;->e:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/aadhk/a/d;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/aadhk/a/d;->k:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 321
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/a/d;->d:Z

    .line 322
    iput-object v2, p0, Lcom/aadhk/a/d;->i:Landroid/content/Context;

    .line 323
    iput-object v2, p0, Lcom/aadhk/a/d;->k:Landroid/content/ServiceConnection;

    .line 324
    iput-object v2, p0, Lcom/aadhk/a/d;->j:Lcom/android/vending/billing/IInAppBillingService;

    .line 325
    iput-object v2, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    .line 326
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/aadhk/a/h;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 365
    const-string v4, "inapp"

    :try_start_0
    invoke-direct {p0}, Lcom/aadhk/a/d;->d()V

    const-string v0, "launchPurchaseFlow"

    invoke-direct {p0, v0}, Lcom/aadhk/a/d;->a(Ljava/lang/String;)V

    const-string v0, "launchPurchaseFlow"

    invoke-direct {p0, v0}, Lcom/aadhk/a/d;->b(Ljava/lang/String;)V

    const-string v0, "subs"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/aadhk/a/d;->f:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/aadhk/a/k;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/aadhk/a/d;->b()V

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/aadhk/a/h;->a(Lcom/aadhk/a/k;Lcom/aadhk/a/m;)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constructing buy intent for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    iget-object v0, p0, Lcom/aadhk/a/d;->j:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/aadhk/a/d;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aadhk/a/d;->a(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to buy item, Error response: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/aadhk/a/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aadhk/a/d;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aadhk/a/d;->b()V

    new-instance v0, Lcom/aadhk/a/k;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/aadhk/a/h;->a(Lcom/aadhk/a/k;Lcom/aadhk/a/m;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aadhk/a/d;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/aadhk/a/d;->b()V

    new-instance v0, Lcom/aadhk/a/k;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {p3, v0, v7}, Lcom/aadhk/a/h;->a(Lcom/aadhk/a/k;Lcom/aadhk/a/m;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: 10001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    const/16 v1, 0x2711

    iput v1, p0, Lcom/aadhk/a/d;->l:I

    iput-object p3, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    iput-object v4, p0, Lcom/aadhk/a/d;->m:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x2711

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aadhk/a/d;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/aadhk/a/d;->b()V

    new-instance v0, Lcom/aadhk/a/k;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {p3, v0, v7}, Lcom/aadhk/a/h;->a(Lcom/aadhk/a/k;Lcom/aadhk/a/m;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IllegalStateException:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aadhk/a/d;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/aadhk/a/d;->b()V

    new-instance v0, Lcom/aadhk/a/k;

    const/16 v1, -0x3f0

    const-string v2, "illegal exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {p3, v0, v7}, Lcom/aadhk/a/h;->a(Lcom/aadhk/a/k;Lcom/aadhk/a/m;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/aadhk/a/i;)V
    .locals 4
    .parameter

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/aadhk/a/d;->d()V

    .line 229
    iget-boolean v0, p0, Lcom/aadhk/a/d;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 233
    new-instance v0, Lcom/aadhk/a/e;

    invoke-direct {v0, p0, p1}, Lcom/aadhk/a/e;-><init>(Lcom/aadhk/a/d;Lcom/aadhk/a/i;)V

    iput-object v0, p0, Lcom/aadhk/a/d;->k:Landroid/content/ServiceConnection;

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Lcom/aadhk/a/d;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 292
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/aadhk/a/d;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/aadhk/a/d;->k:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/a/d;->e:Z

    .line 304
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    if-eqz p1, :cond_1

    .line 300
    new-instance v0, Lcom/aadhk/a/k;

    const/4 v1, 0x3

    .line 301
    const-string v2, "Billing service unavailable on device."

    .line 300
    invoke-direct {v0, v1, v2}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    .line 299
    invoke-interface {p1, v0}, Lcom/aadhk/a/i;->a(Lcom/aadhk/a/k;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcom/aadhk/a/j;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aadhk/a/j;",
            ")V"
        }
    .end annotation

    .prologue
    .line 647
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 648
    invoke-direct {p0}, Lcom/aadhk/a/d;->d()V

    .line 649
    const-string v1, "queryInventory"

    invoke-direct {p0, v1}, Lcom/aadhk/a/d;->a(Ljava/lang/String;)V

    .line 650
    const-string v1, "refresh inventory"

    invoke-direct {p0, v1}, Lcom/aadhk/a/d;->b(Ljava/lang/String;)V

    .line 651
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/aadhk/a/f;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/aadhk/a/f;-><init>(Lcom/aadhk/a/d;Ljava/util/List;Lcom/aadhk/a/j;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 677
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 678
    return-void
.end method

.method public final a(IILandroid/content/Intent;)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/16 v8, -0x3ea

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 475
    iget v0, p0, Lcom/aadhk/a/d;->l:I

    if-eq p1, v0, :cond_0

    .line 554
    :goto_0
    return v1

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/aadhk/a/d;->d()V

    .line 478
    const-string v0, "handleActivityResult"

    invoke-direct {p0, v0}, Lcom/aadhk/a/d;->a(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/aadhk/a/d;->b()V

    .line 483
    if-nez p3, :cond_2

    .line 484
    const-string v0, "Null data in IAB activity result."

    invoke-direct {p0, v0}, Lcom/aadhk/a/d;->c(Ljava/lang/String;)V

    .line 485
    new-instance v0, Lcom/aadhk/a/k;

    const-string v1, "Null data in IAB result"

    invoke-direct {v0, v8, v1}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    .line 486
    iget-object v1, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    invoke-interface {v1, v0, v7}, Lcom/aadhk/a/h;->a(Lcom/aadhk/a/k;Lcom/aadhk/a/m;)V

    :cond_1
    move v1, v2

    .line 487
    goto :goto_0

    .line 490
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "Intent with no response code, assuming OK (known issue)"

    invoke-direct {p0, v0}, Lcom/aadhk/a/d;->c(Ljava/lang/String;)V

    move v0, v1

    .line 491
    :goto_1
    const-string v3, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 492
    const-string v4, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 494
    if-ne p2, v5, :cond_d

    if-nez v0, :cond_d

    .line 495
    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Purchase data: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Data signature: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Extras: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Expected item type: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/aadhk/a/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 501
    if-eqz v3, :cond_3

    if-nez v4, :cond_8

    .line 502
    :cond_3
    const-string v0, "BUG: either purchaseData or dataSignature is null."

    invoke-direct {p0, v0}, Lcom/aadhk/a/d;->c(Ljava/lang/String;)V

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extras: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 504
    new-instance v0, Lcom/aadhk/a/k;

    const/16 v1, -0x3f0

    const-string v3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v1, v3}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    invoke-interface {v1, v0, v7}, Lcom/aadhk/a/h;->a(Lcom/aadhk/a/k;Lcom/aadhk/a/m;)V

    :cond_4
    move v1, v2

    .line 506
    goto/16 :goto_0

    .line 490
    :cond_5
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_1

    :cond_6
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_7

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v0, v3

    goto/16 :goto_1

    :cond_7
    const-string v1, "Unexpected type for intent response code."

    invoke-direct {p0, v1}, Lcom/aadhk/a/d;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aadhk/a/d;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for intent response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    :cond_8
    :try_start_0
    new-instance v0, Lcom/aadhk/a/m;

    iget-object v5, p0, Lcom/aadhk/a/d;->m:Ljava/lang/String;

    invoke-direct {v0, v5, v3, v4}, Lcom/aadhk/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v5, v0, Lcom/aadhk/a/m;->d:Ljava/lang/String;

    .line 515
    iget-object v6, p0, Lcom/aadhk/a/d;->n:Ljava/lang/String;

    invoke-static {v6, v3, v4}, Lcom/aadhk/a/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Purchase signature verification FAILED for sku "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aadhk/a/d;->c(Ljava/lang/String;)V

    .line 517
    new-instance v1, Lcom/aadhk/a/k;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Signature verification failed for sku "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    .line 518
    iget-object v3, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    invoke-interface {v3, v1, v0}, Lcom/aadhk/a/h;->a(Lcom/aadhk/a/k;Lcom/aadhk/a/m;)V

    :cond_9
    move v1, v2

    .line 519
    goto/16 :goto_0

    .line 521
    :cond_a
    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    iget-object v3, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    if-eqz v3, :cond_b

    .line 532
    iget-object v3, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    new-instance v4, Lcom/aadhk/a/k;

    const-string v5, "Success"

    invoke-direct {v4, v1, v5}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4, v0}, Lcom/aadhk/a/h;->a(Lcom/aadhk/a/k;Lcom/aadhk/a/m;)V

    :cond_b
    :goto_2
    move v1, v2

    .line 554
    goto/16 :goto_0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    const-string v1, "Failed to parse purchase data."

    invoke-direct {p0, v1}, Lcom/aadhk/a/d;->c(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 526
    new-instance v0, Lcom/aadhk/a/k;

    const-string v1, "Failed to parse purchase data."

    invoke-direct {v0, v8, v1}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    invoke-interface {v1, v0, v7}, Lcom/aadhk/a/h;->a(Lcom/aadhk/a/k;Lcom/aadhk/a/m;)V

    :cond_c
    move v1, v2

    .line 528
    goto/16 :goto_0

    .line 535
    :cond_d
    if-ne p2, v5, :cond_e

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/aadhk/a/d;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 538
    iget-object v1, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    if-eqz v1, :cond_b

    .line 539
    new-instance v1, Lcom/aadhk/a/k;

    const-string v3, "Problem purchashing item."

    invoke-direct {v1, v0, v3}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    invoke-interface {v0, v1, v7}, Lcom/aadhk/a/h;->a(Lcom/aadhk/a/k;Lcom/aadhk/a/m;)V

    goto :goto_2

    .line 543
    :cond_e
    if-nez p2, :cond_f

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Purchase canceled - Response: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/aadhk/a/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 545
    new-instance v0, Lcom/aadhk/a/k;

    const/16 v1, -0x3ed

    const-string v3, "User canceled."

    invoke-direct {v0, v1, v3}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    invoke-interface {v1, v0, v7}, Lcom/aadhk/a/h;->a(Lcom/aadhk/a/k;Lcom/aadhk/a/m;)V

    goto :goto_2

    .line 549
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Purchase failed. Result code: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 550
    const-string v3, ". Response: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/aadhk/a/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-direct {p0, v0}, Lcom/aadhk/a/d;->c(Ljava/lang/String;)V

    .line 551
    new-instance v0, Lcom/aadhk/a/k;

    const/16 v1, -0x3ee

    const-string v3, "Unknown purchase response."

    invoke-direct {v0, v1, v3}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/aadhk/a/d;->o:Lcom/aadhk/a/h;

    invoke-interface {v1, v0, v7}, Lcom/aadhk/a/h;->a(Lcom/aadhk/a/k;Lcom/aadhk/a/m;)V

    goto/16 :goto_2
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aadhk/a/d;->c()V

    .line 871
    const-string v0, ""

    iput-object v0, p0, Lcom/aadhk/a/d;->h:Ljava/lang/String;

    .line 872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aadhk/a/d;->g:Z

    .line 873
    return-void
.end method

.method final c()V
    .locals 1

    .prologue
    .line 1030
    iget-boolean v0, p0, Lcom/aadhk/a/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/a/d;->b:Ljava/lang/String;

    .line 1031
    :cond_0
    return-void
.end method
