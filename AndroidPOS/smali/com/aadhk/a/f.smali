.class final Lcom/aadhk/a/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/aadhk/a/d;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/util/List;

.field private final synthetic d:Lcom/aadhk/a/j;

.field private final synthetic e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/aadhk/a/d;Ljava/util/List;Lcom/aadhk/a/j;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aadhk/a/f;->a:Lcom/aadhk/a/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/a/f;->b:Z

    iput-object p2, p0, Lcom/aadhk/a/f;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/aadhk/a/f;->d:Lcom/aadhk/a/j;

    iput-object p4, p0, Lcom/aadhk/a/f;->e:Landroid/os/Handler;

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 654
    new-instance v1, Lcom/aadhk/a/k;

    const/4 v0, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    .line 655
    const/4 v0, 0x0

    .line 657
    :try_start_0
    iget-object v2, p0, Lcom/aadhk/a/f;->a:Lcom/aadhk/a/d;

    iget-boolean v3, p0, Lcom/aadhk/a/f;->b:Z

    iget-object v4, p0, Lcom/aadhk/a/f;->c:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/a/d;->a(ZLjava/util/List;)Lcom/aadhk/a/l;
    :try_end_0
    .catch Lcom/aadhk/a/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 664
    :goto_0
    iget-object v2, p0, Lcom/aadhk/a/f;->a:Lcom/aadhk/a/d;

    invoke-virtual {v2}, Lcom/aadhk/a/d;->b()V

    .line 666
    iget-object v2, p0, Lcom/aadhk/a/f;->a:Lcom/aadhk/a/d;

    iget-boolean v2, v2, Lcom/aadhk/a/d;->d:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/aadhk/a/f;->d:Lcom/aadhk/a/j;

    if-eqz v2, :cond_0

    .line 669
    iget-object v2, p0, Lcom/aadhk/a/f;->e:Landroid/os/Handler;

    new-instance v3, Lcom/aadhk/a/g;

    iget-object v4, p0, Lcom/aadhk/a/f;->d:Lcom/aadhk/a/j;

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/aadhk/a/g;-><init>(Lcom/aadhk/a/f;Lcom/aadhk/a/j;Lcom/aadhk/a/k;Lcom/aadhk/a/l;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 676
    :cond_0
    return-void

    .line 659
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/aadhk/a/c;->a()Lcom/aadhk/a/k;

    move-result-object v1

    goto :goto_0

    .line 660
    :catch_1
    move-exception v1

    move-object v2, v1

    .line 661
    new-instance v1, Lcom/aadhk/a/k;

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IllegalStateException:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method
