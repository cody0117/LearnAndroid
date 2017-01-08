.class abstract Lcom/aadhk/restpos/e/c;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field protected A:I

.field protected B:Ljava/lang/String;

.field protected C:Ljava/lang/String;

.field protected D:Lcom/aadhk/restpos/bean/Company;

.field protected a:Landroid/content/Context;

.field protected b:Landroid/graphics/Bitmap;

.field protected c:Landroid/graphics/Canvas;

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:Landroid/graphics/Paint;

.field protected l:Landroid/graphics/Paint;

.field protected m:Landroid/graphics/Paint;

.field protected n:Landroid/graphics/Paint;

.field protected o:Landroid/text/TextPaint;

.field protected p:Landroid/graphics/Typeface;

.field protected q:Landroid/graphics/Typeface;

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:I

.field protected w:F

.field protected x:F

.field protected y:Lcom/aadhk/restpos/util/r;

.field protected z:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(Landroid/content/Context;Lcom/aadhk/restpos/bean/POSPrinterSetting;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x80

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 57
    iput-object p1, p0, Lcom/aadhk/restpos/e/c;->a:Landroid/content/Context;

    .line 62
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPaperWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/aadhk/restpos/e/c;->r:I

    .line 63
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getFontSize()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/e/c;->d:I

    .line 64
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginTop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/aadhk/restpos/e/c;->g:I

    .line 65
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginBottom()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/aadhk/restpos/e/c;->h:I

    .line 66
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginLeft()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/aadhk/restpos/e/c;->i:I

    .line 67
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginRight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/aadhk/restpos/e/c;->j:I

    .line 69
    iget v0, p0, Lcom/aadhk/restpos/e/c;->i:I

    iput v0, p0, Lcom/aadhk/restpos/e/c;->t:I

    .line 70
    iget v0, p0, Lcom/aadhk/restpos/e/c;->r:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->u:I

    .line 71
    iget v0, p0, Lcom/aadhk/restpos/e/c;->r:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->i:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/aadhk/restpos/e/c;->j:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/aadhk/restpos/e/c;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->v:I

    .line 73
    iget v0, p0, Lcom/aadhk/restpos/e/c;->d:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/aadhk/restpos/e/c;->e:I

    .line 74
    iget v0, p0, Lcom/aadhk/restpos/e/c;->d:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/aadhk/restpos/e/c;->f:I

    .line 77
    const-string v0, "Arial"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->p:Landroid/graphics/Typeface;

    .line 78
    const-string v0, "Arial"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->q:Landroid/graphics/Typeface;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->n:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->n:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->n:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->n:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->p:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->n:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->p:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->d:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->p:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->p:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 112
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 113
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->p:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 118
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->o:Landroid/text/TextPaint;

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    const-string v1, "99 "

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/e/c;->x:F

    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    const-string v1, " $$9999.99"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/e/c;->w:F

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->D:Lcom/aadhk/restpos/bean/Company;

    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->D:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->z:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->D:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/e/c;->A:I

    .line 127
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->y:Lcom/aadhk/restpos/util/r;

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->y:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->B:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->y:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->C:Ljava/lang/String;

    .line 130
    return-void

    .line 82
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x80t 0x40t
    .end array-data
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/aadhk/restpos/e/c;->d()V

    .line 134
    invoke-virtual {p0}, Lcom/aadhk/restpos/e/c;->a()V

    .line 135
    invoke-virtual {p0}, Lcom/aadhk/restpos/e/c;->b()V

    .line 136
    invoke-virtual {p0}, Lcom/aadhk/restpos/e/c;->c()V

    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method
