.class final Lcom/aadhk/restpos/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/n;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/aadhk/restpos/CurrencyActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/CurrencyActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/aadhk/restpos/b;->b:Lcom/aadhk/restpos/CurrencyActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/bean/Currency;)V
    .locals 4
    .parameter

    .prologue
    .line 102
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/g;

    iget-object v2, p0, Lcom/aadhk/restpos/b;->b:Lcom/aadhk/restpos/CurrencyActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/b;->a:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3}, Lcom/aadhk/restpos/g;-><init>(Lcom/aadhk/restpos/CurrencyActivity;Lcom/aadhk/restpos/bean/Currency;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aadhk/restpos/b;->b:Lcom/aadhk/restpos/CurrencyActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 103
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 104
    return-void
.end method
