.class final Lcom/aadhk/restpos/c/df;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Order;

.field final synthetic b:Lcom/aadhk/restpos/c/de;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/de;Lcom/aadhk/restpos/bean/Order;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/aadhk/restpos/c/df;->b:Lcom/aadhk/restpos/c/de;

    iput-object p2, p0, Lcom/aadhk/restpos/c/df;->a:Lcom/aadhk/restpos/bean/Order;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/c/df;->b:Lcom/aadhk/restpos/c/de;

    iget-object v0, v0, Lcom/aadhk/restpos/c/de;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/c/df;->b:Lcom/aadhk/restpos/c/de;

    iget-object v0, v0, Lcom/aadhk/restpos/c/de;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/df;->a:Lcom/aadhk/restpos/bean/Order;

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/c/df;->b:Lcom/aadhk/restpos/c/de;

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/de;->dismiss()V

    .line 55
    :cond_0
    return-void
.end method
