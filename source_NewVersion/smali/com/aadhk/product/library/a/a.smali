.class public final Lcom/aadhk/product/library/a/a;
.super Landroid/os/AsyncTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static d:Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Lcom/aadhk/product/library/a/b;

.field private final c:Landroid/app/Activity;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/aadhk/product/library/a/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/aadhk/product/library/a/a;->b:Lcom/aadhk/product/library/a/b;

    .line 18
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/aadhk/product/library/a/a;->c:Landroid/app/Activity;

    .line 19
    iput-object p3, p0, Lcom/aadhk/product/library/a/a;->e:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 31
    sget-object v1, Lcom/aadhk/product/library/a/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/product/library/a/a;->b:Lcom/aadhk/product/library/a/b;

    invoke-interface {v0}, Lcom/aadhk/product/library/a/b;->a()V

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 33
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
    .line 8
    invoke-direct {p0}, Lcom/aadhk/product/library/a/a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/aadhk/product/library/a/a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/product/library/a/a;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/product/library/a/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/product/library/a/a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/product/library/a/a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/aadhk/product/library/a/a;->b:Lcom/aadhk/product/library/a/b;

    invoke-interface {v0}, Lcom/aadhk/product/library/a/b;->b()V

    :cond_1
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/aadhk/product/library/a/a;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/product/library/a/a;->a:Landroid/app/ProgressDialog;

    .line 25
    iget-object v0, p0, Lcom/aadhk/product/library/a/a;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/aadhk/product/library/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/aadhk/product/library/a/a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 27
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 28
    return-void
.end method
