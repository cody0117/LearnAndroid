.class final Lcom/aadhk/restpos/d/df;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/u;

.field final synthetic b:Lcom/aadhk/restpos/d/db;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/db;Lcom/aadhk/restpos/c/u;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/aadhk/restpos/d/df;->b:Lcom/aadhk/restpos/d/db;

    iput-object p2, p0, Lcom/aadhk/restpos/d/df;->a:Lcom/aadhk/restpos/c/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 325
    check-cast p1, Lcom/aadhk/restpos/bean/Modifier;

    .line 326
    iget-object v0, p0, Lcom/aadhk/restpos/d/df;->b:Lcom/aadhk/restpos/d/db;

    invoke-static {v0}, Lcom/aadhk/restpos/d/db;->d(Lcom/aadhk/restpos/d/db;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Lcom/aadhk/restpos/d/df;->b:Lcom/aadhk/restpos/d/db;

    invoke-static {v0}, Lcom/aadhk/restpos/d/db;->a(Lcom/aadhk/restpos/d/db;)Lcom/aadhk/restpos/d/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/dh;->notifyDataSetChanged()V

    .line 328
    iget-object v0, p0, Lcom/aadhk/restpos/d/df;->a:Lcom/aadhk/restpos/c/u;

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/u;->dismiss()V

    .line 329
    return-void
.end method
