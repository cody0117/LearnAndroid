.class final Lcom/aadhk/restpos/d/bc;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/az;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/az;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/aadhk/restpos/d/bc;->a:Lcom/aadhk/restpos/d/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 238
    check-cast p1, Lcom/aadhk/restpos/bean/KitchenNote;

    .line 239
    iget-object v0, p0, Lcom/aadhk/restpos/d/bc;->a:Lcom/aadhk/restpos/d/az;

    invoke-static {v0}, Lcom/aadhk/restpos/d/az;->c(Lcom/aadhk/restpos/d/az;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/aadhk/restpos/d/bc;->a:Lcom/aadhk/restpos/d/az;

    invoke-static {v0}, Lcom/aadhk/restpos/d/az;->d(Lcom/aadhk/restpos/d/az;)Lcom/aadhk/restpos/d/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/bf;->notifyDataSetChanged()V

    .line 241
    return-void
.end method
