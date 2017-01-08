.class final Lcom/google/android/a/a/i;
.super Lcom/google/android/a/a/c;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/google/android/a/a/h;

.field private final b:Lcom/google/android/a/a/m;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/a/a/h;Lcom/google/android/a/a/m;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/a/a/i;->a:Lcom/google/android/a/a/h;

    invoke-direct {p0}, Lcom/google/android/a/a/c;-><init>()V

    .line 201
    iput-object p2, p0, Lcom/google/android/a/a/i;->b:Lcom/google/android/a/a/m;

    .line 202
    new-instance v0, Lcom/google/android/a/a/j;

    invoke-direct {v0, p0}, Lcom/google/android/a/a/j;-><init>(Lcom/google/android/a/a/i;)V

    iput-object v0, p0, Lcom/google/android/a/a/i;->c:Ljava/lang/Runnable;

    .line 209
    iget-object v0, p0, Lcom/google/android/a/a/i;->a:Lcom/google/android/a/a/h;

    invoke-static {v0}, Lcom/google/android/a/a/h;->a(Lcom/google/android/a/a/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/a/i;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    return-void
.end method

.method static synthetic a(Lcom/google/android/a/a/i;)Lcom/google/android/a/a/m;
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/a/a/i;->b:Lcom/google/android/a/a/m;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/a/a/i;)V
    .locals 2
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/a/a/i;->a:Lcom/google/android/a/a/h;

    invoke-static {v0}, Lcom/google/android/a/a/h;->a(Lcom/google/android/a/a/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/a/i;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/a/a/i;)Lcom/google/android/a/a/h;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/a/a/i;->a:Lcom/google/android/a/a/h;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/a/a/i;->a:Lcom/google/android/a/a/h;

    invoke-static {v0}, Lcom/google/android/a/a/h;->a(Lcom/google/android/a/a/h;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/a/a/k;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/a/a/k;-><init>(Lcom/google/android/a/a/i;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void
.end method
