.class final Lcom/aadhk/restpos/d/iu;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/au;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/aadhk/restpos/d/it;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/it;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/aadhk/restpos/d/iu;->b:Lcom/aadhk/restpos/d/it;

    iput p2, p0, Lcom/aadhk/restpos/d/iu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 315
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/jd;

    iget-object v2, p0, Lcom/aadhk/restpos/d/iu;->b:Lcom/aadhk/restpos/d/it;

    check-cast p1, Lcom/aadhk/restpos/bean/Company;

    iget v3, p0, Lcom/aadhk/restpos/d/iu;->a:I

    invoke-direct {v1, v2, p1, v3}, Lcom/aadhk/restpos/d/jd;-><init>(Lcom/aadhk/restpos/d/it;Lcom/aadhk/restpos/bean/Company;I)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/iu;->b:Lcom/aadhk/restpos/d/it;

    invoke-static {v2}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 316
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 317
    return-void
.end method
