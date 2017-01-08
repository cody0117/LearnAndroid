.class final Lcom/google/android/gms/internal/ot;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/os;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/os;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ot;->a:Lcom/google/android/gms/internal/os;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ot;->a:Lcom/google/android/gms/internal/os;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/os;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ou;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ot;->a:Lcom/google/android/gms/internal/os;

    invoke-static {v0}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/os;)Lcom/google/android/gms/internal/oz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0, v5}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/oz;->c()V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ot;->a:Lcom/google/android/gms/internal/os;

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/os;ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ot;->a:Lcom/google/android/gms/internal/os;

    invoke-static {v0}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/os;)Lcom/google/android/gms/internal/oz;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/oz;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ot;->a:Lcom/google/android/gms/internal/os;

    invoke-static {v0}, Lcom/google/android/gms/internal/os;->b(Lcom/google/android/gms/internal/os;)Z

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ot;->a:Lcom/google/android/gms/internal/os;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/os;->e()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ou;->b()V

    goto :goto_0

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v3, :cond_5

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ou;->a()V

    goto :goto_0
.end method
