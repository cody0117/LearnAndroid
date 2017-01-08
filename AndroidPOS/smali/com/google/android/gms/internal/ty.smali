.class final Lcom/google/android/gms/internal/ty;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/tx;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/google/android/gms/internal/qa;

.field public final e:Lcom/google/android/gms/internal/gs;

.field public f:Lcom/google/android/gms/internal/ax;

.field public g:Lcom/google/android/gms/internal/lk;

.field public h:Lcom/google/android/gms/internal/lk;

.field public i:Lcom/google/android/gms/internal/ay;

.field public j:Lcom/google/android/gms/internal/la;

.field public k:Lcom/google/android/gms/internal/lb;

.field public l:Lcom/google/android/gms/internal/lc;

.field public m:Lcom/google/android/gms/internal/bi;

.field public n:Lcom/google/android/gms/internal/ho;

.field public o:Lcom/google/android/gms/internal/gw;

.field public p:Lcom/google/android/gms/internal/cl;

.field public q:Lcom/google/android/gms/internal/cm;

.field public r:Lcom/google/android/gms/internal/bz;

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lcom/google/android/gms/internal/gq;

.field public u:Lcom/google/android/gms/internal/li;

.field public v:Landroid/view/View;

.field public w:I

.field public x:Z

.field public y:Z

.field private z:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/lc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Lcom/google/android/gms/internal/gs;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ty;->u:Lcom/google/android/gms/internal/li;

    iput-object v1, p0, Lcom/google/android/gms/internal/ty;->v:Landroid/view/View;

    iput v0, p0, Lcom/google/android/gms/internal/ty;->w:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ty;->x:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ty;->y:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ty;->z:Ljava/util/HashSet;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ay;->e:Z

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ty;->a:Lcom/google/android/gms/internal/tx;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ty;->i:Lcom/google/android/gms/internal/ay;

    iput-object p3, p0, Lcom/google/android/gms/internal/ty;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ty;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ty;->e:Lcom/google/android/gms/internal/gs;

    new-instance v0, Lcom/google/android/gms/internal/qa;

    new-instance v1, Lcom/google/android/gms/internal/ud;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ud;-><init>(Lcom/google/android/gms/internal/ty;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/qa;-><init>(Lcom/google/android/gms/internal/le;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ty;->d:Lcom/google/android/gms/internal/qa;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/tx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/tx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ty;->a:Lcom/google/android/gms/internal/tx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ty;->a:Lcom/google/android/gms/internal/tx;

    iget v1, p2, Lcom/google/android/gms/internal/ay;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tx;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ty;->a:Lcom/google/android/gms/internal/tx;

    iget v1, p2, Lcom/google/android/gms/internal/ay;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tx;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ty;->a:Lcom/google/android/gms/internal/tx;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tx;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/lc;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ty;->z:Ljava/util/HashSet;

    return-object v0
.end method

.method public final a(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/lc;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ty;->z:Ljava/util/HashSet;

    return-void
.end method
