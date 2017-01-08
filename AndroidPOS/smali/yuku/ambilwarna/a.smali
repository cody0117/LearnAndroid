.class public final Lyuku/ambilwarna/a;
.super Landroid/support/v4/app/DialogFragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:Landroid/text/TextWatcher;

.field private b:I

.field private c:I

.field private d:I

.field private e:Lyuku/ambilwarna/e;

.field private f:Lyuku/ambilwarna/AmbilWarnaKotak;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/view/ViewGroup;

.field private p:Landroid/widget/EditText;

.field private q:Ljava/lang/String;

.field private final r:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lyuku/ambilwarna/a;->r:[F

    .line 184
    new-instance v0, Lyuku/ambilwarna/b;

    invoke-direct {v0, p0}, Lyuku/ambilwarna/b;-><init>(Lyuku/ambilwarna/a;)V

    iput-object v0, p0, Lyuku/ambilwarna/a;->a:Landroid/text/TextWatcher;

    .line 24
    return-void
.end method

.method static synthetic a(Lyuku/ambilwarna/a;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method public static a(I)Lyuku/ambilwarna/a;
    .locals 3
    .parameter

    .prologue
    .line 54
    new-instance v0, Lyuku/ambilwarna/a;

    invoke-direct {v0}, Lyuku/ambilwarna/a;-><init>()V

    .line 55
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 56
    const-string v2, "color"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {v0, v1}, Lyuku/ambilwarna/a;->setArguments(Landroid/os/Bundle;)V

    .line 59
    return-object v0
.end method

.method static synthetic a(Lyuku/ambilwarna/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lyuku/ambilwarna/a;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lyuku/ambilwarna/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lyuku/ambilwarna/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lyuku/ambilwarna/a;)[F
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lyuku/ambilwarna/a;->r:[F

    return-object v0
.end method

.method static synthetic d(Lyuku/ambilwarna/a;)Lyuku/ambilwarna/AmbilWarnaKotak;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lyuku/ambilwarna/a;->f:Lyuku/ambilwarna/AmbilWarnaKotak;

    return-object v0
.end method

.method static synthetic e(Lyuku/ambilwarna/a;)F
    .locals 2
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lyuku/ambilwarna/a;->r:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method static synthetic f(Lyuku/ambilwarna/a;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lyuku/ambilwarna/a;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lyuku/ambilwarna/a;)I
    .locals 1
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lyuku/ambilwarna/a;->r:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method static synthetic h(Lyuku/ambilwarna/a;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lyuku/ambilwarna/a;->g:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    .line 215
    iget-object v0, p0, Lyuku/ambilwarna/a;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lyuku/ambilwarna/a;->r:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lyuku/ambilwarna/a;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x43b4

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 216
    iget-object v1, p0, Lyuku/ambilwarna/a;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 217
    const/4 v0, 0x0

    move v1, v0

    .line 218
    :goto_0
    iget-object v0, p0, Lyuku/ambilwarna/a;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 219
    iget-object v2, p0, Lyuku/ambilwarna/a;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lyuku/ambilwarna/a;->k:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, p0, Lyuku/ambilwarna/a;->o:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 220
    iget-object v2, p0, Lyuku/ambilwarna/a;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    iget-object v3, p0, Lyuku/ambilwarna/a;->k:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    iget-object v3, p0, Lyuku/ambilwarna/a;->o:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    int-to-double v3, v3

    sub-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 221
    iget-object v1, p0, Lyuku/ambilwarna/a;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    return-void

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public final a(Lyuku/ambilwarna/e;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lyuku/ambilwarna/a;->e:Lyuku/ambilwarna/e;

    .line 212
    return-void
.end method

.method protected final b()V
    .locals 7

    .prologue
    .line 225
    iget-object v0, p0, Lyuku/ambilwarna/a;->r:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lyuku/ambilwarna/a;->f:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v1}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 226
    const/high16 v0, 0x3f80

    iget-object v2, p0, Lyuku/ambilwarna/a;->r:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    sub-float/2addr v0, v2

    iget-object v2, p0, Lyuku/ambilwarna/a;->f:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v2}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    .line 227
    iget-object v0, p0, Lyuku/ambilwarna/a;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 228
    iget-object v3, p0, Lyuku/ambilwarna/a;->f:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaKotak;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-double v3, v1

    iget-object v1, p0, Lyuku/ambilwarna/a;->l:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    iget-object v1, p0, Lyuku/ambilwarna/a;->o:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    int-to-double v5, v1

    sub-double/2addr v3, v5

    double-to-int v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 229
    iget-object v1, p0, Lyuku/ambilwarna/a;->f:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v1}, Lyuku/ambilwarna/AmbilWarnaKotak;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    float-to-double v1, v1

    iget-object v3, p0, Lyuku/ambilwarna/a;->l:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    iget-object v3, p0, Lyuku/ambilwarna/a;->o:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    int-to-double v3, v3

    sub-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 230
    iget-object v1, p0, Lyuku/ambilwarna/a;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    return-void
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 337
    iget-object v1, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    const-string v2, "[0-9a-fA-F]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    .line 339
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    iget-object v1, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    sget v2, Lyuku/ambilwarna/i;->c:I

    invoke-virtual {p0, v2}, Lyuku/ambilwarna/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v1, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 351
    :goto_0
    return v0

    .line 343
    :cond_0
    if-nez v2, :cond_1

    .line 344
    iget-object v1, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    sget v2, Lyuku/ambilwarna/i;->a:I

    invoke-virtual {p0, v2}, Lyuku/ambilwarna/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 347
    iget-object v1, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    sget v2, Lyuku/ambilwarna/i;->b:I

    invoke-virtual {p0, v2}, Lyuku/ambilwarna/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 351
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 321
    iget-object v0, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    sget v2, Lyuku/ambilwarna/g;->a:I

    if-ne v1, v2, :cond_2

    .line 323
    iget-object v0, p0, Lyuku/ambilwarna/a;->e:Lyuku/ambilwarna/e;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lyuku/ambilwarna/a;->e:Lyuku/ambilwarna/e;

    .line 325
    :cond_0
    invoke-virtual {p0}, Lyuku/ambilwarna/a;->dismiss()V

    .line 334
    :cond_1
    :goto_0
    return-void

    .line 326
    :cond_2
    sget v2, Lyuku/ambilwarna/g;->b:I

    if-ne v1, v2, :cond_1

    .line 327
    iget-object v1, p0, Lyuku/ambilwarna/a;->e:Lyuku/ambilwarna/e;

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {p0}, Lyuku/ambilwarna/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    :cond_3
    :goto_1
    iget-object v1, p0, Lyuku/ambilwarna/a;->e:Lyuku/ambilwarna/e;

    invoke-interface {v1, v0}, Lyuku/ambilwarna/e;->a(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lyuku/ambilwarna/a;->dismiss()V

    goto :goto_0

    .line 329
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x103006f

    const v2, 0x103000b

    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    if-eqz p1, :cond_1

    const-string v0, "key_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "key_theme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const-string v0, "key_color_original"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lyuku/ambilwarna/a;->b:I

    .line 81
    const-string v0, "key_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lyuku/ambilwarna/a;->c:I

    .line 82
    const-string v0, "key_theme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lyuku/ambilwarna/a;->d:I

    .line 90
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 91
    iget v0, p0, Lyuku/ambilwarna/a;->d:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lyuku/ambilwarna/a;->d:I

    const v1, 0x1030073

    if-eq v0, v1, :cond_0

    .line 92
    iput v3, p0, Lyuku/ambilwarna/a;->d:I

    .line 100
    :cond_0
    :goto_1
    const/4 v0, 0x1

    iget v1, p0, Lyuku/ambilwarna/a;->d:I

    invoke-virtual {p0, v0, v1}, Lyuku/ambilwarna/a;->setStyle(II)V

    .line 101
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Lyuku/ambilwarna/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    const-string v1, "color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lyuku/ambilwarna/a;->b:I

    .line 86
    const-string v1, "color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lyuku/ambilwarna/a;->c:I

    .line 87
    const-string v1, "theme"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lyuku/ambilwarna/a;->d:I

    goto :goto_0

    .line 95
    :cond_2
    iget v0, p0, Lyuku/ambilwarna/a;->d:I

    if-eq v0, v2, :cond_0

    .line 96
    iput v2, p0, Lyuku/ambilwarna/a;->d:I

    goto :goto_1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 105
    sget v0, Lyuku/ambilwarna/h;->a:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lyuku/ambilwarna/a;->g:Landroid/view/View;

    .line 106
    iget v0, p0, Lyuku/ambilwarna/a;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lyuku/ambilwarna/a;->c:I

    iget-object v1, p0, Lyuku/ambilwarna/a;->r:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v0, p0, Lyuku/ambilwarna/a;->g:Landroid/view/View;

    sget v1, Lyuku/ambilwarna/g;->f:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lyuku/ambilwarna/a;->h:Landroid/view/View;

    iget-object v0, p0, Lyuku/ambilwarna/a;->g:Landroid/view/View;

    sget v1, Lyuku/ambilwarna/g;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lyuku/ambilwarna/AmbilWarnaKotak;

    iput-object v0, p0, Lyuku/ambilwarna/a;->f:Lyuku/ambilwarna/AmbilWarnaKotak;

    iget-object v0, p0, Lyuku/ambilwarna/a;->g:Landroid/view/View;

    sget v1, Lyuku/ambilwarna/g;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lyuku/ambilwarna/a;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lyuku/ambilwarna/a;->g:Landroid/view/View;

    sget v1, Lyuku/ambilwarna/g;->i:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lyuku/ambilwarna/a;->i:Landroid/view/View;

    iget-object v0, p0, Lyuku/ambilwarna/a;->g:Landroid/view/View;

    sget v1, Lyuku/ambilwarna/g;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lyuku/ambilwarna/a;->j:Landroid/view/View;

    iget-object v0, p0, Lyuku/ambilwarna/a;->g:Landroid/view/View;

    sget v1, Lyuku/ambilwarna/g;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lyuku/ambilwarna/a;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lyuku/ambilwarna/a;->g:Landroid/view/View;

    sget v1, Lyuku/ambilwarna/g;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lyuku/ambilwarna/a;->m:Landroid/widget/Button;

    iget-object v0, p0, Lyuku/ambilwarna/a;->g:Landroid/view/View;

    sget v1, Lyuku/ambilwarna/g;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lyuku/ambilwarna/a;->n:Landroid/widget/Button;

    iget-object v0, p0, Lyuku/ambilwarna/a;->g:Landroid/view/View;

    sget v1, Lyuku/ambilwarna/g;->e:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lyuku/ambilwarna/a;->o:Landroid/view/ViewGroup;

    iget-object v0, p0, Lyuku/ambilwarna/a;->g:Landroid/view/View;

    sget v1, Lyuku/ambilwarna/g;->j:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    iget-object v0, p0, Lyuku/ambilwarna/a;->f:Lyuku/ambilwarna/AmbilWarnaKotak;

    iget-object v1, p0, Lyuku/ambilwarna/a;->r:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lyuku/ambilwarna/AmbilWarnaKotak;->a(F)V

    iget-object v0, p0, Lyuku/ambilwarna/a;->i:Landroid/view/View;

    iget v1, p0, Lyuku/ambilwarna/a;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lyuku/ambilwarna/a;->j:Landroid/view/View;

    iget v1, p0, Lyuku/ambilwarna/a;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    :cond_0
    iget-object v0, p0, Lyuku/ambilwarna/a;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyuku/ambilwarna/a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lyuku/ambilwarna/c;

    invoke-direct {v1, p0}, Lyuku/ambilwarna/c;-><init>(Lyuku/ambilwarna/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    iget v1, p0, Lyuku/ambilwarna/a;->c:I

    invoke-static {v1}, Lyuku/ambilwarna/d;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    iget-object v1, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 108
    :cond_1
    iget-object v0, p0, Lyuku/ambilwarna/a;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lyuku/ambilwarna/a;->f:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v0, p0}, Lyuku/ambilwarna/AmbilWarnaKotak;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lyuku/ambilwarna/a;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lyuku/ambilwarna/a;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    iget-object v1, p0, Lyuku/ambilwarna/a;->a:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget-object v0, p0, Lyuku/ambilwarna/a;->g:Landroid/view/View;

    return-object v0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    const-string v0, "key_color_original"

    iget v1, p0, Lyuku/ambilwarna/a;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    const-string v0, "key_color"

    iget-object v1, p0, Lyuku/ambilwarna/a;->r:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    const-string v0, "key_theme"

    iget v1, p0, Lyuku/ambilwarna/a;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x43b4

    const/high16 v5, 0x3f80

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lyuku/ambilwarna/a;->h:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 266
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 267
    cmpg-float v4, v0, v1

    if-gez v4, :cond_1

    move v0, v1

    .line 269
    :cond_1
    iget-object v4, p0, Lyuku/ambilwarna/a;->h:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    .line 270
    iget-object v0, p0, Lyuku/ambilwarna/a;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v4, 0x3a83126f

    sub-float/2addr v0, v4

    .line 271
    :cond_2
    iget-object v4, p0, Lyuku/ambilwarna/a;->h:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v6, v4

    mul-float/2addr v0, v4

    sub-float v0, v6, v0

    .line 272
    cmpl-float v4, v0, v6

    if-nez v4, :cond_a

    .line 274
    :goto_0
    iget-object v0, p0, Lyuku/ambilwarna/a;->r:[F

    aput v1, v0, v2

    .line 277
    iget-object v0, p0, Lyuku/ambilwarna/a;->f:Lyuku/ambilwarna/AmbilWarnaKotak;

    iget-object v1, p0, Lyuku/ambilwarna/a;->r:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lyuku/ambilwarna/AmbilWarnaKotak;->a(F)V

    .line 278
    invoke-virtual {p0}, Lyuku/ambilwarna/a;->a()V

    .line 279
    iget-object v0, p0, Lyuku/ambilwarna/a;->j:Landroid/view/View;

    iget-object v1, p0, Lyuku/ambilwarna/a;->r:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 280
    iget-object v0, p0, Lyuku/ambilwarna/a;->r:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-static {v0}, Lyuku/ambilwarna/d;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strColor 0:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v1, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    const-string v2, "#"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    iget-object v1, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    move v0, v3

    .line 315
    :goto_1
    return v0

    .line 286
    :cond_3
    iget-object v0, p0, Lyuku/ambilwarna/a;->f:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 287
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 289
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 290
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 292
    cmpg-float v4, v0, v1

    if-gez v4, :cond_5

    move v0, v1

    .line 294
    :cond_5
    iget-object v4, p0, Lyuku/ambilwarna/a;->f:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v4}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_6

    .line 295
    iget-object v0, p0, Lyuku/ambilwarna/a;->f:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v0}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 296
    :cond_6
    cmpg-float v4, v2, v1

    if-gez v4, :cond_9

    .line 298
    :goto_2
    iget-object v2, p0, Lyuku/ambilwarna/a;->f:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v2}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    .line 299
    iget-object v1, p0, Lyuku/ambilwarna/a;->f:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v1}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    .line 301
    :cond_7
    iget-object v2, p0, Lyuku/ambilwarna/a;->f:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v2}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v5, v2

    mul-float/2addr v0, v2

    iget-object v2, p0, Lyuku/ambilwarna/a;->r:[F

    aput v0, v2, v3

    .line 302
    iget-object v0, p0, Lyuku/ambilwarna/a;->f:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v0}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v5, v0

    mul-float/2addr v0, v1

    sub-float v0, v5, v0

    iget-object v1, p0, Lyuku/ambilwarna/a;->r:[F

    const/4 v2, 0x2

    aput v0, v1, v2

    .line 305
    invoke-virtual {p0}, Lyuku/ambilwarna/a;->b()V

    .line 306
    iget-object v0, p0, Lyuku/ambilwarna/a;->j:Landroid/view/View;

    iget-object v1, p0, Lyuku/ambilwarna/a;->r:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 307
    iget-object v0, p0, Lyuku/ambilwarna/a;->r:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-static {v0}, Lyuku/ambilwarna/d;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strColor 1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v1, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    const-string v2, "#"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    iget-object v1, p0, Lyuku/ambilwarna/a;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    move v0, v3

    .line 311
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 315
    goto/16 :goto_1

    :cond_9
    move v1, v2

    goto :goto_2

    :cond_a
    move v1, v0

    goto/16 :goto_0
.end method
