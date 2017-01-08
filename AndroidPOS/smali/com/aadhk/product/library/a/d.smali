.class public final Lcom/aadhk/product/library/a/d;
.super Landroid/os/AsyncTask;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Landroid/content/DialogInterface$OnCancelListener;"
    }
.end annotation


# static fields
.field private static d:Ljava/lang/Object;


# instance fields
.field private a:Lcom/aadhk/product/library/b/n;

.field private b:Lcom/aadhk/product/library/a/c;

.field private final c:Landroid/app/Activity;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/aadhk/product/library/a/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/aadhk/product/library/a/d;->b:Lcom/aadhk/product/library/a/c;

    .line 22
    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lcom/aadhk/product/library/a/d;->c:Landroid/app/Activity;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/product/library/a/d;->e:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/aadhk/product/library/a/d;->b:Lcom/aadhk/product/library/a/c;

    .line 28
    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lcom/aadhk/product/library/a/d;->c:Landroid/app/Activity;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aadhk/product/library/a/d;->e:Z

    .line 30
    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 49
    sget-object v1, Lcom/aadhk/product/library/a/d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/product/library/a/d;->b:Lcom/aadhk/product/library/a/c;

    invoke-interface {v0}, Lcom/aadhk/product/library/a/c;->a()V

    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/aadhk/product/library/a/d;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/product/library/a/d;->cancel(Z)Z

    .line 41
    return-void
.end method

.method protected final onCancelled()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aadhk/product/library/a/d;->a:Lcom/aadhk/product/library/b/n;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/aadhk/product/library/a/d;->a:Lcom/aadhk/product/library/b/n;

    invoke-virtual {v0}, Lcom/aadhk/product/library/b/n;->dismiss()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aadhk/product/library/a/d;->a:Lcom/aadhk/product/library/b/n;

    .line 71
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 72
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/aadhk/product/library/a/d;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/product/library/a/d;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/product/library/a/d;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/product/library/a/d;->a:Lcom/aadhk/product/library/b/n;

    invoke-virtual {v0}, Lcom/aadhk/product/library/b/n;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/product/library/a/d;->a:Lcom/aadhk/product/library/b/n;

    invoke-virtual {v0}, Lcom/aadhk/product/library/b/n;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/aadhk/product/library/a/d;->b:Lcom/aadhk/product/library/a/c;

    invoke-interface {v0}, Lcom/aadhk/product/library/a/c;->b()V

    :cond_1
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/product/library/a/d;->c:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/aadhk/product/library/a/d;->e:Z

    invoke-static {v0, v1, p0}, Lcom/aadhk/product/library/b/n;->a(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/aadhk/product/library/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/product/library/a/d;->a:Lcom/aadhk/product/library/b/n;

    .line 35
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 36
    return-void
.end method
