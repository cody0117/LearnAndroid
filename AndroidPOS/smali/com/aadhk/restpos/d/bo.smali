.class final Lcom/aadhk/restpos/d/bo;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/bm;

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
.method constructor <init>(Lcom/aadhk/restpos/d/bm;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/aadhk/restpos/d/bo;->a:Lcom/aadhk/restpos/d/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/aadhk/restpos/d/bo;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/bo;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->d(Lcom/aadhk/restpos/d/bm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/i;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bo;->b:Ljava/util/Map;

    .line 218
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 222
    iget-object v0, p0, Lcom/aadhk/restpos/d/bo;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/aadhk/restpos/d/bo;->a:Lcom/aadhk/restpos/d/bm;

    iget-object v0, p0, Lcom/aadhk/restpos/d/bo;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/User;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/bm;->a(Lcom/aadhk/restpos/d/bm;Lcom/aadhk/restpos/bean/User;)Lcom/aadhk/restpos/bean/User;

    .line 225
    iget-object v0, p0, Lcom/aadhk/restpos/d/bo;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bm;->f(Lcom/aadhk/restpos/d/bm;)V

    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 227
    iget-object v1, p0, Lcom/aadhk/restpos/d/bo;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;

    move-result-object v1

    const-class v2, Lcom/aadhk/restpos/TableListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 228
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lcom/aadhk/restpos/d/bo;->a:Lcom/aadhk/restpos/d/bm;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/restpos/d/bm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 243
    :goto_0
    return-void

    .line 232
    :cond_0
    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/aadhk/restpos/d/bo;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bm;->b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;

    move-result-object v0

    const v1, 0x7f080257

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 234
    :cond_1
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    iget-object v0, p0, Lcom/aadhk/restpos/d/bo;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bm;->b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;

    move-result-object v0

    const v1, 0x7f080256

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 236
    :cond_2
    const-string v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    iget-object v0, p0, Lcom/aadhk/restpos/d/bo;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bm;->b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;

    move-result-object v0

    const v1, 0x7f08025a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 238
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/aadhk/restpos/d/bo;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bm;->b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/bo;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bm;->b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
