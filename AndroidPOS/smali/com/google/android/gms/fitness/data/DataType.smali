.class public final Lcom/google/android/gms/fitness/data/DataType;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final A:Lcom/google/android/gms/fitness/data/DataType;

.field public static final B:Lcom/google/android/gms/fitness/data/DataType;

.field public static final C:Lcom/google/android/gms/fitness/data/DataType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field public static final D:Lcom/google/android/gms/fitness/data/DataType;

.field public static final E:[Lcom/google/android/gms/fitness/data/DataType;

.field public static final F:[Ljava/lang/String;

.field private static final G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final a:Lcom/google/android/gms/fitness/data/DataType;

.field public static final b:Lcom/google/android/gms/fitness/data/DataType;

.field public static final c:Lcom/google/android/gms/fitness/data/DataType;

.field public static final d:Lcom/google/android/gms/fitness/data/DataType;

.field public static final e:Lcom/google/android/gms/fitness/data/DataType;

.field public static final f:Lcom/google/android/gms/fitness/data/DataType;

.field public static final g:Lcom/google/android/gms/fitness/data/DataType;

.field public static final h:Lcom/google/android/gms/fitness/data/DataType;

.field public static final i:Lcom/google/android/gms/fitness/data/DataType;

.field public static final j:Lcom/google/android/gms/fitness/data/DataType;

.field public static final k:Lcom/google/android/gms/fitness/data/DataType;

.field public static final l:Lcom/google/android/gms/fitness/data/DataType;

.field public static final m:Lcom/google/android/gms/fitness/data/DataType;

.field public static final n:Lcom/google/android/gms/fitness/data/DataType;

.field public static final o:Lcom/google/android/gms/fitness/data/DataType;

.field public static final p:Lcom/google/android/gms/fitness/data/DataType;

.field public static final q:Lcom/google/android/gms/fitness/data/DataType;

.field public static final r:Lcom/google/android/gms/fitness/data/DataType;

.field public static final s:Lcom/google/android/gms/fitness/data/DataType;

.field public static final t:Lcom/google/android/gms/fitness/data/DataType;

.field public static final u:Lcom/google/android/gms/fitness/data/DataType;

.field public static final v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Lcom/google/android/gms/fitness/data/DataType;

.field public static final x:Lcom/google/android/gms/fitness/data/DataType;

.field public static final y:Lcom/google/android/gms/fitness/data/DataType;

.field public static final z:Lcom/google/android/gms/fitness/data/DataType;


# instance fields
.field private final H:I

.field private final I:Ljava/lang/String;

.field private final J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.step_count.delta"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->c:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->a:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.step_count.cumulative"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->c:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->b:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.step_count.cadence"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->n:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->c:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.activity.segment"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->a:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->d:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.calories.consumed"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->p:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->e:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.calories.expended"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->p:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->f:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.power.sample"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->q:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->g:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.activity.sample"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->a:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->b:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->h:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.activity.edge"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->a:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->z:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->i:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.accelerometer"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->A:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->B:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->C:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->j:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.heart_rate.bpm"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->e:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->k:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.location.sample"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->f:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->g:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->h:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->i:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->l:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.distance.delta"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->j:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->m:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.distance.cumulative"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->j:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->n:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.speed"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->m:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->o:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.cycling.wheel_revolution.cumulative"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->o:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->p:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.cycling.wheel_revolution.rpm"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->n:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->q:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.cycling.pedaling.cumulative"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->o:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->r:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.cycling.pedaling.cadence"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->n:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->s:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.height"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->k:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->t:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.weight"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->l:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->u:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->a:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->m:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->d:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->o:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->k:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/gms/fitness/data/DataType;->u:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/gms/fitness/data/DataType;->l:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->v:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.activity.summary"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->a:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->d:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->r:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->w:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->a:Lcom/google/android/gms/fitness/data/DataType;

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->x:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->m:Lcom/google/android/gms/fitness/data/DataType;

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->y:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.heart_rate.summary"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->s:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->t:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->u:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->z:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.location.bounding_box"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->v:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->w:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->x:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->y:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->A:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.power.summary"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->s:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->t:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->u:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->B:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.speed.summary"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->s:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->t:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->u:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->C:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.weight.summary"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->s:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->t:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->u:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->D:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/b;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->G:Ljava/util/Map;

    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/google/android/gms/fitness/data/DataType;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->j:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->i:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->h:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->d:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->w:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->e:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->f:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->s:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->r:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->p:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->q:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->n:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->m:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->k:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->z:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->t:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->A:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->l:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->g:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->B:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->o:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->C:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->c:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->b:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->a:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->u:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->D:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->E:[Lcom/google/android/gms/fitness/data/DataType;

    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->j:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v1, v1, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->i:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v1, v1, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->h:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v1, v1, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->d:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v1, v1, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->w:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v1, v1, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->e:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->f:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->s:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->r:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->p:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->q:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->n:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->m:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->k:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->z:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->t:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->A:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->l:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->g:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->B:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->o:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->C:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->c:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->b:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->a:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->u:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->D:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, v2, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->F:[Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/fitness/data/i;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Field;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/DataType;->H:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->J:Ljava/util/List;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p2}, Lcom/google/android/gms/internal/qo;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/fitness/data/DataType;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Field;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->J:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    const-string v1, "com.google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    goto :goto_0
.end method

.method final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataType;->H:I

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataType;->J:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/DataType;->J:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "DataType{%s%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataType;->I:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataType;->J:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/data/i;->a(Lcom/google/android/gms/fitness/data/DataType;Landroid/os/Parcel;)V

    return-void
.end method
