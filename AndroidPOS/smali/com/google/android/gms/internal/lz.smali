.class public final Lcom/google/android/gms/internal/lz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/mc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mc",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ma;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ma;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/lz;->a:Lcom/google/android/gms/internal/mc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/mc;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/mc",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/mb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mb;-><init>(Lcom/google/android/gms/internal/lz;Ljava/lang/String;Lcom/google/android/gms/internal/mc;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/lm;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
