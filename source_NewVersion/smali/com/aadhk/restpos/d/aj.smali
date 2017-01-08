.class final Lcom/aadhk/restpos/d/aj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ag;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/aadhk/restpos/d/aj;->a:Lcom/aadhk/restpos/d/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    check-cast p1, [Z

    .line 191
    aget-boolean v0, p1, v2

    if-eqz v0, :cond_1

    move v0, v1

    .line 194
    :goto_0
    aget-boolean v1, p1, v1

    if-eqz v1, :cond_0

    .line 195
    const/4 v1, 0x2

    .line 198
    :goto_1
    invoke-static {}, Lcom/aadhk/restpos/d/ag;->a()Lcom/aadhk/restpos/b/i;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/aj;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v4}, Lcom/aadhk/restpos/d/ag;->b(Lcom/aadhk/restpos/d/ag;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/aadhk/restpos/b/i;->a(JII)V

    .line 199
    iget-object v0, p0, Lcom/aadhk/restpos/d/aj;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->c(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/d/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ao;->notifyDataSetChanged()V

    .line 200
    iget-object v0, p0, Lcom/aadhk/restpos/d/aj;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->d(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->c()V

    .line 201
    iget-object v0, p0, Lcom/aadhk/restpos/d/aj;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->d(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/aj;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ag;->d(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/MgrItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09023e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    return-void

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method
