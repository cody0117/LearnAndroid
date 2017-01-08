.class final Lcom/aadhk/restpos/eb;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/TakeOrderActivity;

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
.method public constructor <init>(Lcom/aadhk/restpos/TakeOrderActivity;Lcom/aadhk/restpos/bean/Order;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 808
    iput-object p1, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    iput-object p2, p0, Lcom/aadhk/restpos/eb;->c:Lcom/aadhk/restpos/bean/Order;

    .line 810
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 814
    iget-object v0, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/g/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/eb;->c:Lcom/aadhk/restpos/bean/Order;

    iget-object v3, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v3}, Lcom/aadhk/restpos/TakeOrderActivity;->d(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/g/ad;->a(Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Order;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/eb;->b:Ljava/util/Map;

    .line 815
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const v4, 0x7f090060

    const/4 v3, 0x1

    .line 819
    iget-object v0, p0, Lcom/aadhk/restpos/eb;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 820
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 822
    iget-object v1, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/eb;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/TakeOrderActivity;Lcom/aadhk/restpos/bean/Order;)Lcom/aadhk/restpos/bean/Order;

    .line 823
    iget-object v0, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f080262

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 824
    iget-object v0, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v0, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->h(Lcom/aadhk/restpos/TakeOrderActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 827
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 828
    const-string v2, "bundleOrdered"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 829
    new-instance v2, Lcom/aadhk/restpos/d/dr;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/dr;-><init>()V

    .line 830
    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 832
    iget-object v1, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->i(Lcom/aadhk/restpos/TakeOrderActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 833
    const v1, 0x7f09005f

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 834
    iget-object v1, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->j(Lcom/aadhk/restpos/TakeOrderActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    iget-object v1, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    new-instance v2, Lcom/aadhk/restpos/d/al;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/al;-><init>()V

    invoke-static {v1, v2}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/TakeOrderActivity;Lcom/aadhk/restpos/d/al;)Lcom/aadhk/restpos/d/al;

    .line 836
    iget-object v1, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->k(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/d/al;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 844
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 853
    :goto_1
    return-void

    .line 838
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    new-instance v2, Lcom/aadhk/restpos/d/ag;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/ag;-><init>()V

    invoke-static {v1, v2}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/TakeOrderActivity;Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/d/ag;

    .line 839
    iget-object v1, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->l(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/d/ag;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 842
    :cond_1
    invoke-virtual {v0, v4, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 845
    :cond_2
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 846
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 847
    iget-object v0, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 848
    :cond_4
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 849
    iget-object v0, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 851
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/eb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
