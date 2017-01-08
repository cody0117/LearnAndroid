.class public final Lcom/google/android/gms/internal/ey;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# static fields
.field static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Ljava/lang/String;

.field private final h:Lcom/google/android/gms/internal/mg;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "top-left"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "top-right"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "top-center"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "center"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "bottom-left"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "bottom-right"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "bottom-center"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/ey;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mg;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mg;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/internal/ey;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/ey;->c:I

    iput v1, p0, Lcom/google/android/gms/internal/ey;->d:I

    iput v1, p0, Lcom/google/android/gms/internal/ey;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ey;->f:Z

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/ey;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ey;->h:Lcom/google/android/gms/internal/mg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ey;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mg;->k()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ey;->j:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    const/16 v5, 0x32

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->j:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->h:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->e()Lcom/google/android/gms/internal/ay;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ay;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->h:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/lq;->d(Landroid/content/Context;)[I

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->i:Ljava/util/Map;

    const-string v4, "width"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->i:Ljava/util/Map;

    const-string v4, "width"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/lq;->b(Ljava/lang/String;)I

    move-result v4

    aget v0, v3, v2

    if-lt v4, v5, :cond_9

    if-ge v4, v0, :cond_9

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    iput v4, p0, Lcom/google/android/gms/internal/ey;->b:I

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->i:Ljava/util/Map;

    const-string v4, "height"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->i:Ljava/util/Map;

    const-string v4, "height"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/lq;->b(Ljava/lang/String;)I

    move-result v4

    aget v0, v3, v1

    if-lt v4, v5, :cond_a

    if-ge v4, v0, :cond_a

    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    iput v4, p0, Lcom/google/android/gms/internal/ey;->c:I

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->i:Ljava/util/Map;

    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->i:Ljava/util/Map;

    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/lq;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ey;->d:I

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->i:Ljava/util/Map;

    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->i:Ljava/util/Map;

    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/lq;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ey;->e:I

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->i:Ljava/util/Map;

    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->i:Ljava/util/Map;

    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ey;->f:Z

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->i:Ljava/util/Map;

    const-string v3, "customClosePosition"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/google/android/gms/internal/ey;->a:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iput-object v0, p0, Lcom/google/android/gms/internal/ey;->g:Ljava/lang/String;

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/ey;->b:I

    if-ltz v0, :cond_b

    iget v0, p0, Lcom/google/android/gms/internal/ey;->c:I

    if-ltz v0, :cond_b

    move v0, v1

    :goto_3
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->j:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, p0, Lcom/google/android/gms/internal/ey;->b:I

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/me;->a(Landroid/util/DisplayMetrics;I)I

    move-result v0

    add-int/lit8 v4, v0, 0x10

    iget v0, p0, Lcom/google/android/gms/internal/ey;->c:I

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/me;->a(Landroid/util/DisplayMetrics;I)I

    move-result v0

    add-int/lit8 v3, v0, 0x10

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->h:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_8

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/google/android/gms/internal/ey;->h:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->j:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v6, Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->j:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v6, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ey;->f:Z

    if-nez v0, :cond_c

    move v0, v1

    :goto_4
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->h:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v5, v0, v7, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->j:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ey;->d:I

    iget v3, p0, Lcom/google/android/gms/internal/ey;->e:I

    invoke-virtual {v6, v0, v2, v1, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->h:Lcom/google/android/gms/internal/mg;

    new-instance v1, Lcom/google/android/gms/internal/ay;

    iget-object v2, p0, Lcom/google/android/gms/internal/ey;->j:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/ads/d;

    iget v4, p0, Lcom/google/android/gms/internal/ey;->b:I

    iget v5, p0, Lcom/google/android/gms/internal/ey;->c:I

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/ads/d;-><init>(II)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ay;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mg;->a(Lcom/google/android/gms/internal/ay;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "x"

    iget v2, p0, Lcom/google/android/gms/internal/ey;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "y"

    iget v2, p0, Lcom/google/android/gms/internal/ey;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "width"

    iget v2, p0, Lcom/google/android/gms/internal/ey;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "height"

    iget v2, p0, Lcom/google/android/gms/internal/ey;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->h:Lcom/google/android/gms/internal/mg;

    const-string v2, "onSizeChanged"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/mg;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_5
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "state"

    const-string v2, "resized"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->h:Lcom/google/android/gms/internal/mg;

    const-string v2, "onStateChanged"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/mg;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto/16 :goto_2

    :cond_b
    move v0, v2

    goto/16 :goto_3

    :cond_c
    move v0, v2

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto :goto_5
.end method
