.class final Lcom/aadhk/restpos/d/be;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/g;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/KitchenNote;

.field final synthetic b:Lcom/aadhk/restpos/d/az;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/az;Lcom/aadhk/restpos/bean/KitchenNote;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/aadhk/restpos/d/be;->b:Lcom/aadhk/restpos/d/az;

    iput-object p2, p0, Lcom/aadhk/restpos/d/be;->a:Lcom/aadhk/restpos/bean/KitchenNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/aadhk/restpos/d/be;->b:Lcom/aadhk/restpos/d/az;

    invoke-static {v0}, Lcom/aadhk/restpos/d/az;->c(Lcom/aadhk/restpos/d/az;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/be;->a:Lcom/aadhk/restpos/bean/KitchenNote;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 375
    iget-object v0, p0, Lcom/aadhk/restpos/d/be;->b:Lcom/aadhk/restpos/d/az;

    invoke-static {v0}, Lcom/aadhk/restpos/d/az;->d(Lcom/aadhk/restpos/d/az;)Lcom/aadhk/restpos/d/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/bf;->notifyDataSetChanged()V

    .line 376
    return-void
.end method
