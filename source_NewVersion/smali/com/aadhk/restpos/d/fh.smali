.class final Lcom/aadhk/restpos/d/fh;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ff;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ff;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/aadhk/restpos/d/fh;->a:Lcom/aadhk/restpos/d/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 236
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/aadhk/restpos/d/fh;->a:Lcom/aadhk/restpos/d/ff;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fh;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v2, v0}, Lcom/aadhk/restpos/d/ff;->a(Lcom/aadhk/restpos/d/ff;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/ff;->a(Lcom/aadhk/restpos/d/ff;Ljava/util/List;)Ljava/util/List;

    .line 238
    iget-object v0, p0, Lcom/aadhk/restpos/d/fh;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->a(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/b/u;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fh;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ff;->b(Lcom/aadhk/restpos/d/ff;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/fh;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v2}, Lcom/aadhk/restpos/d/ff;->c(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/b/u;->a(Ljava/util/List;J)V

    .line 239
    iget-object v0, p0, Lcom/aadhk/restpos/d/fh;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->c(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setSplitType(S)V

    .line 240
    iget-object v0, p0, Lcom/aadhk/restpos/d/fh;->a:Lcom/aadhk/restpos/d/ff;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fh;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ff;->a(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/b/u;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/fh;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v2}, Lcom/aadhk/restpos/d/ff;->c(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/b/u;->b(J)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/ff;->a(Lcom/aadhk/restpos/d/ff;Ljava/util/List;)Ljava/util/List;

    .line 241
    iget-object v0, p0, Lcom/aadhk/restpos/d/fh;->a:Lcom/aadhk/restpos/d/ff;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ff;->a()V

    .line 242
    return-void
.end method
