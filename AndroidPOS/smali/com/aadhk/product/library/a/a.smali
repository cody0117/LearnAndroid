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

.field private b:Lcom/aadhk/product/library/a/c;

.field private final c:Landroid/app/Activity;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/aadhk/product/library/a/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/aadhk/product/library/a/a;->b:Lcom/aadhk/product/library/a/c;

    .line 27
    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lcom/aadhk/product/library/a/a;->c:Landroid/app/Activity;

    .line 28
    iput-object p3, p0, Lcom/aadhk/product/library/a/a;->e:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aadhk/product/library/a/a;->f:Z

    .line 30
    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 48
    sget-object v1, Lcom/aadhk/product/library/a/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/product/library/a/a;->b:Lcom/aadhk/product/library/a/c;

    invoke-interface {v0}, Lcom/aadhk/product/library/a/c;->a()V

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 50
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
    .line 9
    invoke-direct {p0}, Lcom/aadhk/product/library/a/a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 9
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
    iget-object v0, p0, Lcom/aadhk/product/library/a/a;->b:Lcom/aadhk/product/library/a/c;

    invoke-interface {v0}, Lcom/aadhk/product/library/a/c;->b()V

    :cond_1
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/aadhk/product/library/a/a;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/product/library/a/a;->a:Landroid/app/ProgressDialog;

    .line 35
    iget-object v0, p0, Lcom/aadhk/product/library/a/a;->a:Landroid/app/ProgressDialog;

    iget-boolean v1, p0, Lcom/aadhk/product/library/a/a;->f:Z

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 36
    iget-object v0, p0, Lcom/aadhk/product/library/a/a;->a:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/aadhk/product/library/a/b;

    invoke-direct {v1, p0}, Lcom/aadhk/product/library/a/b;-><init>(Lcom/aadhk/product/library/a/a;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 42
    iget-object v0, p0, Lcom/aadhk/product/library/a/a;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/aadhk/product/library/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/aadhk/product/library/a/a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 44
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 45
    return-void
.end method
