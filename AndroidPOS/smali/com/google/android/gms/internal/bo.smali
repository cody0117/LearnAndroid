.class public final Lcom/google/android/gms/internal/bo;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ed;

.field private final b:Lcom/google/android/gms/internal/as;

.field private c:Lcom/google/android/gms/ads/a;

.field private d:Lcom/google/android/gms/internal/bc;

.field private e:[Lcom/google/android/gms/ads/d;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/view/ViewGroup;

.field private i:Lcom/google/android/gms/ads/doubleclick/a;

.field private j:Lcom/google/android/gms/ads/purchase/a;

.field private k:Lcom/google/android/gms/ads/purchase/b;

.field private l:Lcom/google/android/gms/ads/doubleclick/c;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/as;->a()Lcom/google/android/gms/internal/as;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/bo;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/as;B)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/as;->a()Lcom/google/android/gms/internal/as;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/bo;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/as;B)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/as;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ed;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bo;->a:Lcom/google/android/gms/internal/ed;

    iput-object p1, p0, Lcom/google/android/gms/internal/bo;->h:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/internal/bo;->b:Lcom/google/android/gms/internal/as;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/bb;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/bb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/bb;->a(Z)[Lcom/google/android/gms/ads/d;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/bo;->e:[Lcom/google/android/gms/ads/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bb;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bo;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ay;

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->e:[Lcom/google/android/gms/ads/d;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ay;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    const-string v1, "Ads by Google"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/me;->b(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ay;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/ay;

    sget-object v3, Lcom/google/android/gms/ads/d;->a:Lcom/google/android/gms/ads/d;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ay;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/me;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ay;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/as;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/bo;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/as;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bc;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/ads/a;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/bo;->c:Lcom/google/android/gms/ads/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ap;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ap;-><init>(Lcom/google/android/gms/ads/a;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/ax;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/bm;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->e:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ay;

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->e:[Lcom/google/android/gms/ads/d;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ay;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/bo;->a:Lcom/google/android/gms/internal/ed;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/aq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Lcom/google/android/gms/internal/ed;)Lcom/google/android/gms/internal/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->c:Lcom/google/android/gms/ads/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    new-instance v1, Lcom/google/android/gms/internal/ap;

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->c:Lcom/google/android/gms/ads/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ap;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/ax;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->i:Lcom/google/android/gms/ads/doubleclick/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    new-instance v1, Lcom/google/android/gms/internal/aw;

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->i:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/aw;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/bi;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->j:Lcom/google/android/gms/ads/purchase/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    new-instance v1, Lcom/google/android/gms/internal/ht;

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->j:Lcom/google/android/gms/ads/purchase/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ht;-><init>(Lcom/google/android/gms/ads/purchase/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/gw;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->k:Lcom/google/android/gms/ads/purchase/b;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    new-instance v1, Lcom/google/android/gms/internal/hy;

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->k:Lcom/google/android/gms/ads/purchase/b;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/hy;-><init>(Lcom/google/android/gms/ads/purchase/b;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/ho;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->l:Lcom/google/android/gms/ads/doubleclick/c;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    new-instance v1, Lcom/google/android/gms/internal/cc;

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->l:Lcom/google/android/gms/ads/doubleclick/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cc;-><init>(Lcom/google/android/gms/ads/doubleclick/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/bz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bc;->a()Lcom/google/android/gms/a/c;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->b:Lcom/google/android/gms/internal/as;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->h:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/as;->a(Landroid/content/Context;Lcom/google/android/gms/internal/bm;)Lcom/google/android/gms/internal/av;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/av;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->a:Lcom/google/android/gms/internal/ed;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bm;->i()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ed;->a(Ljava/util/Map;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_9
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->h:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/a/f;->a(Lcom/google/android/gms/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/bo;->f:Ljava/lang/String;

    return-void
.end method

.method public final varargs a([Lcom/google/android/gms/ads/d;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->e:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/bo;->e:[Lcom/google/android/gms/ads/d;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    new-instance v1, Lcom/google/android/gms/internal/ay;

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->h:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/bo;->e:[Lcom/google/android/gms/ads/d;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ay;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/ay;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/ads/d;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bc;->i()Lcom/google/android/gms/internal/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ay;->a()Lcom/google/android/gms/ads/d;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->e:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->e:[Lcom/google/android/gms/ads/d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bc;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->d:Lcom/google/android/gms/internal/bc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bc;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
