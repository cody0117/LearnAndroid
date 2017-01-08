.class final Lcom/aadhk/restpos/d/p;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/j;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/j;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/aadhk/restpos/d/p;->a:Lcom/aadhk/restpos/d/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/j;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/p;-><init>(Lcom/aadhk/restpos/d/j;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/aadhk/restpos/d/p;->a:Lcom/aadhk/restpos/d/j;

    invoke-static {v0}, Lcom/aadhk/restpos/d/j;->i(Lcom/aadhk/restpos/d/j;)Lcom/aadhk/restpos/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/c;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/p;->b:Ljava/util/Map;

    .line 261
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 265
    iget-object v0, p0, Lcom/aadhk/restpos/d/p;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/aadhk/restpos/d/p;->a:Lcom/aadhk/restpos/d/j;

    iget-object v0, p0, Lcom/aadhk/restpos/d/p;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/j;->a(Lcom/aadhk/restpos/d/j;Ljava/util/List;)Ljava/util/List;

    .line 268
    iget-object v0, p0, Lcom/aadhk/restpos/d/p;->a:Lcom/aadhk/restpos/d/j;

    invoke-static {v0}, Lcom/aadhk/restpos/d/j;->j(Lcom/aadhk/restpos/d/j;)V

    .line 277
    :goto_0
    return-void

    .line 269
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/p;->a:Lcom/aadhk/restpos/d/j;

    invoke-static {v0}, Lcom/aadhk/restpos/d/j;->b(Lcom/aadhk/restpos/d/j;)Lcom/aadhk/restpos/CustomerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 271
    iget-object v0, p0, Lcom/aadhk/restpos/d/p;->a:Lcom/aadhk/restpos/d/j;

    invoke-static {v0}, Lcom/aadhk/restpos/d/j;->b(Lcom/aadhk/restpos/d/j;)Lcom/aadhk/restpos/CustomerActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 272
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/aadhk/restpos/d/p;->a:Lcom/aadhk/restpos/d/j;

    invoke-static {v0}, Lcom/aadhk/restpos/d/j;->b(Lcom/aadhk/restpos/d/j;)Lcom/aadhk/restpos/CustomerActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/p;->a:Lcom/aadhk/restpos/d/j;

    invoke-static {v0}, Lcom/aadhk/restpos/d/j;->b(Lcom/aadhk/restpos/d/j;)Lcom/aadhk/restpos/CustomerActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
