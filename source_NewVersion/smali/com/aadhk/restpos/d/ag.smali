.class public final Lcom/aadhk/restpos/d/ag;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"


# static fields
.field private static i:Lcom/aadhk/restpos/b/i;


# instance fields
.field private a:Lcom/aadhk/restpos/d/ao;

.field private b:Lcom/aadhk/restpos/MgrItemActivity;

.field private c:Lcom/viewpagerindicator/TabPageIndicator;

.field private d:Landroid/support/v4/view/ViewPager;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Category;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Landroid/view/View;

.field private h:Lcom/aadhk/restpos/b/n;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/aadhk/restpos/bean/Company;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 491
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ag;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/aadhk/restpos/d/ag;->f:J

    return-wide p1
.end method

.method static synthetic a()Lcom/aadhk/restpos/b/i;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/aadhk/restpos/d/ag;->i:Lcom/aadhk/restpos/b/i;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ag;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ag;Ljava/lang/String;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/16 v12, 0x9

    const/4 v11, 0x7

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lau/com/bytecode/opencsv/CSVReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    const v2, 0x7f080039

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/ag;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08003a

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/ag;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    array-length v5, v4

    if-eq v5, v11, :cond_0

    array-length v5, v4

    if-ne v5, v12, :cond_4

    :cond_0
    new-instance v5, Lcom/aadhk/restpos/bean/Item;

    invoke-direct {v5}, Lcom/aadhk/restpos/bean/Item;-><init>()V

    iget-wide v6, p0, Lcom/aadhk/restpos/d/ag;->f:J

    invoke-virtual {v5, v6, v7}, Lcom/aadhk/restpos/bean/Item;->setCategoryId(J)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/aadhk/restpos/bean/Item;->setName(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/aadhk/restpos/bean/Item;->setPrice(D)V

    const/4 v6, 0x2

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/aadhk/restpos/bean/Item;->setPrinterId(I)V

    const/4 v6, 0x3

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/aadhk/restpos/bean/Item;->setTax1Id(I)V

    const/4 v6, 0x4

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/aadhk/restpos/bean/Item;->setQty(I)V

    const/4 v6, 0x5

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/aadhk/restpos/bean/Item;->setWarn(Z)V

    const/4 v6, 0x6

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/aadhk/restpos/bean/Item;->setWarnQty(I)V

    array-length v6, v4

    if-ne v6, v12, :cond_1

    const/4 v6, 0x7

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/aadhk/restpos/bean/Item;->setBackground(Ljava/lang/String;)V

    const/16 v6, 0x8

    aget-object v4, v4, v6

    invoke-virtual {v5, v4}, Lcom/aadhk/restpos/bean/Item;->setFontColor(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/Item;->getBackground()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v5, v2}, Lcom/aadhk/restpos/bean/Item;->setBackground(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/Item;->getFontColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v5, v3}, Lcom/aadhk/restpos/bean/Item;->setFontColor(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/aadhk/restpos/c/ax;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09021a

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/ag;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "item.csv"

    aput-object v4, v3, v8

    sget-object v4, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-void

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->close()V

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "import formmat error"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/aadhk/restpos/c/ax;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09021b

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/ag;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "item.csv"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_5
    :try_start_2
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->close()V

    sget-object v1, Lcom/aadhk/restpos/d/ag;->i:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/b/i;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->a:Lcom/aadhk/restpos/d/ao;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ao;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->c()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/aadhk/restpos/c/ax;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09021c

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ax;->a(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/ag;)J
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ag;->f:J

    return-wide v0
.end method

.method private b()V
    .locals 12

    .prologue
    .line 350
    sget-object v0, Lcom/aadhk/restpos/d/ag;->i:Lcom/aadhk/restpos/b/i;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/ag;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/i;->c(J)Ljava/util/List;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 353
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    const v1, 0x7f090225

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/ag;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 356
    const v2, 0x7f090226

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/ag;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 357
    const v3, 0x7f090227

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/ag;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 360
    const v4, 0x7f090228

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/ag;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 361
    const v5, 0x7f090237

    invoke-virtual {p0, v5}, Lcom/aadhk/restpos/d/ag;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 362
    const v6, 0x7f090238

    invoke-virtual {p0, v6}, Lcom/aadhk/restpos/d/ag;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 363
    const v7, 0x7f090239

    invoke-virtual {p0, v7}, Lcom/aadhk/restpos/d/ag;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 364
    const v8, 0x7f09023b

    invoke-virtual {p0, v8}, Lcom/aadhk/restpos/d/ag;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 365
    const v9, 0x7f09023c

    invoke-virtual {p0, v9}, Lcom/aadhk/restpos/d/ag;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 366
    const/16 v10, 0x9

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v1, 0x1

    aput-object v2, v10, v1

    const/4 v1, 0x2

    aput-object v3, v10, v1

    const/4 v1, 0x3

    aput-object v4, v10, v1

    const/4 v1, 0x4

    aput-object v5, v10, v1

    const/4 v1, 0x5

    aput-object v6, v10, v1

    const/4 v1, 0x6

    aput-object v7, v10, v1

    const/4 v1, 0x7

    aput-object v8, v10, v1

    const/16 v1, 0x8

    aput-object v9, v10, v1

    .line 367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 368
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    .line 369
    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getPrice()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getPrinterId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getTax1Id()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getQty()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->isWarn()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getWarnQty()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getBackground()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getFontColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 372
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/item_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/aadhk/restpos/f/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".csv"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->m:Ljava/lang/String;

    .line 373
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->m:Ljava/lang/String;

    invoke-static {v0, v10, v1}, Lcom/aadhk/product/library/c/d;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    .line 376
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    const v3, 0x7f090221

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/MgrItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/ag;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 398
    :goto_1
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    iget-object v1, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    const v4, 0x7f090223

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/MgrItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/ag;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 381
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 382
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 383
    :catch_1
    move-exception v0

    .line 384
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 385
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 386
    :catch_2
    move-exception v0

    .line 387
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 388
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 391
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 392
    const v1, 0x7f090224

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/ag;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->setTitle(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    goto :goto_1

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f090054

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/d/ao;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->a:Lcom/aadhk/restpos/d/ao;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/MgrItemActivity;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/ag;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    iput-object p1, p0, Lcom/aadhk/restpos/d/ag;->l:Ljava/util/List;

    .line 127
    new-instance v0, Lcom/aadhk/restpos/c/g;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    .line 128
    const v1, 0x7f09029d

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->setTitle(I)V

    .line 129
    new-instance v1, Lcom/aadhk/restpos/d/ah;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ah;-><init>(Lcom/aadhk/restpos/d/ag;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    .line 151
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V

    .line 152
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 415
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 416
    new-instance v0, Lcom/aadhk/restpos/b/i;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcom/aadhk/restpos/d/ag;->i:Lcom/aadhk/restpos/b/i;

    .line 417
    new-instance v0, Lcom/aadhk/restpos/b/b;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 418
    invoke-virtual {v0}, Lcom/aadhk/restpos/b/b;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->e:Ljava/util/List;

    .line 420
    new-instance v0, Lcom/aadhk/restpos/b/i;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcom/aadhk/restpos/d/ag;->i:Lcom/aadhk/restpos/b/i;

    .line 421
    new-instance v0, Lcom/aadhk/restpos/b/n;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/n;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->h:Lcom/aadhk/restpos/b/n;

    .line 422
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->k:Lcom/aadhk/restpos/bean/Company;

    .line 424
    new-instance v0, Lcom/aadhk/restpos/b/r;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/r;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 425
    invoke-virtual {v0}, Lcom/aadhk/restpos/b/r;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->j:Ljava/util/Map;

    .line 428
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 430
    const v1, 0x7f090236

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/ag;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 431
    new-instance v1, Lcom/aadhk/restpos/d/am;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/am;-><init>(Lcom/aadhk/restpos/d/ag;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Lcom/aadhk/restpos/c/ay;)V

    .line 439
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 440
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 446
    :goto_0
    new-instance v0, Lcom/aadhk/restpos/d/ao;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ag;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/d/ao;-><init>(Lcom/aadhk/restpos/d/ag;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->a:Lcom/aadhk/restpos/d/ao;

    .line 447
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->g:Landroid/view/View;

    const v1, 0x7f0b0141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->d:Landroid/support/v4/view/ViewPager;

    .line 448
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->d:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ag;->a:Lcom/aadhk/restpos/d/ao;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 449
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->g:Landroid/view/View;

    const v1, 0x7f0b0140

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->c:Lcom/viewpagerindicator/TabPageIndicator;

    .line 450
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->c:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ag;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->a(Landroid/support/v4/view/ViewPager;)V

    .line 451
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->c:Lcom/viewpagerindicator/TabPageIndicator;

    new-instance v1, Lcom/aadhk/restpos/d/an;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/an;-><init>(Lcom/aadhk/restpos/d/ag;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 460
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->d:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/MgrItemActivity;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 461
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/ag;->f:J

    .line 443
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/ag;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/MgrItemActivity;->a(J)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 402
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/MgrItemActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    .line 403
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 404
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f090264

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/MgrItemActivity;->setTitle(I)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/ag;->setHasOptionsMenu(Z)V

    .line 86
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    const v0, 0x7f0f0009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 91
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 92
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    const v0, 0x7f0300a8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->g:Landroid/view/View;

    .line 409
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->g:Landroid/view/View;

    return-object v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0b027f

    if-ne v0, v2, :cond_0

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/MgrItemActivity;->c(Lcom/aadhk/restpos/bean/Item;)V

    move v0, v1

    .line 118
    :goto_0
    return v0

    .line 99
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0b0291

    if-ne v0, v2, :cond_2

    .line 100
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "item[\\w\\W]*.csv"

    invoke-static {v0, v2}, Lcom/aadhk/product/library/c/f;->a(Ljava/io/File;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    new-instance v2, Lcom/aadhk/product/library/b/k;

    iget-object v3, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, v3, v0, v4}, Lcom/aadhk/product/library/b/k;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    const v3, 0x7f090234

    invoke-virtual {v2, v3}, Lcom/aadhk/product/library/b/k;->setTitle(I)V

    new-instance v3, Lcom/aadhk/restpos/d/ai;

    invoke-direct {v3, p0, v0}, Lcom/aadhk/restpos/d/ai;-><init>(Lcom/aadhk/restpos/d/ag;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v2}, Lcom/aadhk/product/library/b/k;->show()V

    :goto_1
    move v0, v1

    .line 101
    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    const v2, 0x7f090235

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 102
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0b0292

    if-ne v0, v2, :cond_3

    .line 103
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ag;->b()V

    move v0, v1

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0b0290

    if-ne v0, v2, :cond_5

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " b.categoryId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ag;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/aadhk/restpos/d/ag;->h:Lcom/aadhk/restpos/b/n;

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/b/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v2}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0900be

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/ax;->a(I)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    :goto_2
    move v0, v1

    .line 107
    goto/16 :goto_0

    .line 106
    :cond_4
    new-instance v0, Lcom/aadhk/restpos/c/g;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v2}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0900b8

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/g;->setTitle(I)V

    new-instance v2, Lcom/aadhk/restpos/d/al;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/al;-><init>(Lcom/aadhk/restpos/d/ag;)V

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V

    goto :goto_2

    .line 108
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0b0293

    if-ne v0, v2, :cond_6

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ag;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/aadhk/restpos/d/ag;->j:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const v3, 0x7f090230

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/ag;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v3, Lcom/aadhk/product/library/b/k;

    iget-object v4, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v3, v4, v0, v5}, Lcom/aadhk/product/library/b/k;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    const v0, 0x7f09022d

    invoke-virtual {v3, v0}, Lcom/aadhk/product/library/b/k;->setTitle(I)V

    new-instance v0, Lcom/aadhk/restpos/d/ak;

    invoke-direct {v0, p0, v2}, Lcom/aadhk/restpos/d/ak;-><init>(Lcom/aadhk/restpos/d/ag;Ljava/util/List;)V

    invoke-virtual {v3, v0}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v3}, Lcom/aadhk/product/library/b/k;->show()V

    move v0, v1

    .line 110
    goto/16 :goto_0

    .line 111
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0b0294

    if-ne v0, v2, :cond_9

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/ag;->k:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/aadhk/restpos/d/ag;->k:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, p0, Lcom/aadhk/restpos/d/ag;->k:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/aadhk/restpos/d/ag;->k:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    new-instance v3, Lcom/aadhk/product/library/b/h;

    iget-object v4, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v3, v4, v0, v2}, Lcom/aadhk/product/library/b/h;-><init>(Landroid/content/Context;[Ljava/lang/String;[Z)V

    const v0, 0x7f09022f

    invoke-virtual {v3, v0}, Lcom/aadhk/product/library/b/h;->setTitle(I)V

    new-instance v0, Lcom/aadhk/restpos/d/aj;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/aj;-><init>(Lcom/aadhk/restpos/d/ag;)V

    invoke-virtual {v3, v0}, Lcom/aadhk/product/library/b/h;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v3}, Lcom/aadhk/product/library/b/h;->show()V

    move v0, v1

    .line 113
    goto/16 :goto_0

    .line 114
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0b0295

    if-ne v0, v2, :cond_a

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->b:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->e()V

    move v0, v1

    .line 116
    goto/16 :goto_0

    .line 118
    :cond_a
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0

    .line 112
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method
