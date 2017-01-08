.class final Lcom/aadhk/restpos/bq;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/MgrTableGroupActivity;

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
.method private constructor <init>(Lcom/aadhk/restpos/MgrTableGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/aadhk/restpos/bq;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/MgrTableGroupActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/bq;-><init>(Lcom/aadhk/restpos/MgrTableGroupActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/aadhk/restpos/bq;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableGroupActivity;->a(Lcom/aadhk/restpos/MgrTableGroupActivity;)Lcom/aadhk/restpos/g/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/m;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bq;->b:Ljava/util/Map;

    .line 256
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 259
    iget-object v0, p0, Lcom/aadhk/restpos/bq;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/aadhk/restpos/bq;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableGroupActivity;->c(Lcom/aadhk/restpos/MgrTableGroupActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 262
    iget-object v0, p0, Lcom/aadhk/restpos/bq;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableGroupActivity;->b(Lcom/aadhk/restpos/MgrTableGroupActivity;)V

    .line 275
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string v1, "25"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/bq;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 265
    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 266
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_0

    .line 267
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/bq;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 269
    iget-object v0, p0, Lcom/aadhk/restpos/bq;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 270
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 271
    iget-object v0, p0, Lcom/aadhk/restpos/bq;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 273
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/bq;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
