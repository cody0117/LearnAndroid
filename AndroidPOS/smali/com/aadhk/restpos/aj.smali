.class final Lcom/aadhk/restpos/aj;
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

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/MgrCategoryActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    iput-object p1, p0, Lcom/aadhk/restpos/aj;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p2, p0, Lcom/aadhk/restpos/aj;->c:Ljava/util/List;

    .line 360
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/aadhk/restpos/aj;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->b(Lcom/aadhk/restpos/MgrCategoryActivity;)Lcom/aadhk/restpos/g/j;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/aj;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/j;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/aj;->b:Ljava/util/Map;

    .line 364
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 367
    iget-object v0, p0, Lcom/aadhk/restpos/aj;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/aadhk/restpos/aj;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/aj;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->a(Lcom/aadhk/restpos/MgrCategoryActivity;Ljava/util/List;)Ljava/util/List;

    .line 370
    iget-object v0, p0, Lcom/aadhk/restpos/aj;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->c(Lcom/aadhk/restpos/MgrCategoryActivity;)V

    .line 379
    :goto_0
    return-void

    .line 371
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/aj;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 373
    iget-object v0, p0, Lcom/aadhk/restpos/aj;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 374
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/aadhk/restpos/aj;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/aj;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
