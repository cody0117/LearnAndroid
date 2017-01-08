.class final Lcom/aadhk/restpos/d/cc;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/bu;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/bu;)V
    .locals 0
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/aadhk/restpos/d/cc;->a:Lcom/aadhk/restpos/d/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/bu;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 644
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/cc;-><init>(Lcom/aadhk/restpos/d/bu;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/aadhk/restpos/d/cc;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bu;->k(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/g/k;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/cc;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bu;->g(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/bean/Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/k;->a(Lcom/aadhk/restpos/bean/Item;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cc;->b:Ljava/util/Map;

    .line 650
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 654
    iget-object v0, p0, Lcom/aadhk/restpos/d/cc;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 655
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    iget-object v0, p0, Lcom/aadhk/restpos/d/cc;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bu;->l(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->a()V

    .line 657
    iget-object v0, p0, Lcom/aadhk/restpos/d/cc;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bu;->l(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/cc;->a:Lcom/aadhk/restpos/d/bu;

    const v2, 0x7f08028f

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/d/bu;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 666
    :goto_0
    return-void

    .line 658
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/cc;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bu;->l(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 660
    iget-object v0, p0, Lcom/aadhk/restpos/d/cc;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bu;->l(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 661
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 662
    iget-object v0, p0, Lcom/aadhk/restpos/d/cc;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bu;->l(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/cc;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bu;->l(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
