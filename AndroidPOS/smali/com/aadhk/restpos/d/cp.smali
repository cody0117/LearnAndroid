.class final Lcom/aadhk/restpos/d/cp;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/bp;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/cf;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/cf;)V
    .locals 0
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/aadhk/restpos/d/cp;->a:Lcom/aadhk/restpos/d/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 709
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 710
    iget-object v1, p0, Lcom/aadhk/restpos/d/cp;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v1, v1, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const-class v2, Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 711
    iget-object v1, p0, Lcom/aadhk/restpos/d/cp;->a:Lcom/aadhk/restpos/d/cf;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/d/cf;->startActivity(Landroid/content/Intent;)V

    .line 712
    iget-object v0, p0, Lcom/aadhk/restpos/d/cp;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->finish()V

    .line 713
    return-void
.end method
