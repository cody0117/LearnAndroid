.class final Lcom/aadhk/restpos/af;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/aw;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/ListTableActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/ListTableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/aadhk/restpos/af;->a:Lcom/aadhk/restpos/ListTableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 246
    iget-object v1, p0, Lcom/aadhk/restpos/af;->a:Lcom/aadhk/restpos/ListTableActivity;

    const-class v2, Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/aadhk/restpos/af;->a:Lcom/aadhk/restpos/ListTableActivity;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/ListTableActivity;->startActivity(Landroid/content/Intent;)V

    .line 248
    return-void
.end method
