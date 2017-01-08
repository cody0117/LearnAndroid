.class public final Lcom/google/android/gms/internal/rj;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/internal/rk;

.field public static final b:Lcom/google/android/gms/internal/rl;

.field public static final c:Lcom/google/android/gms/internal/rn;

.field public static final d:Lcom/google/android/gms/internal/rm;

.field public static final e:Lcom/google/android/gms/internal/ro;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/rk;

    const-string v1, "created"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/rk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/rj;->a:Lcom/google/android/gms/internal/rk;

    new-instance v0, Lcom/google/android/gms/internal/rl;

    const-string v1, "lastOpenedTime"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/rl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/rj;->b:Lcom/google/android/gms/internal/rl;

    new-instance v0, Lcom/google/android/gms/internal/rn;

    const-string v1, "modified"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/rn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/rj;->c:Lcom/google/android/gms/internal/rn;

    new-instance v0, Lcom/google/android/gms/internal/rm;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/rj;->d:Lcom/google/android/gms/internal/rm;

    new-instance v0, Lcom/google/android/gms/internal/ro;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ro;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/rj;->e:Lcom/google/android/gms/internal/ro;

    return-void
.end method
