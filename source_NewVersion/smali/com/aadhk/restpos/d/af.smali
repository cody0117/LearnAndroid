.class final Lcom/aadhk/restpos/d/af;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/z;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/z;)V
    .locals 0
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/aadhk/restpos/d/af;->a:Lcom/aadhk/restpos/d/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/aadhk/restpos/d/af;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v0}, Lcom/aadhk/restpos/d/z;->o(Lcom/aadhk/restpos/d/z;)Lcom/aadhk/restpos/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/af;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v1}, Lcom/aadhk/restpos/d/z;->k(Lcom/aadhk/restpos/d/z;)Lcom/aadhk/restpos/bean/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/i;->a(J)V

    .line 513
    iget-object v0, p0, Lcom/aadhk/restpos/d/af;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v0}, Lcom/aadhk/restpos/d/z;->p(Lcom/aadhk/restpos/d/z;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->c()V

    .line 514
    return-void
.end method
