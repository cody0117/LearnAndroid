.class public final Lcom/aadhk/restpos/e/a;
.super Lcom/aadhk/restpos/e/b;
.source "ProGuard"


# instance fields
.field private D:Landroid/content/Context;

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/aadhk/restpos/bean/Order;

.field private G:Ljava/lang/String;

.field private H:Z

.field private I:Ljava/lang/String;


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
    .line 44
    invoke-direct {p0}, Lcom/aadhk/restpos/e/b;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/aadhk/restpos/e/a;->D:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/aadhk/restpos/e/a;->E:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lcom/aadhk/restpos/e/a;->F:Lcom/aadhk/restpos/bean/Order;

    .line 48
    iput-boolean p5, p0, Lcom/aadhk/restpos/e/a;->H:Z

    .line 49
    invoke-virtual {p4}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/a;->I:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->c()Lcom/aadhk/restpos/bean/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/a;->G:Ljava/lang/String;

    .line 51
    invoke-virtual {p0, p1, p4}, Lcom/aadhk/restpos/e/a;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 52
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
    .line 36
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
    .line 40
    new-instance v0, Lcom/aadhk/restpos/e/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/restpos/e/a;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;Z)V

    .line 41
    invoke-super {v0}, Lcom/aadhk/restpos/e/b;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/a;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 57
    iget-boolean v0, p0, Lcom/aadhk/restpos/e/a;->H:Z

    if-eqz v0, :cond_0

    .line 58
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->D:Landroid/content/Context;

    const v2, 0x7f090137

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 62
    :cond_0
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->F:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->F:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 69
    :goto_0
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/a;->F:Lcom/aadhk/restpos/bean/Order;

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

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->I:Ljava/lang/String;

    iget v2, p0, Lcom/aadhk/restpos/e/a;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 72
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->F:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/restpos/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->G:Ljava/lang/String;

    iget v2, p0, Lcom/aadhk/restpos/e/a;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 77
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/a;->F:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/a;->F:Lcom/aadhk/restpos/bean/Order;

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
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 80
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 81
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

    .line 82
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

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/a;->d:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->E:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 88
    iget v1, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 89
    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/aadhk/restpos/e/a;->t:I

    int-to-float v4, v4

    iget v5, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/aadhk/restpos/e/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 91
    iget v1, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 93
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v1

    if-ne v1, v8, :cond_1

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/aadhk/restpos/e/a;->D:Landroid/content/Context;

    const v4, 0x7f090273

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    :goto_1
    iget-object v3, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget v4, p0, Lcom/aadhk/restpos/e/a;->t:I

    int-to-float v4, v4

    iget v5, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/aadhk/restpos/e/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 109
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 110
    iget v1, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 111
    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getRemark()Ljava/lang/String;

    move-result-object v4

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

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 114
    :cond_0
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 117
    iget v1, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v4, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 118
    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/aadhk/restpos/e/a;->t:I

    add-int/lit8 v5, v5, 0x10

    int-to-float v5, v5

    iget v6, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/aadhk/restpos/e/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 119
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v1

    if-ne v1, v8, :cond_3

    .line 120
    const-string v1, "+"

    .line 124
    :goto_3
    iget v4, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 125
    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/e/a;->t:I

    add-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    iget v5, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/aadhk/restpos/e/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 95
    :cond_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/aadhk/restpos/e/a;->D:Landroid/content/Context;

    const v4, 0x7f090274

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 98
    :cond_2
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 122
    :cond_3
    const-string v1, "-"

    goto :goto_3

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_5

    .line 131
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 86
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 136
    :cond_6
    return-void
.end method

.method protected final c()V
    .locals 6

    .prologue
    .line 139
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 140
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

    .line 141
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

    .line 142
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 143
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/a;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->F:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getStartTime()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/a;->B:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/i;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/a;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/a;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 146
    iget v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/a;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/a;->s:I

    .line 148
    return-void
.end method

.method protected final d()V
    .locals 4

    .prologue
    .line 152
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

    .line 154
    iget-boolean v1, p0, Lcom/aadhk/restpos/e/a;->H:Z

    if-eqz v1, :cond_0

    .line 155
    iget v1, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v0, v1

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 159
    iget v3, p0, Lcom/aadhk/restpos/e/a;->f:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    .line 160
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getRemark()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 161
    iget v3, p0, Lcom/aadhk/restpos/e/a;->f:I

    add-int/2addr v1, v3

    .line 164
    :cond_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_3

    .line 166
    iget v3, p0, Lcom/aadhk/restpos/e/a;->f:I

    mul-int/lit8 v3, v3, 0x2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, v3

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 168
    goto :goto_0

    .line 171
    :cond_2
    iget v0, p0, Lcom/aadhk/restpos/e/a;->r:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/a;->b:Landroid/graphics/Bitmap;

    .line 172
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->b:Landroid/graphics/Bitmap;

    const/16 v1, 0x140

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 173
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/a;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/e/a;->c:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 176
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final bridge synthetic e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/aadhk/restpos/e/b;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
