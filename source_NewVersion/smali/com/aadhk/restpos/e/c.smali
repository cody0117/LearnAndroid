.class public final Lcom/aadhk/restpos/e/c;
.super Lcom/aadhk/restpos/e/b;
.source "ProGuard"


# instance fields
.field protected D:Landroid/graphics/Bitmap;

.field protected E:F

.field protected F:Z

.field private G:Landroid/content/Context;

.field private H:Ljava/lang/String;

.field private I:Lcom/aadhk/restpos/bean/Order;

.field private J:Lcom/aadhk/restpos/bean/Customer;

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderPayment;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Z

.field private P:Z

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
    .line 61
    invoke-direct {p0}, Lcom/aadhk/restpos/e/b;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    .line 64
    iput-object p3, p0, Lcom/aadhk/restpos/e/c;->J:Lcom/aadhk/restpos/bean/Customer;

    .line 65
    iput-object p4, p0, Lcom/aadhk/restpos/e/c;->K:Ljava/util/List;

    .line 66
    iput-boolean p6, p0, Lcom/aadhk/restpos/e/c;->Q:Z

    .line 67
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getOrderPayments()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->L:Ljava/util/List;

    .line 69
    invoke-virtual {p0, p1, p5}, Lcom/aadhk/restpos/e/c;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 71
    invoke-virtual {p5}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getHeader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->N:Ljava/lang/String;

    .line 72
    invoke-virtual {p5}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getFooter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->M:Ljava/lang/String;

    .line 73
    invoke-virtual {p5}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnableTip()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/e/c;->P:Z

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->c()Lcom/aadhk/restpos/bean/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->H:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->C:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeTax()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/e/c;->O:Z

    .line 79
    invoke-virtual {p5}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getLogoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/aadhk/restpos/f/d;->b:Ljava/lang/String;

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

    .line 81
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->D:Landroid/graphics/Bitmap;

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->D:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 83
    iget v0, p0, Lcom/aadhk/restpos/e/c;->r:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->i:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/aadhk/restpos/e/c;->j:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->D:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->E:F

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->y:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/e/c;->F:Z

    .line 89
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
    .line 57
    new-instance v0, Lcom/aadhk/restpos/e/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/aadhk/restpos/e/c;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;Z)V

    .line 58
    invoke-super {v0}, Lcom/aadhk/restpos/e/b;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 14

    .prologue
    const v13, 0x7f090192

    const v12, 0x7f09011c

    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v6, -0x2

    .line 92
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->D:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 94
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 96
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    iget v1, p0, Lcom/aadhk/restpos/e/c;->E:F

    iget v2, p0, Lcom/aadhk/restpos/e/c;->E:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 98
    iget v1, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 99
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->D:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 102
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->D:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->E:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 103
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/aadhk/restpos/e/c;->Q:Z

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->d:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 108
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v2, 0x7f090137

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->N:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 114
    new-instance v0, Ljava/util/Scanner;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->N:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 115
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    iget v1, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v2, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 117
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->v:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 123
    :cond_3
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/c;->e:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/c;->e:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/c;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-nez v0, :cond_e

    .line 127
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->d:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v2, 0x7f0902c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 140
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->J:Lcom/aadhk/restpos/bean/Customer;

    if-eqz v0, :cond_9

    .line 141
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 143
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->J:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 144
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 145
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->J:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->J:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getAddress1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 149
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 150
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->J:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getAddress1()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 153
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->J:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getAddress2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->J:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getAddress2()Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->J:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getAddress3()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->J:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getAddress3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_7
    iget v1, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v2, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 159
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/aadhk/restpos/e/c;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 162
    :cond_8
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 163
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v3, 0x7f090139

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->J:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Customer;->getTel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 165
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/c;->e:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/c;->e:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/c;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 169
    :cond_9
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 170
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_10

    .line 171
    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 177
    :goto_2
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 178
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_11

    .line 179
    :cond_b
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 185
    :goto_3
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v3, 0x7f09011f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getStartTime()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/e/c;->B:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aadhk/restpos/f/i;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 188
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->C:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 189
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 190
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v3, 0x7f09011e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->C:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 193
    :cond_c
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getReceiptNote()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 194
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 195
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v3, 0x7f09011d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getReceiptNote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 199
    :cond_d
    return-void

    .line 130
    :cond_e
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_f

    .line 131
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->d:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v2, 0x7f0900ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 134
    :cond_f
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    .line 135
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->d:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v2, 0x7f0900cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 173
    :cond_10
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v3, 0x7f090191

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 181
    :cond_11
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 182
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v3, 0x7f090193

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method protected final b()V
    .locals 12

    .prologue
    .line 202
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 203
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/c;->e:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/c;->e:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/c;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 206
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/aadhk/restpos/bean/OrderItem;

    .line 213
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/aadhk/restpos/e/c;->F:Z

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

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v2, 0x7f090273

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
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 223
    new-instance v0, Landroid/text/StaticLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

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

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->o:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 224
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 225
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 226
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 227
    iget v1, p0, Lcom/aadhk/restpos/e/c;->s:I

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 231
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 233
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getDisAmt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\t-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/aadhk/restpos/e/c;->A:I

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getDisAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getDisName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 238
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->o:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 239
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    add-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 240
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 241
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 242
    iget v1, p0, Lcom/aadhk/restpos/e/c;->s:I

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 246
    :cond_2
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 249
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 250
    const-string v0, " +"

    move-object v2, v0

    .line 256
    :goto_2
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 257
    const-string v0, "-"

    move-object v9, v0

    .line 262
    :goto_3
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 263
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

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->o:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 264
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    add-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 265
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 266
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 267
    iget v1, p0, Lcom/aadhk/restpos/e/c;->s:I

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 269
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 218
    :cond_3
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v1

    .line 219
    iget v0, p0, Lcom/aadhk/restpos/e/c;->A:I

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->z:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_0

    .line 252
    :cond_4
    const-string v0, " -"

    move-object v2, v0

    goto/16 :goto_2

    .line 259
    :cond_5
    iget v0, p0, Lcom/aadhk/restpos/e/c;->A:I

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v3

    iget-object v5, p0, Lcom/aadhk/restpos/e/c;->z:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_3

    .line 278
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 279
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 280
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->d:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 281
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v2, 0x7f0901e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 282
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 290
    :cond_7
    :goto_4
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 291
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/c;->e:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v5, p0, Lcom/aadhk/restpos/e/c;->e:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/c;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 293
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 294
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_8

    iget-boolean v0, p0, Lcom/aadhk/restpos/e/c;->O:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_9

    .line 295
    :cond_8
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 296
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v2, 0x7f09018e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 297
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 300
    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_a

    .line 301
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 302
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v2, 0x7f09018f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 303
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 305
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 306
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 307
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getDiscountReason()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    add-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 311
    :cond_a
    iget-boolean v0, p0, Lcom/aadhk/restpos/e/c;->O:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_b

    .line 312
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 313
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 314
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 317
    :cond_b
    iget-boolean v0, p0, Lcom/aadhk/restpos/e/c;->O:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    .line 318
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 319
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax2Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 320
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 323
    :cond_c
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_d

    .line 324
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 325
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v2, 0x7f090138

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 326
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 329
    :cond_d
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 330
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 331
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->d:I

    add-int/lit8 v1, v1, 0xc

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 332
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 333
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v2, 0x7f090190

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 334
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getAmount()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 336
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 337
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->p:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 338
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderPayment;

    .line 339
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getPaid()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_f

    .line 340
    iget v2, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 341
    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

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

    iget v4, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v4, v4

    iget v5, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 342
    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v3, p0, Lcom/aadhk/restpos/e/c;->A:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getPaid()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/e/c;->z:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v4, v4

    iget v5, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 345
    :cond_f
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getChangeAmt()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_e

    .line 346
    iget v2, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 347
    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v4, 0x7f090319

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v4, v4

    iget v5, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 348
    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v3, p0, Lcom/aadhk/restpos/e/c;->A:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getChangeAmt()D

    move-result-wide v4

    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->z:Ljava/lang/String;

    invoke-static {v3, v4, v5, v0}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 283
    :cond_10
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 284
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 285
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->d:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 286
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v2, 0x7f0901e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 287
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    goto/16 :goto_4

    .line 352
    :cond_11
    iget-boolean v0, p0, Lcom/aadhk/restpos/e/c;->O:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_12

    .line 353
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 354
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 355
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v1, 0x7f0902bb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getTax1Name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 357
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 360
    :cond_12
    iget-boolean v0, p0, Lcom/aadhk/restpos/e/c;->O:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_13

    .line 361
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 362
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v1, 0x7f0902bb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getTax2Name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/aadhk/restpos/e/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 364
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 368
    :cond_13
    return-void
