.class final Lcom/aadhk/restpos/d/br;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/ca;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic b:Lcom/aadhk/restpos/c/bz;

.field final synthetic c:Lcom/aadhk/restpos/d/bk;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/bk;Lcom/aadhk/restpos/bean/OrderItem;Lcom/aadhk/restpos/c/bz;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/aadhk/restpos/d/br;->c:Lcom/aadhk/restpos/d/bk;

    iput-object p2, p0, Lcom/aadhk/restpos/d/br;->a:Lcom/aadhk/restpos/bean/OrderItem;

    iput-object p3, p0, Lcom/aadhk/restpos/d/br;->b:Lcom/aadhk/restpos/c/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 324
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/br;->c:Lcom/aadhk/restpos/d/bk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bk;->d(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    new-instance v2, Lcom/aadhk/restpos/d/bs;

    invoke-direct {v2, p0, p1}, Lcom/aadhk/restpos/d/bs;-><init>(Lcom/aadhk/restpos/d/br;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/br;->c:Lcom/aadhk/restpos/d/bk;

    invoke-static {v3}, Lcom/aadhk/restpos/d/bk;->b(Lcom/aadhk/restpos/d/bk;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090179

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 359
    return-void
.end method
