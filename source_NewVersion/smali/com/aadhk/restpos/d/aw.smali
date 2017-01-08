.class final Lcom/aadhk/restpos/d/aw;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/g;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Modifier;

.field final synthetic b:Lcom/aadhk/restpos/c/t;

.field final synthetic c:Lcom/aadhk/restpos/d/au;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/au;Lcom/aadhk/restpos/bean/Modifier;Lcom/aadhk/restpos/c/t;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/aadhk/restpos/d/aw;->c:Lcom/aadhk/restpos/d/au;

    iput-object p2, p0, Lcom/aadhk/restpos/d/aw;->a:Lcom/aadhk/restpos/bean/Modifier;

    iput-object p3, p0, Lcom/aadhk/restpos/d/aw;->b:Lcom/aadhk/restpos/c/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/aadhk/restpos/d/aw;->c:Lcom/aadhk/restpos/d/au;

    invoke-static {v0}, Lcom/aadhk/restpos/d/au;->c(Lcom/aadhk/restpos/d/au;)Lcom/aadhk/restpos/b/j;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/aw;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/j;->a(J)V

    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/d/aw;->c:Lcom/aadhk/restpos/d/au;

    invoke-static {v0}, Lcom/aadhk/restpos/d/au;->a(Lcom/aadhk/restpos/d/au;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/aw;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/aadhk/restpos/d/aw;->c:Lcom/aadhk/restpos/d/au;

    invoke-static {v0}, Lcom/aadhk/restpos/d/au;->b(Lcom/aadhk/restpos/d/au;)Lcom/aadhk/restpos/d/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/bb;->notifyDataSetChanged()V

    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/d/aw;->b:Lcom/aadhk/restpos/c/t;

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/t;->dismiss()V

    .line 167
    return-void
.end method
