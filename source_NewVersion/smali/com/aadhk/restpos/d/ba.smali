.class final Lcom/aadhk/restpos/d/ba;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/au;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/au;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/aadhk/restpos/d/ba;->a:Lcom/aadhk/restpos/d/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/aadhk/restpos/d/ba;->a:Lcom/aadhk/restpos/d/au;

    invoke-static {v0}, Lcom/aadhk/restpos/d/au;->a(Lcom/aadhk/restpos/d/au;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 318
    iget-object v0, p0, Lcom/aadhk/restpos/d/ba;->a:Lcom/aadhk/restpos/d/au;

    invoke-static {v0}, Lcom/aadhk/restpos/d/au;->b(Lcom/aadhk/restpos/d/au;)Lcom/aadhk/restpos/d/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/bb;->notifyDataSetChanged()V

    .line 319
    return-void
.end method
