.class final Lcom/aadhk/restpos/d/ed;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/product/library/a/b;

.field final synthetic b:Lcom/aadhk/restpos/d/eb;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/eb;Lcom/aadhk/product/library/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/aadhk/restpos/d/ed;->b:Lcom/aadhk/restpos/d/eb;

    iput-object p2, p0, Lcom/aadhk/restpos/d/ed;->a:Lcom/aadhk/product/library/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/aadhk/restpos/d/ed;->b:Lcom/aadhk/restpos/d/eb;

    iget-object v0, v0, Lcom/aadhk/restpos/d/eb;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v1, Lcom/aadhk/product/library/a/a;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ed;->b:Lcom/aadhk/restpos/d/eb;

    iget-object v2, v2, Lcom/aadhk/restpos/d/eb;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/aadhk/restpos/d/ed;->a:Lcom/aadhk/product/library/a/b;

    invoke-direct {v1, v2, v3, v0}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 239
    return-void
.end method
