.class final Lcom/aadhk/restpos/cv;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/a/j;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/PurchaseActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/PurchaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/aadhk/restpos/cv;->a:Lcom/aadhk/restpos/PurchaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/a/k;Lcom/aadhk/a/l;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/aadhk/a/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/cv;->a:Lcom/aadhk/restpos/PurchaseActivity;

    invoke-static {v0, p2}, Lcom/aadhk/restpos/PurchaseActivity;->a(Lcom/aadhk/restpos/PurchaseActivity;Lcom/aadhk/a/l;)V

    .line 133
    iget-object v0, p0, Lcom/aadhk/restpos/cv;->a:Lcom/aadhk/restpos/PurchaseActivity;

    invoke-static {v0, p2}, Lcom/aadhk/restpos/PurchaseActivity;->b(Lcom/aadhk/restpos/PurchaseActivity;Lcom/aadhk/a/l;)V

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/cv;->a:Lcom/aadhk/restpos/PurchaseActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PurchaseActivity;->c(Lcom/aadhk/restpos/PurchaseActivity;)V

    goto :goto_0
.end method
