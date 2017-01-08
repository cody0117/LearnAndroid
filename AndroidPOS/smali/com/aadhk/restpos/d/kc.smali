.class final Lcom/aadhk/restpos/d/kc;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/jx;

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
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:D


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/jx;Ljava/util/List;D)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 200
    iput-object p1, p0, Lcom/aadhk/restpos/d/kc;->a:Lcom/aadhk/restpos/d/jx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p2, p0, Lcom/aadhk/restpos/d/kc;->c:Ljava/util/List;

    .line 202
    iput-wide p3, p0, Lcom/aadhk/restpos/d/kc;->d:D

    .line 203
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 207
    iget-object v0, p0, Lcom/aadhk/restpos/d/kc;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->e(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/g/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/kc;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v1}, Lcom/aadhk/restpos/d/jx;->c(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/d/kc;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v3}, Lcom/aadhk/restpos/d/jx;->d(Lcom/aadhk/restpos/d/jx;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/aadhk/restpos/d/kc;->c:Ljava/util/List;

    iget-wide v6, p0, Lcom/aadhk/restpos/d/kc;->d:D

    invoke-virtual/range {v0 .. v7}, Lcom/aadhk/restpos/g/ab;->a(JJLjava/util/List;D)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/kc;->b:Ljava/util/Map;

    .line 208
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 212
    iget-object v0, p0, Lcom/aadhk/restpos/d/kc;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/aadhk/restpos/d/kc;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->c(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setSplitType(S)V

    .line 215
    iget-object v0, p0, Lcom/aadhk/restpos/d/kc;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->k(Lcom/aadhk/restpos/d/jx;)J

    .line 216
    iget-object v0, p0, Lcom/aadhk/restpos/d/kc;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->j(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->b()V

    .line 225
    :goto_0
    return-void

    .line 217
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/kc;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->j(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 219
    iget-object v0, p0, Lcom/aadhk/restpos/d/kc;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->j(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 220
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/aadhk/restpos/d/kc;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->j(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/kc;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->j(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
