.class public final Lcom/aadhk/restpos/e/b;
.super Lcom/aadhk/restpos/e/c;
.source "ProGuard"


# instance fields
.field private E:Landroid/content/Context;

.field private F:Lcom/aadhk/restpos/bean/Order;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private H:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;)V
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
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/aadhk/restpos/e/c;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/aadhk/restpos/e/b;->E:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/aadhk/restpos/e/b;->F:Lcom/aadhk/restpos/bean/Order;

    .line 40
    iput-object p3, p0, Lcom/aadhk/restpos/e/b;->G:Ljava/util/List;

    .line 41
    invoke-virtual {p0, p1, p4}, Lcom/aadhk/restpos/e/b;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->y:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/e/b;->H:Z

    .line 44
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
    .line 33
    new-instance v0, Lcom/aadhk/restpos/e/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/aadhk/restpos/e/b;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 34
    invoke-super {v0}, Lcom/aadhk/restpos/e/c;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 47
    iget v0, p0, Lcom/aadhk/restpos/e/b;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/b;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/b;->s:I

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/b;->d:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    iget v0, p0, Lcom/aadhk/restpos/e/b;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/b;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/b;->s:I

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/b;->E:Landroid/content/Context;

    const v2, 0x7f080295

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/b;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/b;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/b;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 53
    iget v0, p0, Lcom/aadhk/restpos/e/b;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/b;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/b;->s:I

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/b;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/b;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/b;->e:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/b;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/b;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/b;->e:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/b;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 56
    iget v0, p0, Lcom/aadhk/restpos/e/b;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/b;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/b;->s:I

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/b;->E:Landroid/content/Context;

    const v3, 0x7f080151

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/b;->F:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getOrderTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aadhk/restpos/util/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/b;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/b;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/b;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->F:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/aadhk/restpos/e/b;->F:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-nez v1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->E:Landroid/content/Context;

    const v1, 0x7f080322

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/e/b;->E:Landroid/content/Context;

    const v4, 0x7f0801cb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/aadhk/restpos/e/b;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/b;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/b;->m:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 70
    iget v0, p0, Lcom/aadhk/restpos/e/b;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/b;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/b;->s:I

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/b;->E:Landroid/content/Context;

    const v3, 0x7f08014e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/b;->F:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getWaiterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/b;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/b;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/b;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->F:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/b;->E:Landroid/content/Context;

    const v3, 0x7f0801ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/b;->F:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/b;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/b;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/b;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    :cond_1
    return-void

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/e/b;->F:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->E:Landroid/content/Context;

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/aadhk/restpos/e/b;->F:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v1

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->E:Landroid/content/Context;

    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected final b()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    const/high16 v11, 0x3f80

    const/4 v6, 0x0

    .line 81
    iget v0, p0, Lcom/aadhk/restpos/e/b;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/b;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/b;->s:I

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/b;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/b;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/b;->e:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/b;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/b;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/b;->e:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/b;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/aadhk/restpos/bean/OrderItem;

    .line 90
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    if-ne v0, v12, :cond_1

    iget-boolean v0, p0, Lcom/aadhk/restpos/e/b;->H:Z

    if-eqz v0, :cond_0

    .line 91
    :cond_1
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    if-ne v0, v12, :cond_2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/e/b;->E:Landroid/content/Context;

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

    move-object v1, v0

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 104
    new-instance v10, Ljava/text/Bidi;

    const/4 v0, -0x2

    invoke-direct {v10, v1, v0}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {v10}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v0

    if-nez v0, :cond_3

    .line 107
    new-instance v0, Landroid/text/StaticLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/b;->o:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move v5, v11

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 113
    :goto_1
    iget-object v1, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/aadhk/restpos/e/b;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/b;->s:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 114
    iget-object v1, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 115
    iget-object v1, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 116
    iget v1, p0, Lcom/aadhk/restpos/e/b;->s:I

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/b;->s:I

    .line 118
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 121
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v0

    if-ne v0, v12, :cond_4

    .line 122
    const-string v0, "+"

    move-object v2, v0

    .line 127
    :goto_3
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 128
    invoke-virtual {v10}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v0

    if-nez v0, :cond_5

    .line 129
    new-instance v0, Landroid/text/StaticLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/b;->o:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move v5, v11

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 134
    :goto_4
    iget-object v1, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/aadhk/restpos/e/b;->t:I

    add-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/b;->s:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 135
    iget-object v1, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 136
    iget-object v1, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 137
    iget v1, p0, Lcom/aadhk/restpos/e/b;->s:I

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/b;->s:I

    goto :goto_2

    .line 94
    :cond_2
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 109
    :cond_3
    new-instance v0, Landroid/text/StaticLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u202b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/b;->o:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move v5, v11

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto/16 :goto_1

    .line 124
    :cond_4
    const-string v0, "-"

    move-object v2, v0

    goto/16 :goto_3

    .line 131
    :cond_5
    new-instance v0, Landroid/text/StaticLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u202b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/b;->o:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move v5, v11

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto/16 :goto_4

    .line 145
    :cond_6
    return-void
.end method

.method protected final c()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method protected final d()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    .line 151
    iget v0, p0, Lcom/aadhk/restpos/e/b;->e:I

    mul-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/aadhk/restpos/e/b;->e:I

    add-int/2addr v0, v1

    .line 152
    iget v1, p0, Lcom/aadhk/restpos/e/b;->g:I

    iget v2, p0, Lcom/aadhk/restpos/e/b;->h:I

    add-int/2addr v1, v2

    add-int v9, v0, v1

    .line 155
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/aadhk/restpos/bean/OrderItem;

    .line 156
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    if-ne v0, v11, :cond_0

    iget-boolean v0, p0, Lcom/aadhk/restpos/e/b;->H:Z

    if-eqz v0, :cond_6

    .line 158
    :cond_0
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    if-ne v0, v11, :cond_1

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/e/b;->E:Landroid/content/Context;

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

    move-object v1, v0

    .line 163
    :goto_1
    new-instance v0, Landroid/text/StaticLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/b;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/aadhk/restpos/e/b;->r:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 164
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v9, v0

    .line 166
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountAmt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    if-eq v0, v11, :cond_5

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\t-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/aadhk/restpos/e/b;->A:I

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/b;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/aadhk/restpos/e/b;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/aadhk/restpos/e/b;->r:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 169
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, v9

    .line 172
    :goto_2
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 174
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v8, v0

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 175
    new-instance v0, Landroid/text/StaticLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/b;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/aadhk/restpos/e/b;->r:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 176
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, v8

    move v8, v0

    goto :goto_3

    .line 161
    :cond_1
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    :cond_2
    move v0, v8

    :cond_3
    :goto_4
    move v9, v0

    .line 179
    goto/16 :goto_0

    .line 182
    :cond_4
    iget v0, p0, Lcom/aadhk/restpos/e/b;->r:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/b;->b:Landroid/graphics/Bitmap;

    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->b:Landroid/graphics/Bitmap;

    const/16 v1, 0x3c0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 184
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/b;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/e/b;->c:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 189
    return-void

    :cond_5
    move v0, v9

    goto :goto_2

    :cond_6
    move v0, v9

    goto :goto_4
.end method

.method public final bridge synthetic e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/aadhk/restpos/e/c;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
