.class public final Lcom/google/android/gms/internal/cd;
.super Lcom/google/android/gms/internal/ci;

# interfaces
.implements Lcom/google/android/gms/internal/cg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/graphics/drawable/Drawable;

.field private final e:Ljava/lang/String;

.field private final f:D

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/Object;

.field private j:Lcom/google/android/gms/internal/cf;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ci;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cd;->i:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/cd;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/cd;->b:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/google/android/gms/internal/cd;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/cd;->d:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/google/android/gms/internal/cd;->e:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/internal/cd;->f:D

    iput-object p8, p0, Lcom/google/android/gms/internal/cd;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/cd;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/cd;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->j:Lcom/google/android/gms/internal/cf;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->j:Lcom/google/android/gms/internal/cf;

    const-string v2, "2"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/cf;->a(Ljava/lang/String;I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/cf;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cd;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/cd;->j:Lcom/google/android/gms/internal/cf;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Lcom/google/android/gms/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/a/f;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/a/f;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/cd;->f:D

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cd;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->j:Lcom/google/android/gms/internal/cf;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->j:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->a()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
