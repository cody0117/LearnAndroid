.class final Lcom/aadhk/restpos/dn;
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
    .line 340
    iput-object p1, p0, Lcom/aadhk/restpos/dn;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 343
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 344
    iget-object v1, p0, Lcom/aadhk/restpos/dn;->a:Lcom/aadhk/restpos/TableListActivity;

    const-class v2, Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 345
    iget-object v1, p0, Lcom/aadhk/restpos/dn;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/TableListActivity;->startActivity(Landroid/content/Intent;)V

    .line 346
    return-void
.end method
