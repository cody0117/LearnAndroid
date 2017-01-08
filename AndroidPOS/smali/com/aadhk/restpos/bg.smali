.class final Lcom/aadhk/restpos/bg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/MgrTableActivity;

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
.method private constructor <init>(Lcom/aadhk/restpos/MgrTableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/aadhk/restpos/bg;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/MgrTableActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/bg;-><init>(Lcom/aadhk/restpos/MgrTableActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/aadhk/restpos/bg;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableActivity;->c(Lcom/aadhk/restpos/MgrTableActivity;)Lcom/aadhk/restpos/g/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/n;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bg;->b:Ljava/util/Map;

    .line 423
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 426
    iget-object v0, p0, Lcom/aadhk/restpos/bg;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 427
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/aadhk/restpos/bg;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableActivity;->a(Lcom/aadhk/restpos/MgrTableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 429
    iget-object v0, p0, Lcom/aadhk/restpos/bg;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableActivity;->d(Lcom/aadhk/restpos/MgrTableActivity;)V

    .line 442
    :goto_0
    return-void

    .line 430
    :cond_0
    const-string v1, "25"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/bg;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 432
    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 433
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_0

    .line 434
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/bg;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 436
    iget-object v0, p0, Lcom/aadhk/restpos/bg;->a:Lcom/aadhk/restpos/MgrTableActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 437
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 438
    iget-object v0, p0, Lcom/aadhk/restpos/bg;->a:Lcom/aadhk/restpos/MgrTableActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 440
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/bg;->a:Lcom/aadhk/restpos/MgrTableActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
