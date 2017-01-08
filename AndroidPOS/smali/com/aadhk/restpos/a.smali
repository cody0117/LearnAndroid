.class final Lcom/aadhk/restpos/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/l;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/CurrencyActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/CurrencyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/aadhk/restpos/a;->a:Lcom/aadhk/restpos/CurrencyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/bean/Currency;)V
    .locals 4
    .parameter

    .prologue
    .line 86
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d;

    iget-object v2, p0, Lcom/aadhk/restpos/a;->a:Lcom/aadhk/restpos/CurrencyActivity;

    invoke-direct {v1, v2, p1}, Lcom/aadhk/restpos/d;-><init>(Lcom/aadhk/restpos/CurrencyActivity;Lcom/aadhk/restpos/bean/Currency;)V

    iget-object v2, p0, Lcom/aadhk/restpos/a;->a:Lcom/aadhk/restpos/CurrencyActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 87
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method
