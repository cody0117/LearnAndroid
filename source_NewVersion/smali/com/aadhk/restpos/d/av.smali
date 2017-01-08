.class final Lcom/aadhk/restpos/d/av;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/t;

.field final synthetic b:Lcom/aadhk/restpos/d/au;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/au;Lcom/aadhk/restpos/c/t;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/aadhk/restpos/d/av;->b:Lcom/aadhk/restpos/d/au;

    iput-object p2, p0, Lcom/aadhk/restpos/d/av;->a:Lcom/aadhk/restpos/c/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 151
    check-cast p1, Lcom/aadhk/restpos/bean/Modifier;

    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/d/av;->b:Lcom/aadhk/restpos/d/au;

    invoke-static {v0}, Lcom/aadhk/restpos/d/au;->a(Lcom/aadhk/restpos/d/au;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/aadhk/restpos/d/av;->b:Lcom/aadhk/restpos/d/au;

    invoke-static {v0}, Lcom/aadhk/restpos/d/au;->a(Lcom/aadhk/restpos/d/au;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/d/av;->b:Lcom/aadhk/restpos/d/au;

    invoke-static {v0}, Lcom/aadhk/restpos/d/au;->b(Lcom/aadhk/restpos/d/au;)Lcom/aadhk/restpos/d/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/bb;->notifyDataSetChanged()V

    .line 157
    iget-object v0, p0, Lcom/aadhk/restpos/d/av;->a:Lcom/aadhk/restpos/c/t;

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/t;->dismiss()V

    .line 158
    return-void
.end method
