.class final Lcom/aadhk/restpos/d/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/f;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/f;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/aadhk/restpos/d/i;->a:Lcom/aadhk/restpos/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/f;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/i;-><init>(Lcom/aadhk/restpos/d/f;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/aadhk/restpos/d/i;->a:Lcom/aadhk/restpos/d/f;

    invoke-static {v0}, Lcom/aadhk/restpos/d/f;->b(Lcom/aadhk/restpos/d/f;)Lcom/aadhk/restpos/g/c;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/i;->a:Lcom/aadhk/restpos/d/f;

    invoke-static {v1}, Lcom/aadhk/restpos/d/f;->a(Lcom/aadhk/restpos/d/f;)Lcom/aadhk/restpos/bean/Customer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/c;->a(Lcom/aadhk/restpos/bean/Customer;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/i;->b:Ljava/util/Map;

    .line 225
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 229
    iget-object v0, p0, Lcom/aadhk/restpos/d/i;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/aadhk/restpos/d/i;->b:Ljava/util/Map;

    const-string v1, "serviceData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 232
    iget-object v1, p0, Lcom/aadhk/restpos/d/i;->a:Lcom/aadhk/restpos/d/f;

    invoke-static {v1}, Lcom/aadhk/restpos/d/f;->c(Lcom/aadhk/restpos/d/f;)Lcom/aadhk/restpos/CustomerActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/CustomerActivity;->b(Ljava/util/List;)V

    .line 233
    iget-object v0, p0, Lcom/aadhk/restpos/d/i;->a:Lcom/aadhk/restpos/d/f;

    invoke-static {v0}, Lcom/aadhk/restpos/d/f;->d(Lcom/aadhk/restpos/d/f;)V

    .line 242
    :goto_0
    return-void

    .line 234
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/i;->a:Lcom/aadhk/restpos/d/f;

    invoke-static {v0}, Lcom/aadhk/restpos/d/f;->c(Lcom/aadhk/restpos/d/f;)Lcom/aadhk/restpos/CustomerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 236
    iget-object v0, p0, Lcom/aadhk/restpos/d/i;->a:Lcom/aadhk/restpos/d/f;

    invoke-static {v0}, Lcom/aadhk/restpos/d/f;->c(Lcom/aadhk/restpos/d/f;)Lcom/aadhk/restpos/CustomerActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 237
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/aadhk/restpos/d/i;->a:Lcom/aadhk/restpos/d/f;

    invoke-static {v0}, Lcom/aadhk/restpos/d/f;->c(Lcom/aadhk/restpos/d/f;)Lcom/aadhk/restpos/CustomerActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/i;->a:Lcom/aadhk/restpos/d/f;

    invoke-static {v0}, Lcom/aadhk/restpos/d/f;->c(Lcom/aadhk/restpos/d/f;)Lcom/aadhk/restpos/CustomerActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
