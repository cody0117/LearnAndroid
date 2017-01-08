.class public final Lcom/aadhk/restpos/e/d;
.super Lcom/aadhk/restpos/e/c;
.source "ProGuard"


# instance fields
.field private E:Landroid/content/Context;

.field private F:Ljava/lang/String;

.field private G:Lcom/aadhk/restpos/bean/Order;

.field private H:Lcom/aadhk/restpos/bean/Customer;

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderPayment;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Z

.field private N:Z

.field private O:Landroid/graphics/Bitmap;

.field private P:F

.field private Q:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;Z)V
    .locals 2
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
            "Lcom/aadhk/restpos/bean/Order;",
            "Lcom/aadhk/restpos/bean/Customer;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/aadhk/restpos/e/c;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    .line 63
    iput-object p3, p0, Lcom/aadhk/restpos/e/d;->H:Lcom/aadhk/restpos/bean/Customer;

    .line 64
    iput-object p4, p0, Lcom/aadhk/restpos/e/d;->I:Ljava/util/List;

    .line 65
    iput-boolean p6, p0, Lcom/aadhk/restpos/e/d;->N:Z

    .line 66
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getOrderPayments()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/d;->J:Ljava/util/List;

    .line 68
    invoke-virtual {p0, p1, p5}, Lcom/aadhk/restpos/e/d;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 70
    invoke-virtual {p5}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getHeader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/d;->L:Ljava/lang/String;

    .line 71
    invoke-virtual {p5}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getFooter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/d;->K:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->d()Lcom/aadhk/restpos/bean/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/d;->F:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->D:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isItemPriceIncludeTax()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/e/d;->M:Z

    .line 77
    invoke-virtual {p5}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getLogoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/aadhk/restpos/util/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getLogoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/d;->O:Landroid/graphics/Bitmap;

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->O:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 81
    iget v0, p0, Lcom/aadhk/restpos/e/d;->r:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->i:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/aadhk/restpos/e/d;->j:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->O:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->P:F

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->y:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/e/d;->Q:Z

    .line 87
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;Z)Landroid/graphics/Bitmap;
    .locals 7
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
            "Lcom/aadhk/restpos/bean/Order;",
            "Lcom/aadhk/restpos/bean/Customer;",
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
    .line 56
    new-instance v0, Lcom/aadhk/restpos/e/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/aadhk/restpos/e/d;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;Z)V

    .line 57
    invoke-super {v0}, Lcom/aadhk/restpos/e/c;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 90
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->O:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 92
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 94
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 95
    iget v1, p0, Lcom/aadhk/restpos/e/d;->P:F

    iget v2, p0, Lcom/aadhk/restpos/e/d;->P:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 96
    iget v1, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 97
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->O:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 100
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->O:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->P:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 101
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 104
    :cond_0
    iget-boolean v0, p0, Lcom/aadhk/restpos/e/d;->N:Z

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->d:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v2, 0x7f080169

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->L:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 112
    new-instance v0, Ljava/util/Scanner;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->L:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 113
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    iget v1, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v2, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 115
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->v:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 120
    :cond_3
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/d;->e:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/d;->e:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/d;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_10

    .line 125
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->d:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v2, 0x7f080322

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 138
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->H:Lcom/aadhk/restpos/bean/Customer;

    if-eqz v0, :cond_9

    .line 139
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 141
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->H:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 142
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 143
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->H:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->H:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getAddress1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 147
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 148
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->H:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getAddress1()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 151
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->H:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getAddress2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->H:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getAddress2()Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->H:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getAddress3()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->H:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getAddress3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_7
    iget v1, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v2, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 157
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/aadhk/restpos/e/d;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 160
    :cond_8
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 161
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v3, 0x7f08016b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->H:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Customer;->getTel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 163
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/d;->e:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/d;->e:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/d;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 168
    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->y:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->z()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 169
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 170
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v3, 0x7f0801cb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v3, 0x7f0801cd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 173
    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->y:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->A()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 174
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 175
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v3, 0x7f08014e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 178
    :cond_b
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->y:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->B()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 179
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 180
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v3, 0x7f0801cc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 183
    :cond_c
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->y:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->D()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 184
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 185
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v3, 0x7f080151

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getOrderTime()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/e/d;->B:Ljava/lang/String;

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->C:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/aadhk/restpos/util/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 188
    :cond_d
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->D:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->y:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->C()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 189
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 190
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v3, 0x7f080150

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->D:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 193
    :cond_e
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getReceiptNote()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 194
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 195
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v3, 0x7f08014f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getReceiptNote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 199
    :cond_f
    return-void

    .line 128
    :cond_10
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 129
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->d:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 131
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v2, 0x7f0800d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 132
    :cond_11
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 133
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->d:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 135
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v2, 0x7f0800d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method protected final b()V
    .locals 13

    .prologue
    .line 202
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 203
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/d;->e:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/d;->e:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/d;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 206
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/aadhk/restpos/bean/OrderItem;

    .line 213
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/aadhk/restpos/e/d;->Q:Z

    if-eqz v0, :cond_0

    .line 214
    :cond_1
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v2, 0x7f0802d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    const-string v0, "-"

    move-object v9, v0

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 236
    new-instance v11, Ljava/text/Bidi;

    const/4 v0, -0x2

    invoke-direct {v11, v1, v0}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 238
    invoke-virtual {v11}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v0

    if-nez v0, :cond_4

    .line 240
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

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/aadhk/restpos/e/d;->r:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 247
    :goto_1
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 248
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 249
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 250
    iget v1, p0, Lcom/aadhk/restpos/e/d;->s:I

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 255
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->u:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/aadhk/restpos/e/d;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 257
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountAmt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/aadhk/restpos/e/d;->A:I

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->z:Ljava/lang/String;

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

    .line 261
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 262
    invoke-virtual {v11}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v0

    if-nez v0, :cond_5

    .line 263
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/aadhk/restpos/e/d;->r:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 268
    :goto_2
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    add-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 269
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 270
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 271
    iget v1, p0, Lcom/aadhk/restpos/e/d;->s:I

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 275
    :cond_2
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 278
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 279
    const-string v0, "+"

    move-object v2, v0

    .line 285
    :goto_4
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    .line 286
    const-string v0, "-"

    move-object v9, v0

    .line 291
    :goto_5
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 292
    invoke-virtual {v11}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v0

    if-nez v0, :cond_8

    .line 293
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

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/aadhk/restpos/e/d;->r:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 298
    :goto_6
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    add-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 299
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 300
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 301
    iget v1, p0, Lcom/aadhk/restpos/e/d;->s:I

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 303
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->u:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/aadhk/restpos/e/d;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 218
    :cond_3
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v1

    .line 219
    iget v0, p0, Lcom/aadhk/restpos/e/d;->A:I

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v2

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->z:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_0

    .line 243
    :cond_4
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

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/aadhk/restpos/e/d;->r:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto/16 :goto_1

    .line 265
    :cond_5
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/aadhk/restpos/e/d;->r:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto/16 :goto_2

    .line 281
    :cond_6
    const-string v0, "-"

    move-object v2, v0

    goto/16 :goto_4

    .line 288
    :cond_7
    iget v0, p0, Lcom/aadhk/restpos/e/d;->A:I

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    iget-object v5, p0, Lcom/aadhk/restpos/e/d;->z:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_5

    .line 295
    :cond_8
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

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/aadhk/restpos/e/d;->r:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto/16 :goto_6

    .line 312
    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 313
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 314
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->d:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 315
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v2, 0x7f080224

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 316
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 324
    :cond_a
    :goto_7
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 325
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/d;->e:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/d;->e:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/d;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 327
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 328
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_b

    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_b

    iget-boolean v0, p0, Lcom/aadhk/restpos/e/d;->M:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_b

    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    .line 329
    :cond_b
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 330
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v2, 0x7f0801c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 331
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 334
    :cond_c
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_d

    .line 335
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 336
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v2, 0x7f0801c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 337
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 339
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 340
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 341
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getDiscountReason()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    add-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 345
    :cond_d
    iget-boolean v0, p0, Lcom/aadhk/restpos/e/d;->M:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_e

    .line 346
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 347
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 348
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 351
    :cond_e
    iget-boolean v0, p0, Lcom/aadhk/restpos/e/d;->M:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_f

    .line 352
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 353
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax2Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 354
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 357
    :cond_f
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_10

    .line 358
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 359
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v2, 0x7f08016a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 360
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 363
    :cond_10
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 364
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 365
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->d:I

    add-int/lit8 v1, v1, 0xc

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 366
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->m:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 367
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v2, 0x7f0801ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 368
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getAmount()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 370
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 371
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->m:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->p:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 372
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderPayment;

    .line 373
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getPaid()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_12

    .line 374
    iget v2, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 375
    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getPaymentMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v4, v4

    iget v5, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 376
    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v3, p0, Lcom/aadhk/restpos/e/d;->A:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getPaid()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/e/d;->z:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/aadhk/restpos/e/d;->u:I

    int-to-float v4, v4

    iget v5, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/aadhk/restpos/e/d;->m:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 379
    :cond_12
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getChangeAmt()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_11

    .line 380
    iget v2, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 381
    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v4, 0x7f080379

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v4, v4

    iget v5, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 382
    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v3, p0, Lcom/aadhk/restpos/e/d;->A:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getChangeAmt()D

    move-result-wide v4

    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->z:Ljava/lang/String;

    invoke-static {v3, v4, v5, v0}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/aadhk/restpos/e/d;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/d;->m:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 317
    :cond_13
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 318
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 319
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->d:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 320
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v2, 0x7f080223

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 321
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    goto/16 :goto_7

    .line 386
    :cond_14
    iget-boolean v0, p0, Lcom/aadhk/restpos/e/d;->M:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_15

    .line 387
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 388
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 389
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v1, 0x7f080319

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getTax1Name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 391
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 394
    :cond_15
    iget-boolean v0, p0, Lcom/aadhk/restpos/e/d;->M:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_16

    .line 395
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 396
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v1, 0x7f080319

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getTax2Name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/aadhk/restpos/e/d;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 398
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 402
    :cond_16
    return-void
