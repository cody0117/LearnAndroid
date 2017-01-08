.class final Lcom/aadhk/restpos/d/bw;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/bu;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/bu;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/aadhk/restpos/d/bw;->a:Lcom/aadhk/restpos/d/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 376
    check-cast p1, Ljava/util/List;

    .line 377
    iget-object v0, p0, Lcom/aadhk/restpos/d/bw;->a:Lcom/aadhk/restpos/d/bu;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/d/bu;->b(Ljava/util/List;)V

    .line 378
    return-void
.end method
