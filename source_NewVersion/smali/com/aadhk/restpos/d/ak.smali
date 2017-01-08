.class final Lcom/aadhk/restpos/d/ak;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/aadhk/restpos/d/ag;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ag;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/aadhk/restpos/d/ak;->b:Lcom/aadhk/restpos/d/ag;

    iput-object p2, p0, Lcom/aadhk/restpos/d/ak;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 243
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 245
    if-lez v0, :cond_0

    .line 246
    add-int/lit8 v0, v0, -0x1

    .line 247
    iget-object v1, p0, Lcom/aadhk/restpos/d/ak;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 249
    :cond_0
    invoke-static {}, Lcom/aadhk/restpos/d/ag;->a()Lcom/aadhk/restpos/b/i;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/ak;->b:Lcom/aadhk/restpos/d/ag;

    invoke-static {v2}, Lcom/aadhk/restpos/d/ag;->b(Lcom/aadhk/restpos/d/ag;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/aadhk/restpos/b/i;->a(JI)V

    .line 250
    iget-object v0, p0, Lcom/aadhk/restpos/d/ak;->b:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->c(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/d/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ao;->notifyDataSetChanged()V

    .line 251
    iget-object v0, p0, Lcom/aadhk/restpos/d/ak;->b:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->d(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->c()V

    .line 252
    iget-object v0, p0, Lcom/aadhk/restpos/d/ak;->b:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->d(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ak;->b:Lcom/aadhk/restpos/d/ag;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ag;->d(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/MgrItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09023e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 253
    return-void
.end method
