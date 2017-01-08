.class final Lcom/aadhk/restpos/cb;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/ca;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/TakeOrderActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/TakeOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 416
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    new-instance v2, Lcom/aadhk/restpos/cc;

    invoke-direct {v2, p0, p1}, Lcom/aadhk/restpos/cc;-><init>(Lcom/aadhk/restpos/cb;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v3, v3, Lcom/aadhk/restpos/TakeOrderActivity;->b:Landroid/content/res/Resources;

    const v4, 0x7f090179

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 452
    return-void
.end method
