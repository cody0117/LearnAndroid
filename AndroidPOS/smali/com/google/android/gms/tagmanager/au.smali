.class final Lcom/google/android/gms/tagmanager/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/av;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/as;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/as;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/au;->a:Lcom/google/android/gms/tagmanager/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tagmanager/aq;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/an;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/aq;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/ap;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/ap;",
            ">;",
            "Lcom/google/android/gms/tagmanager/an;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/aq;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/aq;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/an;->e()Lcom/google/android/gms/tagmanager/al;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/aq;->c()Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/aq;->e()Ljava/util/List;

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/an;->f()Lcom/google/android/gms/tagmanager/al;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/aq;->d()Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/aq;->f()Ljava/util/List;

    return-void
.end method
