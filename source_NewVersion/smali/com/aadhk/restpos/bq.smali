.class final Lcom/aadhk/restpos/bq;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/a/h;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/PurchaseActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/PurchaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/aadhk/restpos/bq;->a:Lcom/aadhk/restpos/PurchaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/a/k;Lcom/aadhk/a/m;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/aadhk/a/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 228
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/bq;->a:Lcom/aadhk/restpos/PurchaseActivity;

    invoke-static {v0, p2}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    .line 229
    iget-object v0, p0, Lcom/aadhk/restpos/bq;->a:Lcom/aadhk/restpos/PurchaseActivity;

    invoke-virtual {p2}, Lcom/aadhk/a/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/PurchaseActivity;->a(Lcom/aadhk/restpos/PurchaseActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/aadhk/b/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 232
    invoke-virtual {v0}, Lcom/aadhk/b/a;->printStackTrace()V

    goto :goto_0
.end method
