.class public Lyuku/ambilwarna/AmbilWarnaKotak;
.super Landroid/view/View;
.source "ProGuard"


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Shader;

.field final c:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lyuku/ambilwarna/AmbilWarnaKotak;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0}, Lyuku/ambilwarna/AmbilWarnaKotak;->a()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lyuku/ambilwarna/AmbilWarnaKotak;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0}, Lyuku/ambilwarna/AmbilWarnaKotak;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lyuku/ambilwarna/AmbilWarnaKotak;->c:[F

    .line 30
    invoke-direct {p0}, Lyuku/ambilwarna/AmbilWarnaKotak;->a()V

    .line 31
    return-void

    .line 13
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private a()V
    .locals 2

    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 57
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lyuku/ambilwarna/AmbilWarnaKotak;->setLayerType(ILandroid/graphics/Paint;)V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method final a(F)V
    .locals 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaKotak;->c:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 49
    invoke-virtual {p0}, Lyuku/ambilwarna/AmbilWarnaKotak;->invalidate()V

    .line 50
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 35
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaKotak;->a:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lyuku/ambilwarna/AmbilWarnaKotak;->a:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredHeight()I

    move-result v2

    int-to-float v4, v2

    const/high16 v6, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lyuku/ambilwarna/AmbilWarnaKotak;->b:Landroid/graphics/Shader;

    .line 40
    :cond_0
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaKotak;->c:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    .line 41
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredWidth()I

    move-result v2

    int-to-float v3, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 42
    new-instance v2, Landroid/graphics/ComposeShader;

    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaKotak;->b:Landroid/graphics/Shader;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v0, v4}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 43
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaKotak;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 44
    invoke-virtual {p0}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lyuku/ambilwarna/AmbilWarnaKotak;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 45
    return-void
.end method
