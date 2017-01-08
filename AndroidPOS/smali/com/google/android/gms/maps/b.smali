.class final Lcom/google/android/gms/maps/b;
.super Lcom/google/android/gms/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/a/a",
        "<",
        "Lcom/google/android/gms/maps/StreetViewPanoramaView$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/a/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/b;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/b;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/gms/maps/b;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/b;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    return-void
.end method
