.class public final Lcom/aadhk/restpos/e/e;
.super Lcom/aadhk/restpos/e/c;
.source "ProGuard"


# instance fields
.field private E:Landroid/content/Context;

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Report;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Report;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/aadhk/restpos/e/c;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/aadhk/restpos/e/e;->E:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/aadhk/restpos/e/e;->F:Ljava/util/List;

    .line 37
    iput-object p8, p0, Lcom/aadhk/restpos/e/e;->G:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/aadhk/restpos/e/e;->H:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/aadhk/restpos/e/e;->I:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lcom/aadhk/restpos/e/e;->J:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/aadhk/restpos/e/e;->K:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/aadhk/restpos/e/e;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Report;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/aadhk/restpos/e/e;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/aadhk/restpos/e/e;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-super {v0}, Lcom/aadhk/restpos/e/c;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/e;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    .line 50
    return-void
.end method

.method public final b()V
    .locals 10

    .prologue
    .line 53
    iget v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/e;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/e;->K:Ljava/lang/String;

    iget v2, p0, Lcom/aadhk/restpos/e/e;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/e;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/e;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/e;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/e;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/e;->a:Landroid/content/Context;

    const v3, 0x7f0801f6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/e;->H:Ljava/lang/String;

    iget-object v3, p0, Lcom/aadhk/restpos/e/e;->B:Ljava/lang/String;

    iget-object v4, p0, Lcom/aadhk/restpos/e/e;->C:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/aadhk/restpos/util/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/e;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/e;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/e;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/e;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/e;->a:Landroid/content/Context;

    const v3, 0x7f0801f7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/e;->I:Ljava/lang/String;

    iget-object v3, p0, Lcom/aadhk/restpos/e/e;->B:Ljava/lang/String;

    iget-object v4, p0, Lcom/aadhk/restpos/e/e;->C:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/aadhk/restpos/util/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/e;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/e;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/e;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/e;->d:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/aadhk/restpos/bean/Report;

    .line 68
    iget v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/e;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/e;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/e;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/e;->e:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/e;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/e;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/e;->e:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/e;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 71
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Report;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    iget v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/e;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->c:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Report;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/e;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/e;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/e;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 77
    :cond_3
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Report;->getReportItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 78
    iget v1, p0, Lcom/aadhk/restpos/e/e;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/e;->e:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/aadhk/restpos/e/e;->s:I

    .line 79
    iget-object v1, p0, Lcom/aadhk/restpos/e/e;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/aadhk/restpos/e/e;->t:I

    int-to-float v4, v4

    iget v5, p0, Lcom/aadhk/restpos/e/e;->s:I

    int-to-float v5, v5

    iget-object v8, p0, Lcom/aadhk/restpos/e/e;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 80
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Report;->getId()I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_4

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getPercentage()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "% "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/aadhk/restpos/e/e;->A:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v4

    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->z:Ljava/lang/String;

    invoke-static {v3, v4, v5, v0}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_2
    iget-object v1, p0, Lcom/aadhk/restpos/e/e;->c:Landroid/graphics/Canvas;

    iget v3, p0, Lcom/aadhk/restpos/e/e;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/e;->s:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/e;->m:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Report;->getId()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_5

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getPercentage()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "% "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 84
    :cond_5
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Report;->getId()I

    move-result v1

    const/16 v3, 0xe

    if-ne v1, v3, :cond_7

    .line 85
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getId()J

    move-result-wide v3

    const-wide/16 v8, 0x1

    cmp-long v1, v3, v8

    if-nez v1, :cond_6

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 88
    :cond_6
    iget v1, p0, Lcom/aadhk/restpos/e/e;->A:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v3

    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->z:Ljava/lang/String;

    invoke-static {v1, v3, v4, v0}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 91
    :cond_7
    iget v1, p0, Lcom/aadhk/restpos/e/e;->A:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v3

    iget-object v5, p0, Lcom/aadhk/restpos/e/e;->z:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Report;->getId()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_b

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Report;->getId()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_b

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 100
    :cond_8
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Report;->getReportItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/e;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 102
    iget v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/e;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/e;->a:Landroid/content/Context;

    const v2, 0x7f080084

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/e;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/e;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/e;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 107
    :cond_9
    iget v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/e;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/e;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/e;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/e;->e:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/e;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/e;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/e;->e:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/e;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 110
    iget v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/e;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    .line 111
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/e;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 112
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/e;->a:Landroid/content/Context;

    const v3, 0x7f0801f5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/e;->J:Ljava/lang/String;

    iget-object v3, p0, Lcom/aadhk/restpos/e/e;->B:Ljava/lang/String;

    iget-object v4, p0, Lcom/aadhk/restpos/e/e;->C:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/aadhk/restpos/util/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/e;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/e;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/e;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 115
    iget v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/e;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/e;->a:Landroid/content/Context;

    const v3, 0x7f080202

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/e;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/e;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/e;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/e;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 119
    :cond_a
    return-void

    :cond_b
    move-object v0, v1

    goto/16 :goto_2
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/e;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/e;->s:I

    .line 124
    return-void
.end method

.method protected final d()V
    .locals 5

    .prologue
    .line 127
    iget v0, p0, Lcom/aadhk/restpos/e/e;->e:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x0

    iget v1, p0, Lcom/aadhk/restpos/e/e;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/aadhk/restpos/e/e;->h:I

    add-int/2addr v0, v1

    .line 129
    iget-object v1, p0, Lcom/aadhk/restpos/e/e;->H:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget v1, p0, Lcom/aadhk/restpos/e/e;->e:I

    add-int/2addr v0, v1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/e/e;->I:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    iget v1, p0, Lcom/aadhk/restpos/e/e;->e:I

    add-int/2addr v0, v1

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/e/e;->G:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    iget v1, p0, Lcom/aadhk/restpos/e/e;->e:I

    add-int/2addr v0, v1

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/e/e;->F:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Report;

    .line 142
    iget v3, p0, Lcom/aadhk/restpos/e/e;->e:I

    add-int/2addr v1, v3

    .line 143
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 144
    iget v3, p0, Lcom/aadhk/restpos/e/e;->e:I

    add-int/2addr v1, v3

    .line 146
    :cond_3
    iget v3, p0, Lcom/aadhk/restpos/e/e;->e:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getReportItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 148
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getReportItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    iget v0, p0, Lcom/aadhk/restpos/e/e;->e:I

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 153
    :cond_4
    iget v0, p0, Lcom/aadhk/restpos/e/e;->r:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/e;->b:Landroid/graphics/Bitmap;

    .line 154
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/e;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/aadhk/restpos/e/e;->c:Landroid/graphics/Canvas;

    .line 155
    iget-object v0, p0, Lcom/aadhk/restpos/e/e;->c:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 157
    return-void

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public final bridge synthetic e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/aadhk/restpos/e/c;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
