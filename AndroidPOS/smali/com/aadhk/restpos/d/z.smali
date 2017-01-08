.class final Lcom/aadhk/restpos/d/z;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/product/library/b/k;

.field final synthetic b:Lcom/aadhk/restpos/d/q;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/q;Lcom/aadhk/product/library/b/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/aadhk/restpos/d/z;->b:Lcom/aadhk/restpos/d/q;

    iput-object p2, p0, Lcom/aadhk/restpos/d/z;->a:Lcom/aadhk/product/library/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Lcom/aadhk/restpos/d/q;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->b:Lcom/aadhk/restpos/d/q;

    invoke-static {v1}, Lcom/aadhk/restpos/d/q;->c(Lcom/aadhk/restpos/d/q;)[I

    move-result-object v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/q;->a(Lcom/aadhk/restpos/d/q;I)V

    .line 315
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->a:Lcom/aadhk/product/library/b/k;

    invoke-virtual {v0}, Lcom/aadhk/product/library/b/k;->dismiss()V

    .line 316
    return-void
.end method
