.class final Lcom/soundcloud/android/crop/l;
.super Lcom/soundcloud/android/crop/u;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/soundcloud/android/crop/t;

.field private final b:Landroid/app/ProgressDialog;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/soundcloud/android/crop/t;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/soundcloud/android/crop/u;-><init>()V

    .line 132
    new-instance v0, Lcom/soundcloud/android/crop/m;

    invoke-direct {v0, p0}, Lcom/soundcloud/android/crop/m;-><init>(Lcom/soundcloud/android/crop/l;)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/l;->e:Ljava/lang/Runnable;

    .line 141
    iput-object p1, p0, Lcom/soundcloud/android/crop/l;->a:Lcom/soundcloud/android/crop/t;

    .line 142
    iput-object p3, p0, Lcom/soundcloud/android/crop/l;->b:Landroid/app/ProgressDialog;

    .line 143
    iput-object p2, p0, Lcom/soundcloud/android/crop/l;->c:Ljava/lang/Runnable;

    .line 144
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->a:Lcom/soundcloud/android/crop/t;

    invoke-virtual {v0, p0}, Lcom/soundcloud/android/crop/t;->b(Lcom/soundcloud/android/crop/v;)V

    .line 145
    iput-object p4, p0, Lcom/soundcloud/android/crop/l;->d:Landroid/os/Handler;

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/soundcloud/android/crop/l;)Lcom/soundcloud/android/crop/t;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->a:Lcom/soundcloud/android/crop/t;

    return-object v0
.end method

.method static synthetic b(Lcom/soundcloud/android/crop/l;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 161
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/soundcloud/android/crop/l;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 167
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 172
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/soundcloud/android/crop/l;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void

    .line 151
    :catchall_0
    move-exception v0

    .line 152
    iget-object v1, p0, Lcom/soundcloud/android/crop/l;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/soundcloud/android/crop/l;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    throw v0
.end method
