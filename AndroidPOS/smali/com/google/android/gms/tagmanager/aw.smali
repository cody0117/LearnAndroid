.class final Lcom/google/android/gms/tagmanager/aw;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/gms/tagmanager/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/ah",
            "<",
            "Lcom/google/android/gms/internal/el;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/el;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/ah;Lcom/google/android/gms/internal/el;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/ah",
            "<",
            "Lcom/google/android/gms/internal/el;",
            ">;",
            "Lcom/google/android/gms/internal/el;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/aw;->a:Lcom/google/android/gms/tagmanager/ah;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/aw;->b:Lcom/google/android/gms/internal/el;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/tagmanager/ah;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tagmanager/ah",
            "<",
            "Lcom/google/android/gms/internal/el;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/aw;->a:Lcom/google/android/gms/tagmanager/ah;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/el;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/aw;->b:Lcom/google/android/gms/internal/el;

    return-object v0
.end method
