.class final Lcom/aadhk/restpos/a/x;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic b:Lcom/aadhk/restpos/a/q;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/aadhk/restpos/a/x;->b:Lcom/aadhk/restpos/a/q;

    iput-object p2, p0, Lcom/aadhk/restpos/a/x;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 314
    new-instance v0, Lcom/aadhk/product/library/b/a;

    iget-object v1, p0, Lcom/aadhk/restpos/a/x;->b:Lcom/aadhk/restpos/a/q;

    invoke-static {v1}, Lcom/aadhk/restpos/a/q;->b(Lcom/aadhk/restpos/a/q;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/a/x;->b:Lcom/aadhk/restpos/a/q;

    invoke-static {v2}, Lcom/aadhk/restpos/a/q;->e(Lcom/aadhk/restpos/a/q;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/product/library/b/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Lcom/aadhk/product/library/b/a;->a()V

    .line 316
    new-instance v1, Lcom/aadhk/restpos/a/y;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/a/y;-><init>(Lcom/aadhk/restpos/a/x;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->a(Lcom/aadhk/product/library/b/f;)V

    .line 334
    invoke-virtual {v0}, Lcom/aadhk/product/library/b/a;->show()V

    .line 335
    return-void
.end method
