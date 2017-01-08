.class final Lcom/aadhk/restpos/bf;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/MgrTableActivity;

.field private b:J

.field private c:Ljava/util/Map;
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
.method public constructor <init>(Lcom/aadhk/restpos/MgrTableActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/aadhk/restpos/bf;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-wide p2, p0, Lcom/aadhk/restpos/bf;->b:J

    .line 392
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/aadhk/restpos/bf;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableActivity;->c(Lcom/aadhk/restpos/MgrTableActivity;)Lcom/aadhk/restpos/g/n;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bf;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/n;->a(J)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bf;->c:Ljava/util/Map;

    .line 396
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 399
    iget-object v0, p0, Lcom/aadhk/restpos/bf;->c:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 400
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/aadhk/restpos/bf;->a:Lcom/aadhk/restpos/MgrTableActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/bf;->c:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/MgrTableActivity;->a(Lcom/aadhk/restpos/MgrTableActivity;Ljava/util/List;)Ljava/util/List;

    .line 402
    iget-object v0, p0, Lcom/aadhk/restpos/bf;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableActivity;->d(Lcom/aadhk/restpos/MgrTableActivity;)V

    .line 415
    :goto_0
    return-void

    .line 403
    :cond_0
    const-string v1, "25"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/bf;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 405
    iget-object v1, p0, Lcom/aadhk/restpos/bf;->a:Lcom/aadhk/restpos/MgrTableActivity;

    const v2, 0x7f0800cb

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/MgrTableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_0

    .line 407
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/bf;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 409
    iget-object v0, p0, Lcom/aadhk/restpos/bf;->a:Lcom/aadhk/restpos/MgrTableActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 410
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 411
    iget-object v0, p0, Lcom/aadhk/restpos/bf;->a:Lcom/aadhk/restpos/MgrTableActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 413
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/bf;->a:Lcom/aadhk/restpos/MgrTableActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
