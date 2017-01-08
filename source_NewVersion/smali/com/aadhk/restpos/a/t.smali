.class final Lcom/aadhk/restpos/a/t;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic b:Lcom/aadhk/restpos/a/m;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/aadhk/restpos/a/t;->b:Lcom/aadhk/restpos/a/m;

    iput-object p2, p0, Lcom/aadhk/restpos/a/t;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 296
    new-instance v0, Lcom/aadhk/product/library/b/a;

    iget-object v1, p0, Lcom/aadhk/restpos/a/t;->b:Lcom/aadhk/restpos/a/m;

    invoke-static {v1}, Lcom/aadhk/restpos/a/m;->c(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/a/t;->b:Lcom/aadhk/restpos/a/m;

    invoke-static {v2}, Lcom/aadhk/restpos/a/m;->e(Lcom/aadhk/restpos/a/m;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/product/library/b/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0}, Lcom/aadhk/product/library/b/a;->a()V

    .line 298
    new-instance v1, Lcom/aadhk/restpos/a/u;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/a/u;-><init>(Lcom/aadhk/restpos/a/t;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->a(Lcom/aadhk/product/library/b/f;)V

    .line 316
    invoke-virtual {v0}, Lcom/aadhk/product/library/b/a;->show()V

    .line 317
    return-void
.end method
