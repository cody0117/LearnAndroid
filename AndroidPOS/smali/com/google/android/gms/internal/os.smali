.class public abstract Lcom/google/android/gms/internal/os;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/pb;"
    }
.end annotation


# static fields
.field public static final d:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field final b:Landroid/os/Handler;

.field c:Z

.field private final e:Landroid/os/Looper;

.field private final f:Ljava/lang/Object;

.field private g:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/os",
            "<TT;>.com/google/android/gms/internal/ou<*>;>;"
        }
    .end annotation
.end field

.field private i:Lcom/google/android/gms/internal/ox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/os",
            "<TT;>.com/google/android/gms/internal/ox;"
        }
    .end annotation
.end field

.field private j:I

.field private final k:[Ljava/lang/String;

.field private final l:Lcom/google/android/gms/internal/oz;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_esmobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/os;->d:[Ljava/lang/String;

    return-void
.end method

.method protected varargs constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/c;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/os;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/os;->h:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/os;->j:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/os;->c:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/px;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/os;->a:Landroid/content/Context;

    const-string v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/px;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/internal/os;->e:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/internal/oz;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/internal/oz;-><init>(Landroid/os/Looper;Lcom/google/android/gms/internal/pb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/os;->l:Lcom/google/android/gms/internal/oz;

    new-instance v0, Lcom/google/android/gms/internal/ot;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ot;-><init>(Lcom/google/android/gms/internal/os;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/os;->b:Landroid/os/Handler;

    iput-object p5, p0, Lcom/google/android/gms/internal/os;->k:[Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/internal/px;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/b;

    iget-object v1, p0, Lcom/google/android/gms/internal/os;->l:Lcom/google/android/gms/internal/oz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/oz;->a(Lcom/google/android/gms/common/api/b;)V

    invoke-static {p4}, Lcom/google/android/gms/internal/px;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/os;->l:Lcom/google/android/gms/internal/oz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/oz;->a(Lcom/google/android/gms/common/c;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/os;)Lcom/google/android/gms/internal/oz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/os;->l:Lcom/google/android/gms/internal/oz;

    return-object v0
.end method

.method private a(ILandroid/os/IInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    move v3, v0

    :goto_0
    if-eqz p2, :cond_1

    move v2, v0

    :goto_1
    if-ne v3, v2, :cond_2

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/px;->b(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/os;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/os;->j:I

    iput-object p2, p0, Lcom/google/android/gms/internal/os;->g:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/os;ILandroid/os/IInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/os;->a(ILandroid/os/IInterface;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/os;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/os;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/os;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/os;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/os;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/os;->j:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/os;->a(ILandroid/os/IInterface;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/os;)Lcom/google/android/gms/internal/ox;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/os;->i:Lcom/google/android/gms/internal/ox;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/os;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/os;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/os;)Lcom/google/android/gms/internal/ox;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/os;->i:Lcom/google/android/gms/internal/ox;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected final a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/os;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/os;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/internal/oy;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/gms/internal/oy;-><init>(Lcom/google/android/gms/internal/os;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/internal/pn;Lcom/google/android/gms/internal/ow;)V
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected final b(Landroid/os/IBinder;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/po;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/pn;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ow;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ow;-><init>(Lcom/google/android/gms/internal/os;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/pn;Lcom/google/android/gms/internal/ow;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/os;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/os;->b:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/os;->c:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/os;->a(ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/os;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/f;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/os;->a(ILandroid/os/IInterface;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/os;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/os;->b:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/os;->i:Lcom/google/android/gms/internal/ox;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling connect() while still connected, missing disconnect() for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/os;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/os;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/pc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/pc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/os;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/os;->i:Lcom/google/android/gms/internal/ox;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pc;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ox;)V

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ox;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ox;-><init>(Lcom/google/android/gms/internal/os;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/os;->i:Lcom/google/android/gms/internal/ox;

    iget-object v0, p0, Lcom/google/android/gms/internal/os;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/pc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/pc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/os;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/os;->i:Lcom/google/android/gms/internal/ox;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pc;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ox;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to connect to service: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/os;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/os;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/os;->b:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final e()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/os;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/os;->j:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/os;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/os;->j:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/os;->c:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/os;->h:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/os;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/os;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ou;->c()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/os;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/internal/os;->a(ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/os;->i:Lcom/google/android/gms/internal/ox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/os;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/pc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/pc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/os;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/os;->i:Lcom/google/android/gms/internal/ox;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pc;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ox;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/os;->i:Lcom/google/android/gms/internal/ox;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final h()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/os;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final i()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/os;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/os;->j:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/os;->e()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/os;->g:Landroid/os/IInterface;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/px;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/os;->g:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/os;->c:Z

    return v0
.end method
