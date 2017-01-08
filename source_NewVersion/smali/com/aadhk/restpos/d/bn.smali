.class final Lcom/aadhk/restpos/d/bn;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/aw;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/bm;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/bm;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/aadhk/restpos/d/bn;->a:Lcom/aadhk/restpos/d/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/aadhk/restpos/d/bn;->a:Lcom/aadhk/restpos/d/bm;

    iget-object v0, v0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/d/bl;

    iget-object v0, v0, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bn;->a:Lcom/aadhk/restpos/d/bm;

    iget-object v1, v1, Lcom/aadhk/restpos/d/bm;->b:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/bk;->c(Lcom/aadhk/restpos/d/bk;Lcom/aadhk/restpos/bean/OrderItem;)V

    .line 230
    return-void
.end method
