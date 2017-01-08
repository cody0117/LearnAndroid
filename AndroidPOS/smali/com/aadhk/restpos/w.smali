.class final Lcom/aadhk/restpos/w;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/KitchenActivity;

.field private b:Ljava/util/Map;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/KitchenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/aadhk/restpos/w;->a:Lcom/aadhk/restpos/KitchenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/KitchenActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/w;-><init>(Lcom/aadhk/restpos/KitchenActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/aadhk/restpos/w;->a:Lcom/aadhk/restpos/KitchenActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/KitchenActivity;->c(Lcom/aadhk/restpos/KitchenActivity;)Lcom/aadhk/restpos/g/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/h;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/w;->b:Ljava/util/Map;

    .line 327
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/aadhk/restpos/w;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    iget-object v0, p0, Lcom/aadhk/restpos/w;->a:Lcom/aadhk/restpos/KitchenActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/w;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/aadhk/restpos/KitchenActivity;->a(Ljava/util/Map;)Ljava/util/List;

    .line 316
    iget-object v0, p0, Lcom/aadhk/restpos/w;->a:Lcom/aadhk/restpos/KitchenActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/KitchenActivity;->c()V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/w;->a:Lcom/aadhk/restpos/KitchenActivity;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/aadhk/restpos/w;->a:Lcom/aadhk/restpos/KitchenActivity;

    const v1, 0x7f0803a3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
