.class final Lcom/aadhk/restpos/d/es;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/g;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/CashRegister;

.field final synthetic b:Lcom/aadhk/restpos/d/eq;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/eq;Lcom/aadhk/restpos/bean/CashRegister;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/aadhk/restpos/d/es;->b:Lcom/aadhk/restpos/d/eq;

    iput-object p2, p0, Lcom/aadhk/restpos/d/es;->a:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 178
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/et;

    iget-object v2, p0, Lcom/aadhk/restpos/d/es;->b:Lcom/aadhk/restpos/d/eq;

    iget-object v3, p0, Lcom/aadhk/restpos/d/es;->a:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/CashRegister;->getId()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/aadhk/restpos/d/et;-><init>(Lcom/aadhk/restpos/d/eq;J)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/es;->b:Lcom/aadhk/restpos/d/eq;

    invoke-static {v2}, Lcom/aadhk/restpos/d/eq;->e(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 179
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 180
    return-void
.end method
