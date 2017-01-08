.class final Lcom/aadhk/restpos/d/bd;
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
    .line 365
    iput-object p1, p0, Lcom/aadhk/restpos/d/bd;->a:Lcom/aadhk/restpos/d/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lcom/aadhk/restpos/d/bd;->a:Lcom/aadhk/restpos/d/az;

    invoke-static {v0}, Lcom/aadhk/restpos/d/az;->d(Lcom/aadhk/restpos/d/az;)Lcom/aadhk/restpos/d/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/bf;->notifyDataSetChanged()V

    .line 369
    return-void
.end method
