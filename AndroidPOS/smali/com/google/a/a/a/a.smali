.class public final Lcom/google/a/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/b/c;
.implements Lcom/google/android/gms/ads/b/e;


# instance fields
.field private a:Lcom/google/android/gms/ads/AdView;

.field private b:Lcom/google/android/gms/ads/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/ads/b/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/b;
    .locals 4

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/ads/c;

    invoke-direct {v2}, Lcom/google/android/gms/ads/c;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/ads/b/a;->a()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c;->a(Ljava/util/Date;)Lcom/google/android/gms/ads/c;

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/ads/b/a;->b()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c;->a(I)Lcom/google/android/gms/ads/c;

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/ads/b/a;->c()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c;->a(Ljava/lang/String;)Lcom/google/android/gms/ads/c;

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/ads/b/a;->d()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c;->a(Landroid/location/Location;)Lcom/google/android/gms/ads/c;

    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/ads/b/a;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/google/android/gms/internal/me;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/c;

    :cond_4
    const-string v0, "tagForChildDirectedTreatment"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    const-string v0, "tagForChildDirectedTreatment"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c;->a(Z)Lcom/google/android/gms/ads/c;

    :cond_5
    if-eqz p2, :cond_8

    :goto_2
    const-string v0, "gw"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mad_hac"

    const-string v3, "mad_hac"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "adJson"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "_ad"

    const-string v3, "adJson"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v0, "_noRefresh"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v0, Lcom/google/a/a/a/a;

    invoke-virtual {v2, v0, p2}, Lcom/google/android/gms/ads/c;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/c;->a()Lcom/google/android/gms/ads/b;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/a/a/a/a;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/a;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->a()V

    iput-object v1, p0, Lcom/google/a/a/a/a;->a:Lcom/google/android/gms/ads/AdView;

    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a;->b:Lcom/google/android/gms/ads/e;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/a/a/a/a;->b:Lcom/google/android/gms/ads/e;

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/ads/b/d;Landroid/os/Bundle;Lcom/google/android/gms/ads/d;Lcom/google/android/gms/ads/b/a;Landroid/os/Bundle;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/a/a/a/a;->a:Lcom/google/android/gms/ads/AdView;

    iget-object v0, p0, Lcom/google/a/a/a/a;->a:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/d;

    invoke-virtual {p4}, Lcom/google/android/gms/ads/d;->b()I

    move-result v2

    invoke-virtual {p4}, Lcom/google/android/gms/ads/d;->a()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/d;)V

    iget-object v0, p0, Lcom/google/a/a/a/a;->a:Lcom/google/android/gms/ads/AdView;

    const-string v1, "pubid"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/a/a/a/a;->a:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/a/a/a/b;

    invoke-direct {v1, p0, p2}, Lcom/google/a/a/a/b;-><init>(Lcom/google/a/a/a/a;Lcom/google/android/gms/ads/b/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/a;)V

    iget-object v0, p0, Lcom/google/a/a/a/a;->a:Lcom/google/android/gms/ads/AdView;

    invoke-static {p1, p5, p6, p3}, Lcom/google/a/a/a/a;->a(Landroid/content/Context;Lcom/google/android/gms/ads/b/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/b;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/ads/b/f;Landroid/os/Bundle;Lcom/google/android/gms/ads/b/a;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/e;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/a/a/a/a;->b:Lcom/google/android/gms/ads/e;

    iget-object v0, p0, Lcom/google/a/a/a/a;->b:Lcom/google/android/gms/ads/e;

    const-string v1, "pubid"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/a/a/a/a;->b:Lcom/google/android/gms/ads/e;

    new-instance v1, Lcom/google/a/a/a/c;

    invoke-direct {v1, p0, p2}, Lcom/google/a/a/a/c;-><init>(Lcom/google/a/a/a/a;Lcom/google/android/gms/ads/b/f;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->a(Lcom/google/android/gms/ads/a;)V

    iget-object v0, p0, Lcom/google/a/a/a/a;->b:Lcom/google/android/gms/ads/e;

    invoke-static {p1, p4, p5, p3}, Lcom/google/a/a/a/a;->a(Landroid/content/Context;Lcom/google/android/gms/ads/b/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->a(Lcom/google/android/gms/ads/b;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/a;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/a;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->b()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/a;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/a;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->c()V

    :cond_0
    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/a;->a:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/a;->b:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->a()V

    return-void
.end method