.end method

.method protected final c()V
    .locals 6

    .prologue
    .line 405
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 406
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->K:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 408
    new-instance v0, Ljava/util/Scanner;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->K:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 409
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    iget v1, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v2, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 411
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->v:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 416
    :cond_1
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 417
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->y:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/d;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 419
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 420
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

    const v2, 0x7f080167

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 421
    iget v0, p0, Lcom/aadhk/restpos/e/d;->A:I

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getAmount()D

    move-result-wide v1

    const/16 v3, 0xa

    iget v4, p0, Lcom/aadhk/restpos/e/d;->A:I

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/m;->a(DII)D

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/e/d;->z:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    iget v1, p0, Lcom/aadhk/restpos/e/d;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getAmount()D

    move-result-wide v2

    const/16 v4, 0xf

    iget v5, p0, Lcom/aadhk/restpos/e/d;->A:I

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/util/m;->a(DII)D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 424
    iget v2, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 425
    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "10%="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  15%="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/e/d;->v:I

    int-to-float v1, v1

    iget v3, p0, Lcom/aadhk/restpos/e/d;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 427
    :cond_2
    iget v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/d;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/d;->s:I

    .line 430
    return-void
.end method

.method protected final d()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v7, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const-wide/16 v11, 0x0

    .line 433
    iget v0, p0, Lcom/aadhk/restpos/e/d;->e:I

    mul-int/lit8 v0, v0, 0x0

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 435
    iget v1, p0, Lcom/aadhk/restpos/e/d;->g:I

    iget v2, p0, Lcom/aadhk/restpos/e/d;->h:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 436
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 438
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->O:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 439
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 440
    int-to-float v0, v0

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->O:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/d;->P:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 441
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->L:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 445
    new-instance v1, Ljava/util/Scanner;

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->L:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 446
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 448
    iget v2, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v2

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 453
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->K:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 454
    new-instance v1, Ljava/util/Scanner;

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->K:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 455
    :goto_1
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 456
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 457
    iget v2, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v2

    goto :goto_1

    .line 459
    :cond_3
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 462
    :cond_4
    iget-boolean v1, p0, Lcom/aadhk/restpos/e/d;->N:Z

    if-eqz v1, :cond_5

    .line 463
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 466
    :cond_5
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->y:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->z()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 467
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 469
    :cond_6
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->y:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->A()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 470
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 473
    :cond_7
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->y:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->B()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 474
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 477
    :cond_8
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->y:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->D()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 478
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 481
    :cond_9
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->D:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->y:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->C()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 482
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 485
    :cond_a
    iget-boolean v1, p0, Lcom/aadhk/restpos/e/d;->M:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-lez v1, :cond_b

    .line 486
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 489
    :cond_b
    iget-boolean v1, p0, Lcom/aadhk/restpos/e/d;->M:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-lez v1, :cond_c

    .line 490
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 493
    :cond_c
    iget-boolean v1, p0, Lcom/aadhk/restpos/e/d;->M:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-lez v1, :cond_d

    .line 494
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 495
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 498
    :cond_d
    iget-boolean v1, p0, Lcom/aadhk/restpos/e/d;->M:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-lez v1, :cond_e

    .line 499
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 502
    :cond_e
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-lez v1, :cond_f

    .line 503
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 506
    :cond_f
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-lez v1, :cond_10

    .line 507
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 508
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getDiscountReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 509
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 513
    :cond_10
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-gtz v1, :cond_11

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-gtz v1, :cond_11

    iget-boolean v1, p0, Lcom/aadhk/restpos/e/d;->M:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-gtz v1, :cond_11

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-lez v1, :cond_12

    .line 514
    :cond_11
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 517
    :cond_12
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->J:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderPayment;

    .line 518
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getPaid()D

    move-result-wide v3

    cmpl-double v3, v3, v11

    if-lez v3, :cond_13

    .line 519
    iget v3, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v1, v3

    .line 522
    :cond_13
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getChangeAmt()D

    move-result-wide v3

    cmpl-double v0, v3, v11

    if-lez v0, :cond_23

    .line 523
    iget v0, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    :goto_3
    move v1, v0

    goto :goto_2

    .line 527
    :cond_14
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->D:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->D:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 528
    iget v0, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v1, v0

    .line 531
    :cond_15
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->y:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->E()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 532
    iget v0, p0, Lcom/aadhk/restpos/e/d;->e:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 535
    :cond_16
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->G:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    if-lez v0, :cond_17

    .line 536
    iget v0, p0, Lcom/aadhk/restpos/e/d;->e:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 539
    :cond_17
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->H:Lcom/aadhk/restpos/bean/Customer;

    if-eqz v0, :cond_1b

    .line 540
    iget v0, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 541
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->H:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 542
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 545
    :cond_18
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->H:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 546
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 549
    :cond_19
    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->H:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 550
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 553
    :cond_1a
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v0, v1

    .line 554
    iget v1, p0, Lcom/aadhk/restpos/e/d;->e:I

    add-int/2addr v1, v0

    .line 557
    :cond_1b
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v9, v1

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/aadhk/restpos/bean/OrderItem;

    .line 559
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    if-ne v0, v13, :cond_1c

    iget-boolean v0, p0, Lcom/aadhk/restpos/e/d;->Q:Z

    if-eqz v0, :cond_22

    .line 561
    :cond_1c
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    if-ne v0, v13, :cond_1d

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->E:Landroid/content/Context;

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

    .line 566
    :goto_5
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

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/aadhk/restpos/e/d;->r:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 567
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v9, v0

    .line 569
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountAmt()D

    move-result-wide v0

    cmpl-double v0, v0, v11

    if-eqz v0, :cond_21

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    if-eq v0, v13, :cond_21

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\t-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/aadhk/restpos/e/d;->A:I

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/d;->z:Ljava/lang/String;

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

    .line 571
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/aadhk/restpos/e/d;->r:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 572
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, v9

    .line 575
    :goto_6
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v1

    .line 576
    if-eqz v1, :cond_1f

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 577
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v8, v0

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 578
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

    iget-object v2, p0, Lcom/aadhk/restpos/e/d;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/aadhk/restpos/e/d;->r:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 579
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, v8

    move v8, v0

    goto :goto_7

    .line 564
    :cond_1d
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_5

    :cond_1e
    move v0, v8

    :cond_1f
    :goto_8
    move v9, v0

    .line 582
    goto/16 :goto_4

    .line 585
    :cond_20
    iget v0, p0, Lcom/aadhk/restpos/e/d;->r:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/d;->b:Landroid/graphics/Bitmap;

    .line 586
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->b:Landroid/graphics/Bitmap;

    const/16 v1, 0x3c0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 587
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/d;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    .line 589
    iget-object v0, p0, Lcom/aadhk/restpos/e/d;->c:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 592
    return-void

    :cond_21
    move v0, v9

    goto :goto_6

    :cond_22
    move v0, v9

    goto :goto_8

    :cond_23
    move v0, v1

    goto/16 :goto_3
.end method

.method public final bridge synthetic e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/aadhk/restpos/e/c;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
