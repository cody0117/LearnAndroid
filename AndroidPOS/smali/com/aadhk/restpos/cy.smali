.class final Lcom/aadhk/restpos/cy;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/ReceiptListActivity;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/aadhk/restpos/bean/Order;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/ReceiptListActivity;Lcom/aadhk/restpos/bean/Order;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/aadhk/restpos/cy;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/aadhk/restpos/cy;->c:Lcom/aadhk/restpos/bean/Order;

    .line 86
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/cy;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->a(Lcom/aadhk/restpos/ReceiptListActivity;)Lcom/aadhk/restpos/g/v;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cy;->c:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/v;->a(Lcom/aadhk/restpos/bean/Order;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/cy;->b:Ljava/util/Map;

    .line 90
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const v4, 0x7f09005e

    const/4 v2, 0x1

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/cy;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/cy;->b:Ljava/util/Map;

    const-string v1, "serviceData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 96
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getOrderItems()Ljava/util/List;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/aadhk/restpos/cy;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    iget-object v2, v2, Lcom/aadhk/restpos/ReceiptListActivity;->c:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    new-instance v2, Lcom/aadhk/restpos/util/e;

    invoke-direct {v2}, Lcom/aadhk/restpos/util/e;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 100
    :cond_0
    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderItems(Ljava/util/List;)V

    .line 101
    iget-object v1, p0, Lcom/aadhk/restpos/cy;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/ReceiptListActivity;->b(Lcom/aadhk/restpos/ReceiptListActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/aadhk/restpos/cy;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    new-instance v3, Lcom/aadhk/restpos/d/gz;

    invoke-direct {v3}, Lcom/aadhk/restpos/d/gz;-><init>()V

    invoke-static {v2, v3}, Lcom/aadhk/restpos/ReceiptListActivity;->a(Lcom/aadhk/restpos/ReceiptListActivity;Lcom/aadhk/restpos/d/gz;)Lcom/aadhk/restpos/d/gz;

    .line 103
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 104
    const-string v3, "bundleOrder"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/cy;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->c(Lcom/aadhk/restpos/ReceiptListActivity;)Lcom/aadhk/restpos/d/gz;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/d/gz;->setArguments(Landroid/os/Bundle;)V

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/cy;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->d(Lcom/aadhk/restpos/ReceiptListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/cy;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/ReceiptListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/cy;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->c(Lcom/aadhk/restpos/ReceiptListActivity;)Lcom/aadhk/restpos/d/gz;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 113
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 122
    :goto_1
    return-void

    .line 110
    :cond_1
    const v0, 0x7f09005c

    iget-object v2, p0, Lcom/aadhk/restpos/cy;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/ReceiptListActivity;->c(Lcom/aadhk/restpos/ReceiptListActivity;)Lcom/aadhk/restpos/d/gz;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 111
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 114
    :cond_2
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/cy;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/cy;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 117
    :cond_4
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    iget-object v0, p0, Lcom/aadhk/restpos/cy;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/cy;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
