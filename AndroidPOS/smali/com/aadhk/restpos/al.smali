.class final Lcom/aadhk/restpos/al;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/MgrCategoryActivity;

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
.method private constructor <init>(Lcom/aadhk/restpos/MgrCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/aadhk/restpos/al;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/MgrCategoryActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/al;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/aadhk/restpos/al;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->b(Lcom/aadhk/restpos/MgrCategoryActivity;)Lcom/aadhk/restpos/g/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/j;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/al;->b:Ljava/util/Map;

    .line 472
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 475
    iget-object v0, p0, Lcom/aadhk/restpos/al;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 476
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/aadhk/restpos/al;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->a(Lcom/aadhk/restpos/MgrCategoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 478
    iget-object v0, p0, Lcom/aadhk/restpos/al;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->c(Lcom/aadhk/restpos/MgrCategoryActivity;)V

    .line 491
    :goto_0
    return-void

    .line 479
    :cond_0
    const-string v1, "25"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/al;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 481
    const v1, 0x7f0800ce

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 482
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_0

    .line 483
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/al;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 485
    iget-object v0, p0, Lcom/aadhk/restpos/al;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 486
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 487
    iget-object v0, p0, Lcom/aadhk/restpos/al;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 489
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/al;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
