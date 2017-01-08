.class final Lcom/google/android/gms/internal/mj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fi;

.field final synthetic b:Lcom/google/android/gms/internal/mi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mi;Lcom/google/android/gms/internal/fi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mj;->b:Lcom/google/android/gms/internal/mi;

    iput-object p2, p0, Lcom/google/android/gms/internal/mj;->a:Lcom/google/android/gms/internal/fi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mj;->a:Lcom/google/android/gms/internal/fi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fi;->k()V

    return-void
.end method
