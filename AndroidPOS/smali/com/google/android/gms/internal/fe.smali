.class public final Lcom/google/android/gms/internal/fe;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# instance fields
.field a:Landroid/util/DisplayMetrics;

.field b:I

.field c:I

.field private final d:Lcom/google/android/gms/internal/mg;

.field private final e:Landroid/content/Context;

.field private final f:Landroid/view/WindowManager;

.field private final g:Lcom/google/android/gms/internal/br;

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:[I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mg;Landroid/content/Context;Lcom/google/android/gms/internal/br;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x4320

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/internal/fe;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/fe;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/fe;->j:I

    iput v0, p0, Lcom/google/android/gms/internal/fe;->k:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/fe;->l:[I

    iput-object p1, p0, Lcom/google/android/gms/internal/fe;->d:Lcom/google/android/gms/internal/mg;

    iput-object p2, p0, Lcom/google/android/gms/internal/fe;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/fe;->g:Lcom/google/android/gms/internal/br;

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/fe;->f:Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fe;->a:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/fe;->f:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->a:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/fe;->h:F

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/fe;->i:I

    iget-object v0, p0, Lcom/google/android/gms/internal/fe;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/lq;->c(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->a:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float v1, v3, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fe;->a:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/fe;->b:I

    iget-object v2, p0, Lcom/google/android/gms/internal/fe;->a:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v0, v2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/fe;->c:I

    iget-object v0, p0, Lcom/google/android/gms/internal/fe;->d:Lcom/google/android/gms/internal/mg;

    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->l:[I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mg;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fe;->d:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0, v4, v4}, Lcom/google/android/gms/internal/mg;->measure(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fe;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->d:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mg;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/fe;->j:I

    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->d:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mg;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/fe;->k:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "width"

    iget v2, p0, Lcom/google/android/gms/internal/fe;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "height"

    iget v2, p0, Lcom/google/android/gms/internal/fe;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "density"

    iget v2, p0, Lcom/google/android/gms/internal/fe;->h:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "rotation"

    iget v2, p0, Lcom/google/android/gms/internal/fe;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->d:Lcom/google/android/gms/internal/mg;

    const-string v2, "onScreenInfoChanged"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/mg;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/fd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fd;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->g:Lcom/google/android/gms/internal/br;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/br;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fd;->b(Z)Lcom/google/android/gms/internal/fd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->g:Lcom/google/android/gms/internal/br;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/br;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fd;->a(Z)Lcom/google/android/gms/internal/fd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->g:Lcom/google/android/gms/internal/br;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/br;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fd;->c(Z)Lcom/google/android/gms/internal/fd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->g:Lcom/google/android/gms/internal/br;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/br;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fd;->d(Z)Lcom/google/android/gms/internal/fd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->g:Lcom/google/android/gms/internal/br;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fd;->a()Lcom/google/android/gms/internal/fd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/fc;

    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/fc;-><init>(Lcom/google/android/gms/internal/fd;B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fe;->d:Lcom/google/android/gms/internal/mg;

    const-string v2, "onDeviceFeaturesReceived"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fc;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mg;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "x"

    iget-object v2, p0, Lcom/google/android/gms/internal/fe;->l:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "y"

    iget-object v2, p0, Lcom/google/android/gms/internal/fe;->l:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "width"

    iget v2, p0, Lcom/google/android/gms/internal/fe;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "height"

    iget v2, p0, Lcom/google/android/gms/internal/fe;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->d:Lcom/google/android/gms/internal/mg;

    const-string v2, "onDefaultPositionReceived"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/mg;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fe;->d:Lcom/google/android/gms/internal/mg;

    const-string v1, "onReadyEventReceived"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mg;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
