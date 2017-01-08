.class public final Lcom/aadhk/product/library/a/e;
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
.field private static b:Ljava/lang/Object;


# instance fields
.field private a:Lcom/aadhk/product/library/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/aadhk/product/library/a/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/aadhk/product/library/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/aadhk/product/library/a/e;->a:Lcom/aadhk/product/library/a/c;

    .line 12
    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 15
    sget-object v1, Lcom/aadhk/product/library/a/e;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/product/library/a/e;->a:Lcom/aadhk/product/library/a/c;

    invoke-interface {v0}, Lcom/aadhk/product/library/a/c;->a()V

    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const/4 v0, 0x0

    return-object v0

    .line 17
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
    .line 5
    invoke-direct {p0}, Lcom/aadhk/product/library/a/e;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/aadhk/product/library/a/e;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/product/library/a/e;->a:Lcom/aadhk/product/library/a/c;

    invoke-interface {v0}, Lcom/aadhk/product/library/a/c;->b()V

    :cond_0
    return-void
.end method
