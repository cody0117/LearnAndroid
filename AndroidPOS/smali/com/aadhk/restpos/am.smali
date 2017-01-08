.class final Lcom/aadhk/restpos/am;
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
    .line 332
    iput-object p1, p0, Lcom/aadhk/restpos/am;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/MgrCategoryActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/am;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/aadhk/restpos/am;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->b(Lcom/aadhk/restpos/MgrCategoryActivity;)Lcom/aadhk/restpos/g/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/j;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/am;->b:Ljava/util/Map;

    .line 337
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 340
    iget-object v0, p0, Lcom/aadhk/restpos/am;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 341
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/aadhk/restpos/am;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/am;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->a(Lcom/aadhk/restpos/MgrCategoryActivity;Ljava/util/List;)Ljava/util/List;

    .line 343
    iget-object v0, p0, Lcom/aadhk/restpos/am;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->c(Lcom/aadhk/restpos/MgrCategoryActivity;)V

    .line 352
    :goto_0
    return-void

    .line 344
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/am;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 346
    iget-object v0, p0, Lcom/aadhk/restpos/am;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 347
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/aadhk/restpos/am;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/am;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
