.class final Lcom/aadhk/restpos/d/fg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/SplitBill;

.field final synthetic b:I

.field final synthetic c:Lcom/aadhk/restpos/d/ff;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ff;Lcom/aadhk/restpos/bean/SplitBill;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/aadhk/restpos/d/fg;->c:Lcom/aadhk/restpos/d/ff;

    iput-object p2, p0, Lcom/aadhk/restpos/d/fg;->a:Lcom/aadhk/restpos/bean/SplitBill;

    iput p3, p0, Lcom/aadhk/restpos/d/fg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/d/fg;->a:Lcom/aadhk/restpos/bean/SplitBill;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/SplitBill;->setAmount(D)V

    .line 169
    iget-object v0, p0, Lcom/aadhk/restpos/d/fg;->c:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->a(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/b/u;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fg;->a:Lcom/aadhk/restpos/bean/SplitBill;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/u;->b(Lcom/aadhk/restpos/bean/SplitBill;)V

    .line 170
    iget-object v0, p0, Lcom/aadhk/restpos/d/fg;->c:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->b(Lcom/aadhk/restpos/d/ff;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/d/fg;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/aadhk/restpos/d/fg;->c:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->b(Lcom/aadhk/restpos/d/ff;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fg;->a:Lcom/aadhk/restpos/bean/SplitBill;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/aadhk/restpos/d/fg;->c:Lcom/aadhk/restpos/d/ff;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ff;->a()V

    .line 173
    return-void
.end method
