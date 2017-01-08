.class public final Lcom/google/android/gms/internal/oy;
.super Lcom/google/android/gms/internal/ou;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/os",
        "<TT;>.com/google/android/gms/internal/ou<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:Landroid/os/Bundle;

.field public final d:Landroid/os/IBinder;

.field final synthetic e:Lcom/google/android/gms/internal/os;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/os;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ou;-><init>(Lcom/google/android/gms/internal/os;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/internal/oy;->b:I

    iput-object p3, p0, Lcom/google/android/gms/internal/oy;->d:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/gms/internal/oy;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    invoke-static {v0, v5, v1}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/os;ILandroid/os/IInterface;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/oy;->b:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/oy;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/oy;->c:Landroid/os/Bundle;

    const-string v2, "pendingIntent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    invoke-static {v2}, Lcom/google/android/gms/internal/os;->d(Lcom/google/android/gms/internal/os;)Lcom/google/android/gms/internal/ox;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    invoke-static {v2}, Lcom/google/android/gms/internal/os;->e(Lcom/google/android/gms/internal/os;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/pc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/pc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/os;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    invoke-static {v4}, Lcom/google/android/gms/internal/os;->d(Lcom/google/android/gms/internal/os;)Lcom/google/android/gms/internal/ox;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/pc;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ox;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    invoke-static {v2}, Lcom/google/android/gms/internal/os;->f(Lcom/google/android/gms/internal/os;)Lcom/google/android/gms/internal/ox;

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    invoke-static {v2, v5, v1}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/os;ILandroid/os/IInterface;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    invoke-static {v1}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/os;)Lcom/google/android/gms/internal/oz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/a;

    iget v3, p0, Lcom/google/android/gms/internal/oy;->b:I

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/oz;->c()V

    goto :goto_0

    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/oy;->d:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/os;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    iget-object v2, p0, Lcom/google/android/gms/internal/oy;->d:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/os;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    const/4 v3, 0x3

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/os;ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    invoke-static {v0}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/os;)Lcom/google/android/gms/internal/oz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/oz;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    invoke-static {v0}, Lcom/google/android/gms/internal/os;->e(Lcom/google/android/gms/internal/os;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/pc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/pc;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/os;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    invoke-static {v3}, Lcom/google/android/gms/internal/os;->d(Lcom/google/android/gms/internal/os;)Lcom/google/android/gms/internal/ox;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/pc;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ox;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    invoke-static {v0}, Lcom/google/android/gms/internal/os;->f(Lcom/google/android/gms/internal/os;)Lcom/google/android/gms/internal/ox;

    iget-object v0, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    invoke-static {v0, v5, v1}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/os;ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    invoke-static {v0}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/os;)Lcom/google/android/gms/internal/oz;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/a;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/oz;->c()V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/oy;->e:Lcom/google/android/gms/internal/os;

    invoke-static {v0, v5, v1}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/os;ILandroid/os/IInterface;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A fatal developer error has occurred. Check the logs for further information."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method
