.class final Lcom/aadhk/restpos/d/bv;
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
    .line 362
    iput-object p1, p0, Lcom/aadhk/restpos/d/bv;->a:Lcom/aadhk/restpos/d/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 365
    check-cast p1, Ljava/util/List;

    .line 366
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->a:Lcom/aadhk/restpos/d/bu;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/d/bu;->a(Ljava/util/List;)V

    .line 367
    return-void
.end method
