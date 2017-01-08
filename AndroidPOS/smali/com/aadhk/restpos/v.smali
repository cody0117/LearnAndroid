.class final Lcom/aadhk/restpos/v;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/KitchenActivity;

.field private b:Ljava/util/Map;

.field private c:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/KitchenActivity;Ljava/net/Socket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/aadhk/restpos/v;->a:Lcom/aadhk/restpos/KitchenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p2, p0, Lcom/aadhk/restpos/v;->c:Ljava/net/Socket;

    .line 435
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/aadhk/restpos/v;->a:Lcom/aadhk/restpos/KitchenActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/KitchenActivity;->c(Lcom/aadhk/restpos/KitchenActivity;)Lcom/aadhk/restpos/g/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/h;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/v;->b:Ljava/util/Map;

    .line 459
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/aadhk/restpos/v;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 440
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    iget-object v0, p0, Lcom/aadhk/restpos/v;->b:Ljava/util/Map;

    const-string v1, "serviceData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/aadhk/restpos/KitchenActivity;->a(Ljava/util/List;)Ljava/util/List;

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/v;->c:Ljava/net/Socket;

    invoke-static {}, Lcom/aadhk/restpos/KitchenActivity;->j()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/DataTransferService;->a(Ljava/net/Socket;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 449
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 450
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/v;->a:Lcom/aadhk/restpos/KitchenActivity;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/aadhk/restpos/v;->a:Lcom/aadhk/restpos/KitchenActivity;

    const v1, 0x7f0803a3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
