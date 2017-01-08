.class public final Lcom/google/android/gms/internal/kn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/mg;

.field public final b:Lcom/google/android/gms/internal/cz;

.field public final c:Lcom/google/android/gms/internal/cz;

.field private final d:Ljava/lang/Object;

.field private e:Ljava/lang/String;

.field private f:Lcom/google/android/gms/internal/lt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/lt",
            "<",
            "Lcom/google/android/gms/internal/ku;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/kn;->d:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/lt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/kn;->f:Lcom/google/android/gms/internal/lt;

    new-instance v0, Lcom/google/android/gms/internal/kp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kp;-><init>(Lcom/google/android/gms/internal/kn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/kn;->b:Lcom/google/android/gms/internal/cz;

    new-instance v0, Lcom/google/android/gms/internal/kq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kq;-><init>(Lcom/google/android/gms/internal/kn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/kn;->c:Lcom/google/android/gms/internal/cz;

    iput-object p1, p0, Lcom/google/android/gms/internal/kn;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/kn;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kn;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/lt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kn;->f:Lcom/google/android/gms/internal/lt;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/kn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kn;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/ku;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kn;->f:Lcom/google/android/gms/internal/lt;

    return-object v0
.end method
