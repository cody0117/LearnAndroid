.class final Lcom/aadhk/restpos/d/am;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/ay;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ag;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/aadhk/restpos/d/am;->a:Lcom/aadhk/restpos/d/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 433
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 434
    iget-object v1, p0, Lcom/aadhk/restpos/d/am;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ag;->d(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v1

    const-class v2, Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 435
    iget-object v1, p0, Lcom/aadhk/restpos/d/am;->a:Lcom/aadhk/restpos/d/ag;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/d/ag;->startActivity(Landroid/content/Intent;)V

    .line 436
    iget-object v0, p0, Lcom/aadhk/restpos/d/am;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->d(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->finish()V

    .line 437
    return-void
.end method
