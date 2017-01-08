.class final Lcom/aadhk/restpos/d/iz;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/ao;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/it;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/it;)V
    .locals 0
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lcom/aadhk/restpos/d/iz;->a:Lcom/aadhk/restpos/d/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 628
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/jg;

    iget-object v2, p0, Lcom/aadhk/restpos/d/iz;->a:Lcom/aadhk/restpos/d/it;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/d/jg;-><init>(Lcom/aadhk/restpos/d/it;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/iz;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v2}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 629
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 630
    return-void
.end method
