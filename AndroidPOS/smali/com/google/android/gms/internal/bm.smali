.class public final Lcom/google/android/gms/internal/bm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Date;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/location/Location;

.field private final g:Z

.field private final h:Landroid/os/Bundle;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/String;

.field private final k:Lcom/google/android/gms/ads/search/a;

.field private final l:I

.field private final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "emulator"

    invoke-static {v0}, Lcom/google/android/gms/internal/me;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bm;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/bn;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/bm;-><init>(Lcom/google/android/gms/internal/bn;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/bn;B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/bn;->a(Lcom/google/android/gms/internal/bn;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->b:Ljava/util/Date;

    invoke-static {p1}, Lcom/google/android/gms/internal/bn;->b(Lcom/google/android/gms/internal/bn;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/bn;->c(Lcom/google/android/gms/internal/bn;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/bm;->d:I

    invoke-static {p1}, Lcom/google/android/gms/internal/bn;->d(Lcom/google/android/gms/internal/bn;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->e:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/bn;->e(Lcom/google/android/gms/internal/bn;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->f:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/internal/bn;->f(Lcom/google/android/gms/internal/bn;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bm;->g:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/bn;->g(Lcom/google/android/gms/internal/bn;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->h:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/bn;->h(Lcom/google/android/gms/internal/bn;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->i:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/bn;->i(Lcom/google/android/gms/internal/bn;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->k:Lcom/google/android/gms/ads/search/a;

    invoke-static {p1}, Lcom/google/android/gms/internal/bn;->j(Lcom/google/android/gms/internal/bn;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/bm;->l:I

    invoke-static {p1}, Lcom/google/android/gms/internal/bn;->k(Lcom/google/android/gms/internal/bn;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->m:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/b/b;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->h:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->b:Ljava/util/Date;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->m:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/me;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/bm;->d:I

    return v0
.end method

.method public final d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final e()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->f:Landroid/location/Location;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bm;->g:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/ads/search/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->k:Lcom/google/android/gms/ads/search/a;

    return-object v0
.end method

.method public final i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->i:Ljava/util/Map;

    return-object v0
.end method

.method public final j()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/bm;->l:I

    return v0
.end method
