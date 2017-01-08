.class final Lcom/google/android/gms/maps/a;
.super Lcom/google/android/gms/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/a/a",
        "<",
        "Lcom/google/android/gms/maps/MapView$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/maps/GoogleMapOptions;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/OnMapReadyCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/a/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/a;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/a;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/gms/maps/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/maps/a;->c:Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method
