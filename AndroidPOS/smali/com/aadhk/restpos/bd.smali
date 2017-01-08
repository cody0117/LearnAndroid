.class final Lcom/aadhk/restpos/bd;
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
    .line 257
    iput-object p1, p0, Lcom/aadhk/restpos/bd;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/MgrTableActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/bd;-><init>(Lcom/aadhk/restpos/MgrTableActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/aadhk/restpos/bd;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableActivity;->c(Lcom/aadhk/restpos/MgrTableActivity;)Lcom/aadhk/restpos/g/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/n;->c()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bd;->b:Ljava/util/Map;

    .line 262
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 265
    iget-object v0, p0, Lcom/aadhk/restpos/bd;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/aadhk/restpos/bd;->a:Lcom/aadhk/restpos/MgrTableActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/bd;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/MgrTableActivity;->b(Lcom/aadhk/restpos/MgrTableActivity;Ljava/util/List;)Ljava/util/List;

    .line 268
    iget-object v0, p0, Lcom/aadhk/restpos/bd;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableActivity;->e(Lcom/aadhk/restpos/MgrTableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/bd;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 270
    const v1, 0x7f0801b6

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 271
    new-instance v1, Lcom/aadhk/restpos/be;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/be;-><init>(Lcom/aadhk/restpos/bd;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Lcom/aadhk/restpos/c/bp;)V

    .line 279
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/bd;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 284
    iget-object v0, p0, Lcom/aadhk/restpos/bd;->a:Lcom/aadhk/restpos/MgrTableActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 285
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    iget-object v0, p0, Lcom/aadhk/restpos/bd;->a:Lcom/aadhk/restpos/MgrTableActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 288
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/bd;->a:Lcom/aadhk/restpos/MgrTableActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
