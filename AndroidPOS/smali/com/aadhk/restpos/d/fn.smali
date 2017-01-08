.class final Lcom/aadhk/restpos/d/fn;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ey;

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


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/ey;)V
    .locals 0
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/ey;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 799
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/fn;-><init>(Lcom/aadhk/restpos/d/ey;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 803
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->q(Lcom/aadhk/restpos/d/ey;)V

    .line 804
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->r(Lcom/aadhk/restpos/d/ey;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->l(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    new-instance v0, Lcom/aadhk/product/library/a/e;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    iget-object v1, v1, Lcom/aadhk/restpos/d/ey;->c:Lcom/aadhk/product/library/a/c;

    invoke-direct {v0, v1}, Lcom/aadhk/product/library/a/e;-><init>(Lcom/aadhk/product/library/a/c;)V

    .line 806
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->p(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/g/s;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/s;->a(Lcom/aadhk/restpos/bean/Order;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fn;->b:Ljava/util/Map;

    .line 809
    return-void
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 813
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 814
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 815
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->k(Lcom/aadhk/restpos/d/ey;)I

    move-result v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->s(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/OrderPayment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderPayment;->getAmount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v3}, Lcom/aadhk/restpos/d/ey;->t(Lcom/aadhk/restpos/d/ey;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 817
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->k(Lcom/aadhk/restpos/d/ey;)I

    move-result v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->s(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/OrderPayment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderPayment;->getPaid()D

    move-result-wide v3

    iget-object v1, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->t(Lcom/aadhk/restpos/d/ey;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v4, v1}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 818
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->k(Lcom/aadhk/restpos/d/ey;)I

    move-result v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->s(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/OrderPayment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderPayment;->getChangeAmt()D

    move-result-wide v4

    iget-object v1, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->t(Lcom/aadhk/restpos/d/ey;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v5, v1}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 819
    new-instance v0, Lcom/aadhk/restpos/c/bu;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v1

    iget-object v5, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v5}, Lcom/aadhk/restpos/d/ey;->l(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/restpos/c/bu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 820
    new-instance v1, Lcom/aadhk/restpos/d/fo;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/fo;-><init>(Lcom/aadhk/restpos/d/fn;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bu;->a(Lcom/aadhk/restpos/c/bv;)V

    .line 841
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bu;->show()V

    .line 861
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->isHasUnpaidBill()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/util/q;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Z)V

    .line 845
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->finish()V

    goto :goto_0

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 847
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->f()V

    goto :goto_0

    .line 849
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 853
    :cond_3
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 854
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 855
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 856
    :cond_5
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 857
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 859
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
