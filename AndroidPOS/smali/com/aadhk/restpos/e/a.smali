.class public final Lcom/aadhk/restpos/e/a;
.super Lcom/aadhk/restpos/e/c;
.source "ProGuard"


# instance fields
.field private E:Landroid/content/Context;

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/aadhk/restpos/bean/Order;

.field private H:Ljava/lang/String;

.field private I:Z

.field private J:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aadhk/restpos/bean/Order;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/aadhk/restpos/e/c;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/aadhk/restpos/e/a;->E:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/aadhk/restpos/e/a;->F:Ljava/util/List;

    .line 46
    iput-object p2, p0, Lcom/aadhk/restpos/e/a;->G:Lcom/aadhk/restpos/bean/Order;

    .line 47
    iput-boolean p5, p0, Lcom/aadhk/restpos/e/a;->I:Z

    .line 48
    invoke-virtual {p4}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrinterName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/a;->J:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->d()Lcom/aadhk/restpos/bean/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/a;->H:Ljava/lang/String;

    .line 50
    invoke-virtual {p0, p1, p4}, Lcom/aadhk/restpos/e/a;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 51
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aadhk/restpos/bean/Order;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/aadhk/restpos/e/a;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;Z)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aadhk/restpos/bean/Order;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            "Z)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/aadhk/restpos/e/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/restpos/e/a;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;Z)V

    .line 40
    invoke-super {v0}, Lcom/aadhk/restpos/e/c;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/a;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 55
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getOrderCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getKitchenRemark()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aadhk/restpos/e/a;->I:Z

    if-eqz v0, :cond_4

    .line 58
    :cond_0
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/a;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/a;->f:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/a;->f:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/a;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 61
    iget-boolean v0, p0, Lcom/aadhk/restpos/e/a;->I:Z

    if-eqz v0, :cond_1

    .line 62
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->E:Landroid/content/Context;

    const v2, 0x7f080169

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getOrderCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/aadhk/restpos/e/a;->I:Z

    if-nez v0, :cond_2

    .line 67
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/a;->E:Landroid/content/Context;

    const v3, 0x7f080294

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/a;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getOrderCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getKitchenRemark()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getKitchenRemark()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 76
    :cond_3
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/a;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/a;->f:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/a;->f:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/a;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 80
    :cond_4
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 87
    :goto_0
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/a;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->J:Ljava/lang/String;

    iget v2, p0, Lcom/aadhk/restpos/e/a;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 90
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getOrderTime()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/a;->y:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aadhk/restpos/util/o;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->H:Ljava/lang/String;

    iget v2, p0, Lcom/aadhk/restpos/e/a;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 96
    return-void

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/a;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/a;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 99
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/a;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/a;->f:I

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/a;->f:I

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/a;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/a;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/a;->f:I

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/a;->f:I

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/a;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/a;->d:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    move v9, v7

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_5

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->F:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/aadhk/restpos/bean/OrderItem;

    .line 107
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 110
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 112
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->E:Landroid/content/Context;

    const v2, 0x7f0802d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_1
    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/aadhk/restpos/e/a;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 128
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 130
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/a;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/aadhk/restpos/e/a;->r:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 131
    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/aadhk/restpos/e/a;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 132
    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 133
    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 134
    iget v1, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v2, p0, Lcom/aadhk/restpos/e/a;->f:I

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 139
    :cond_0
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_3

    .line 141
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 142
    iget v2, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 143
    iget-object v2, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/aadhk/restpos/e/a;->t:I

    add-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    iget v5, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/aadhk/restpos/e/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 149
    iget v2, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 150
    iget-object v2, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierName()Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/aadhk/restpos/e/a;->t:I

    add-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 114
    :cond_1
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->E:Landroid/content/Context;

    const v2, 0x7f0802d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 117
    :cond_2
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v9, v0, :cond_4

    .line 156
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 105
    :cond_4
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_0

    .line 161
    :cond_5
    return-void
.end method

.method protected final c()V
    .locals 6

    .prologue
    .line 164
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 165
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/a;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/a;->f:I

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/a;->f:I

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/a;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/a;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/a;->f:I

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/a;->f:I

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/a;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 167
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/a;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 169
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    invoke-static {}, Lcom/aadhk/product/library/c/c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/a;->B:Ljava/lang/String;

    iget-object v3, p0, Lcom/aadhk/restpos/e/a;->C:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/util/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 171
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 173
    return-void
.end method

.method protected final d()V
    .locals 11

    .prologue
    .line 177
    iget v0, p0, Lcom/aadhk/restpos/e/a;->f:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/aadhk/restpos/e/a;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/aadhk/restpos/e/a;->h:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 179
    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getOrderCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getKitchenRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/aadhk/restpos/e/a;->I:Z

    if-eqz v1, :cond_4

    .line 180
    :cond_0
    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    .line 182
    iget-boolean v1, p0, Lcom/aadhk/restpos/e/a;->I:Z

    if-eqz v1, :cond_1

    .line 183
    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getOrderCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/aadhk/restpos/e/a;->I:Z

    if-nez v1, :cond_2

    .line 187
    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getKitchenRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 191
    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    .line 194
    :cond_3
    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    .line 197
    :cond_4
    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->F:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v1, v0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/aadhk/restpos/bean/OrderItem;

    .line 198
    iget v0, p0, Lcom/aadhk/restpos/e/a;->f:I

    mul-int/lit8 v0, v0, 0x3

    add-int v9, v1, v0

    .line 199
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 200
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/a;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/aadhk/restpos/e/a;->r:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 201
    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v9

    .line 204
    :goto_1
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_5

    .line 206
    iget v2, p0, Lcom/aadhk/restpos/e/a;->f:I

    mul-int/lit8 v2, v2, 0x2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_5
    move v1, v0

    .line 208
    goto :goto_0

    .line 211
    :cond_6
    iget v0, p0, Lcom/aadhk/restpos/e/a;->r:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/a;->b:Landroid/graphics/Bitmap;

    .line 212
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->b:Landroid/graphics/Bitmap;

    const/16 v1, 0x140

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 213
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    .line 214
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 216
    return-void

    :cond_7
    move v0, v9

    goto :goto_1
.end method

.method public final bridge synthetic e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/aadhk/restpos/e/c;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
