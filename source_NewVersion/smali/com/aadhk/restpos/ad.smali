.class final Lcom/aadhk/restpos/ad;
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
    .line 195
    iput-object p1, p0, Lcom/aadhk/restpos/ad;->a:Lcom/aadhk/restpos/ListTableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/aadhk/restpos/ad;->a:Lcom/aadhk/restpos/ListTableActivity;

    const-class v2, Lcom/aadhk/restpos/PayInOutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    iget-object v1, p0, Lcom/aadhk/restpos/ad;->a:Lcom/aadhk/restpos/ListTableActivity;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/ListTableActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void
.end method
