.class final Lcom/aadhk/restpos/be;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/bp;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bd;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/bd;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/aadhk/restpos/be;->a:Lcom/aadhk/restpos/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 273
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    iget-object v1, p0, Lcom/aadhk/restpos/be;->a:Lcom/aadhk/restpos/bd;

    iget-object v1, v1, Lcom/aadhk/restpos/bd;->a:Lcom/aadhk/restpos/MgrTableActivity;

    const-class v2, Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 275
    iget-object v1, p0, Lcom/aadhk/restpos/be;->a:Lcom/aadhk/restpos/bd;

    iget-object v1, v1, Lcom/aadhk/restpos/bd;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/MgrTableActivity;->startActivity(Landroid/content/Intent;)V

    .line 276
    iget-object v0, p0, Lcom/aadhk/restpos/be;->a:Lcom/aadhk/restpos/bd;

    iget-object v0, v0, Lcom/aadhk/restpos/bd;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrTableActivity;->finish()V

    .line 277
    return-void
.end method