.end method

.method protected final c()V
    .locals 6

    .prologue
    .line 371
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 372
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->M:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 374
    new-instance v0, Ljava/util/Scanner;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->M:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 375
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget v1, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v2, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 377
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->v:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 382
    :cond_1
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 383
    iget-boolean v0, p0, Lcom/aadhk/restpos/e/c;->P:Z

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aadhk/restpos/e/c;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 385
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 386
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v2, 0x7f090135

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 387
    iget v0, p0, Lcom/aadhk/restpos/e/c;->A:I

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getAmount()D

    move-result-wide v1

    const/16 v3, 0xa

    iget v4, p0, Lcom/aadhk/restpos/e/c;->A:I

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/h;->a(DII)D

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/e/c;->z:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    iget v1, p0, Lcom/aadhk/restpos/e/c;->A:I

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getAmount()D

    move-result-wide v2

    const/16 v4, 0xf

    iget v5, p0, Lcom/aadhk/restpos/e/c;->A:I

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/f/h;->a(DII)D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    iget v2, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v3, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 391
    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

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

    iget v1, p0, Lcom/aadhk/restpos/e/c;->v:I

    int-to-float v1, v1

    iget v3, p0, Lcom/aadhk/restpos/e/c;->s:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 393
    :cond_2
    iget v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    iget v1, p0, Lcom/aadhk/restpos/e/c;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/e/c;->s:I

    .line 396
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

    .line 399
    iget v0, p0, Lcom/aadhk/restpos/e/c;->e:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 401
    iget v1, p0, Lcom/aadhk/restpos/e/c;->g:I

    iget v2, p0, Lcom/aadhk/restpos/e/c;->h:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 402
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 404
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->D:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 405
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 406
    int-to-float v0, v0

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->D:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/aadhk/restpos/e/c;->E:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 407
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->N:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 411
    new-instance v1, Ljava/util/Scanner;

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->N:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 412
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 414
    iget v2, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v2

    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 419
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->M:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 420
    new-instance v1, Ljava/util/Scanner;

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->M:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 421
    :goto_1
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 422
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 423
    iget v2, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v2

    goto :goto_1

    .line 425
    :cond_3
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 428
    :cond_4
    iget-boolean v1, p0, Lcom/aadhk/restpos/e/c;->Q:Z

    if-eqz v1, :cond_5

    .line 429
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 432
    :cond_5
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v1

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    .line 433
    :cond_6
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 436
    :cond_7
    iget-boolean v1, p0, Lcom/aadhk/restpos/e/c;->O:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-lez v1, :cond_8

    .line 437
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 440
    :cond_8
    iget-boolean v1, p0, Lcom/aadhk/restpos/e/c;->O:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-lez v1, :cond_9

    .line 441
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 444
    :cond_9
    iget-boolean v1, p0, Lcom/aadhk/restpos/e/c;->O:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-lez v1, :cond_a

    .line 445
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 446
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 449
    :cond_a
    iget-boolean v1, p0, Lcom/aadhk/restpos/e/c;->O:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-lez v1, :cond_b

    .line 450
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 453
    :cond_b
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-lez v1, :cond_c

    .line 454
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 457
    :cond_c
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-lez v1, :cond_d

    .line 458
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 459
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getDiscountReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 460
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 464
    :cond_d
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-gtz v1, :cond_e

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-gtz v1, :cond_e

    iget-boolean v1, p0, Lcom/aadhk/restpos/e/c;->O:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-gtz v1, :cond_e

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v11

    if-lez v1, :cond_f

    .line 465
    :cond_e
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 468
    :cond_f
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->L:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderPayment;

    .line 469
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getPaid()D

    move-result-wide v3

    cmpl-double v3, v3, v11

    if-lez v3, :cond_10

    .line 470
    iget v3, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v1, v3

    .line 473
    :cond_10
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getChangeAmt()D

    move-result-wide v3

    cmpl-double v0, v3, v11

    if-lez v0, :cond_20

    .line 474
    iget v0, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    :goto_3
    move v1, v0

    goto :goto_2

    .line 478
    :cond_11
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->C:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->C:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 479
    iget v0, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v1, v0

    .line 482
    :cond_12
    iget-boolean v0, p0, Lcom/aadhk/restpos/e/c;->P:Z

    if-eqz v0, :cond_13

    .line 483
    iget v0, p0, Lcom/aadhk/restpos/e/c;->e:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 486
    :cond_13
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->I:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    if-lez v0, :cond_14

    .line 487
    iget v0, p0, Lcom/aadhk/restpos/e/c;->e:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 490
    :cond_14
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->J:Lcom/aadhk/restpos/bean/Customer;

    if-eqz v0, :cond_18

    .line 491
    iget v0, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 492
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->J:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 493
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 496
    :cond_15
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->J:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 497
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 500
    :cond_16
    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->J:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 501
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 504
    :cond_17
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v0, v1

    .line 505
    iget v1, p0, Lcom/aadhk/restpos/e/c;->e:I

    add-int/2addr v1, v0

    .line 508
    :cond_18
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v9, v1

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/aadhk/restpos/bean/OrderItem;

    .line 510
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    if-ne v0, v13, :cond_19

    iget-boolean v0, p0, Lcom/aadhk/restpos/e/c;->F:Z

    if-eqz v0, :cond_1f

    .line 512
    :cond_19
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    if-ne v0, v13, :cond_1a

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->G:Landroid/content/Context;

    const v2, 0x7f090273

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

    .line 517
    :goto_5
    new-instance v0, Landroid/text/StaticLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

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

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/aadhk/restpos/e/c;->r:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 518
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v9, v0

    .line 520
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getDisAmt()D

    move-result-wide v0

    cmpl-double v0, v0, v11

    if-eqz v0, :cond_1e

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    if-eq v0, v13, :cond_1e

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\t-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/aadhk/restpos/e/c;->A:I

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getDisAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/e/c;->z:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getDisName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/aadhk/restpos/e/c;->r:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 523
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, v9

    .line 526
    :goto_6
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v1

    .line 527
    if-eqz v1, :cond_1c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 528
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v8, v0

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 529
    new-instance v0, Landroid/text/StaticLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " +"

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

    iget-object v2, p0, Lcom/aadhk/restpos/e/c;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/aadhk/restpos/e/c;->r:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 530
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, v8

    move v8, v0

    goto :goto_7

    .line 515
    :cond_1a
    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_5

    :cond_1b
    move v0, v8

    :cond_1c
    :goto_8
    move v9, v0

    .line 533
    goto/16 :goto_4

    .line 536
    :cond_1d
    iget v0, p0, Lcom/aadhk/restpos/e/c;->r:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->b:Landroid/graphics/Bitmap;

    .line 537
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->b:Landroid/graphics/Bitmap;

    const/16 v1, 0x3c0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 538
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aadhk/restpos/e/c;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    .line 540
    iget-object v0, p0, Lcom/aadhk/restpos/e/c;->c:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 543
    return-void

    :cond_1e
    move v0, v9

    goto :goto_6

    :cond_1f
    move v0, v9

    goto :goto_8

    :cond_20
    move v0, v1

    goto/16 :goto_3
.end method

.method public final bridge synthetic e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/aadhk/restpos/e/b;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
