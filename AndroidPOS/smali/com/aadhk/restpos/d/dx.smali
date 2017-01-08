.class final Lcom/aadhk/restpos/d/dx;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/bm;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/dw;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/dw;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/aadhk/restpos/d/dx;->a:Lcom/aadhk/restpos/d/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/aadhk/restpos/d/dx;->a:Lcom/aadhk/restpos/d/dw;

    iget-object v0, v0, Lcom/aadhk/restpos/d/dw;->c:Lcom/aadhk/restpos/d/dv;

    iget-object v0, v0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dx;->a:Lcom/aadhk/restpos/d/dw;

    iget-object v1, v1, Lcom/aadhk/restpos/d/dw;->b:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/du;->c(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V

    .line 248
    return-void
.end method
