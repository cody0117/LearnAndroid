.class final Lcom/aadhk/restpos/dm;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/bm;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/TableListActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/TableListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/aadhk/restpos/dm;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/aadhk/restpos/dm;->a:Lcom/aadhk/restpos/TableListActivity;

    const-class v2, Lcom/aadhk/restpos/PayInOutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    iget-object v1, p0, Lcom/aadhk/restpos/dm;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/TableListActivity;->startActivity(Landroid/content/Intent;)V

    .line 310
    return-void
.end method
