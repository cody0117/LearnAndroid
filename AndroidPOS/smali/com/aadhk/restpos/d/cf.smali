.class public final Lcom/aadhk/restpos/d/cf;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"


# static fields
.field private static j:Lcom/aadhk/restpos/g/k;


# instance fields
.field public a:Lcom/aadhk/restpos/MgrItemActivity;

.field private b:Lcom/aadhk/restpos/d/cq;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Category;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Landroid/view/View;

.field private f:Lcom/aadhk/restpos/bean/Company;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/KitchenNote;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private k:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 769
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/cf;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/aadhk/restpos/d/cf;->d:J

    return-wide p1
.end method

.method static synthetic a()Lcom/aadhk/restpos/g/k;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/aadhk/restpos/d/cf;->j:Lcom/aadhk/restpos/g/k;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/cf;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/cf;Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v3, Lau/com/bytecode/opencsv/CSVReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v3}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    array-length v0, v6

    const/16 v7, 0xb

    if-ne v0, v7, :cond_3

    new-instance v7, Lcom/aadhk/restpos/bean/Item;

    invoke-direct {v7}, Lcom/aadhk/restpos/bean/Item;-><init>()V

    iget-wide v8, p0, Lcom/aadhk/restpos/d/cf;->d:J

    invoke-virtual {v7, v8, v9}, Lcom/aadhk/restpos/bean/Item;->setCategoryId(J)V

    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/Item;->setName(Ljava/lang/String;)V

    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/aadhk/restpos/bean/Item;->setPrice(D)V

    const/4 v0, 0x2

    aget-object v0, v6, v0

    if-eqz v0, :cond_2

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/Item;->setAskPrice(Z)V

    const/4 v0, 0x3

    aget-object v0, v6, v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/aadhk/restpos/bean/Item;->setCost(D)V

    const/4 v0, 0x4

    aget-object v0, v6, v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/Item;->setModifierGroupIds(Ljava/lang/String;)V

    const/4 v0, 0x5

    aget-object v0, v6, v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/Item;->setKitchenNoteGroupIds(Ljava/lang/String;)V

    const/4 v0, 0x6

    aget-object v0, v6, v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/Item;->setPrinterId(I)V

    const/4 v0, 0x7

    aget-object v0, v6, v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/Item;->setTax1Id(I)V

    const/16 v0, 0x8

    aget-object v0, v6, v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/Item;->setBackground(Ljava/lang/String;)V

    const/16 v0, 0x9

    aget-object v0, v6, v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/Item;->setFontColor(Ljava/lang/String;)V

    const/16 v0, 0xa

    aget-object v0, v6, v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/Item;->setSequence(I)V

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/Item;->getBackground()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7, v4}, Lcom/aadhk/restpos/bean/Item;->setBackground(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/Item;->getFontColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7, v5}, Lcom/aadhk/restpos/bean/Item;->setFontColor(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/aadhk/restpos/c/bo;

    iget-object v3, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v2, v3}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080269

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    const-string v5, "item.csv"

    aput-object v5, v4, v1

    sget-object v1, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    aput-object v1, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aadhk/restpos/c/bo;->show()V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_2
    return-void

    :cond_2
    move v0, v1

    goto/16 :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lau/com/bytecode/opencsv/CSVReader;->close()V

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v2, "import formmat error"

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v0

    new-instance v2, Lcom/aadhk/restpos/c/bo;

    iget-object v3, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v2, v3}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08026a

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    const-string v5, "item.csv"

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aadhk/restpos/c/bo;->show()V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_4
    :try_start_2
    invoke-virtual {v3}, Lau/com/bytecode/opencsv/CSVReader;->close()V

    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v3, Lcom/aadhk/restpos/d/ct;

    invoke-direct {v3, p0, v2}, Lcom/aadhk/restpos/d/ct;-><init>(Lcom/aadhk/restpos/d/cf;Ljava/util/List;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    new-instance v1, Lcom/aadhk/restpos/c/bo;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08026b

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/bo;->a(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bo;->show()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/cf;Ljava/util/List;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080274

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080275

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080293

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080296

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080283

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080136

    invoke-virtual {p0, v5}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080276

    invoke-virtual {p0, v6}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080277

    invoke-virtual {p0, v7}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f08028c

    invoke-virtual {p0, v8}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f08028d

    invoke-virtual {p0, v9}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f080279

    invoke-virtual {p0, v10}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xb

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v0, 0x1

    aput-object v1, v11, v0

    const/4 v0, 0x2

    aput-object v2, v11, v0

    const/4 v0, 0x3

    aput-object v3, v11, v0

    const/4 v0, 0x4

    aput-object v4, v11, v0

    const/4 v0, 0x5

    aput-object v5, v11, v0

    const/4 v0, 0x6

    aput-object v6, v11, v0

    const/4 v0, 0x7

    aput-object v7, v11, v0

    const/16 v0, 0x8

    aput-object v8, v11, v0

    const/16 v0, 0x9

    aput-object v9, v11, v0

    const/16 v0, 0xa

    aput-object v10, v11, v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    const/16 v3, 0xb

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

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->isAskPrice()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getCost()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getModifierGroupIds()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/aadhk/product/library/c/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getKitchenNoteGroupIds()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/aadhk/product/library/c/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getPrinterId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getTax1Id()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getBackground()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getFontColor()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getSequence()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/item_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/aadhk/restpos/util/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".csv"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cf;->i:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->i:Ljava/lang/String;

    invoke-static {v0, v11, v1}, Lcom/aadhk/product/library/c/d;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080270

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080272

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/cf;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080273

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->setTitle(I)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f080084

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/cf;)J
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/aadhk/restpos/d/cf;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/cf;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/aadhk/restpos/d/cf;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/cf;)Lcom/aadhk/restpos/d/cq;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->b:Lcom/aadhk/restpos/d/cq;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/cf;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/cf;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080287

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    new-instance v1, Lcom/aadhk/restpos/d/cp;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/cp;-><init>(Lcom/aadhk/restpos/d/cf;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Lcom/aadhk/restpos/c/bp;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    :goto_0
    new-instance v0, Lcom/aadhk/restpos/d/cq;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/cf;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/d/cq;-><init>(Lcom/aadhk/restpos/d/cf;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/cf;->b:Lcom/aadhk/restpos/d/cq;

    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->e:Landroid/view/View;

    const v1, 0x7f090186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cf;->k:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->k:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cf;->b:Lcom/aadhk/restpos/d/cq;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->e:Landroid/view/View;

    const v1, 0x7f090185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cf;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->a(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v0, v3}, Lcom/viewpagerindicator/TabPageIndicator;->setVisibility(I)V

    new-instance v1, Lcom/aadhk/restpos/d/ch;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ch;-><init>(Lcom/aadhk/restpos/d/cf;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->k:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/MgrItemActivity;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/cf;->d:J

    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/cf;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/MgrItemActivity;->a(J)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/MgrItemActivity;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/cf;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->c:Ljava/util/List;

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
    .line 144
    iput-object p1, p0, Lcom/aadhk/restpos/d/cf;->g:Ljava/util/List;

    .line 145
    new-instance v0, Lcom/aadhk/restpos/c/d;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    .line 146
    const v1, 0x7f0802fc

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->setTitle(I)V

    .line 147
    new-instance v1, Lcom/aadhk/restpos/d/cj;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/cj;-><init>(Lcom/aadhk/restpos/d/cf;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    .line 164
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->show()V

    .line 165
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/KitchenNote;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    iput-object p1, p0, Lcom/aadhk/restpos/d/cf;->h:Ljava/util/List;

    .line 207
    new-instance v0, Lcom/aadhk/restpos/c/d;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    .line 208
    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->setTitle(I)V

    .line 209
    new-instance v1, Lcom/aadhk/restpos/d/ck;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ck;-><init>(Lcom/aadhk/restpos/d/cf;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    .line 226
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->show()V

    .line 227
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 664
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 665
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->m()Lcom/aadhk/restpos/g/k;

    move-result-object v0

    sput-object v0, Lcom/aadhk/restpos/d/cf;->j:Lcom/aadhk/restpos/g/k;

    .line 666
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cf;->f:Lcom/aadhk/restpos/bean/Company;

    .line 673
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/cv;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/cv;-><init>(Lcom/aadhk/restpos/d/cf;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 674
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 675
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 652
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/MgrItemActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    .line 653
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 654
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f0802bf

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/MgrItemActivity;->setTitle(I)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/cf;->setHasOptionsMenu(Z)V

    .line 88
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    const v0, 0x7f0f000b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 93
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 94
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 658
    const v0, 0x7f0300c6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cf;->e:Landroid/view/View;

    .line 659
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->e:Landroid/view/View;

    return-object v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090301

    if-ne v0, v2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/MgrItemActivity;->a(Lcom/aadhk/restpos/bean/Item;)V

    move v0, v1

    .line 139
    :goto_0
    return v0

    .line 101
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090314

    if-ne v0, v2, :cond_2

    .line 102
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "item[\\w\\W]*.csv"

    invoke-static {v0, v2}, Lcom/aadhk/product/library/c/f;->a(Ljava/io/File;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    new-instance v2, Lcom/aadhk/product/library/b/k;

    iget-object v3, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, v3, v0, v4}, Lcom/aadhk/product/library/b/k;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    const v3, 0x7f080285

    invoke-virtual {v2, v3}, Lcom/aadhk/product/library/b/k;->setTitle(I)V

    new-instance v3, Lcom/aadhk/restpos/d/cl;

    invoke-direct {v3, p0, v0}, Lcom/aadhk/restpos/d/cl;-><init>(Lcom/aadhk/restpos/d/cf;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v2}, Lcom/aadhk/product/library/b/k;->show()V

    :goto_1
    move v0, v1

    .line 103
    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v2, 0x7f080286

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 104
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090315

    if-ne v0, v2, :cond_3

    .line 105
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/cw;

    invoke-direct {v2, p0, v5}, Lcom/aadhk/restpos/d/cw;-><init>(Lcom/aadhk/restpos/d/cf;B)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v2, v3, v5}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v4}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090313

    if-ne v0, v2, :cond_4

    .line 108
    new-instance v0, Lcom/aadhk/restpos/c/d;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v2}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800c6

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/d;->setTitle(I)V

    new-instance v2, Lcom/aadhk/restpos/d/co;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/co;-><init>(Lcom/aadhk/restpos/d/cf;)V

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->show()V

    move v0, v1

    .line 109
    goto/16 :goto_0

    .line 110
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090317

    if-ne v0, v2, :cond_5

    .line 111
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->k()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v2}, Lcom/aadhk/restpos/MgrItemActivity;->l()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v3, Lcom/aadhk/product/library/b/k;

    iget-object v4, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v3, v4, v0, v5}, Lcom/aadhk/product/library/b/k;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    const v0, 0x7f08027d

    invoke-virtual {v3, v0}, Lcom/aadhk/product/library/b/k;->setTitle(I)V

    new-instance v0, Lcom/aadhk/restpos/d/cn;

    invoke-direct {v0, p0, v2}, Lcom/aadhk/restpos/d/cn;-><init>(Lcom/aadhk/restpos/d/cf;Ljava/util/List;)V

    invoke-virtual {v3, v0}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v3}, Lcom/aadhk/product/library/b/k;->show()V

    move v0, v1

    .line 112
    goto/16 :goto_0

    .line 113
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f09019c

    if-ne v0, v2, :cond_9

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->f:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->f:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->f:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->f:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->f:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->f:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    new-instance v3, Lcom/aadhk/product/library/b/h;

    iget-object v4, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v3, v4, v0, v2}, Lcom/aadhk/product/library/b/h;-><init>(Landroid/content/Context;[Ljava/lang/String;[Z)V

    const v0, 0x7f08027e

    invoke-virtual {v3, v0}, Lcom/aadhk/product/library/b/h;->setTitle(I)V

    new-instance v0, Lcom/aadhk/restpos/d/cm;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/cm;-><init>(Lcom/aadhk/restpos/d/cf;)V

    invoke-virtual {v3, v0}, Lcom/aadhk/product/library/b/h;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v3}, Lcom/aadhk/product/library/b/h;->show()V

    move v0, v1

    .line 115
    goto/16 :goto_0

    .line 116
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090318

    if-ne v0, v2, :cond_a

    .line 117
    new-instance v0, Lcom/aadhk/restpos/c/da;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v2, v4}, Lcom/aadhk/restpos/c/da;-><init>(Lcom/aadhk/restpos/MgrItemActivity;Lcom/aadhk/restpos/bean/Item;)V

    .line 118
    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v3, 0x7f0802c1

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/MgrItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/da;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v2, Lcom/aadhk/restpos/d/cg;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/cg;-><init>(Lcom/aadhk/restpos/d/cf;)V

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/da;->a(Lcom/aadhk/product/library/b/f;)V

    .line 125
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/da;->show()V

    move v0, v1

    .line 126
    goto/16 :goto_0

    .line 127
    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090319

    if-ne v0, v2, :cond_b

    .line 128
    new-instance v0, Lcom/aadhk/restpos/c/cx;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v2, v4}, Lcom/aadhk/restpos/c/cx;-><init>(Lcom/aadhk/restpos/MgrItemActivity;Lcom/aadhk/restpos/bean/Item;)V

    .line 129
    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v3, 0x7f0800ec

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/MgrItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/cx;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    new-instance v2, Lcom/aadhk/restpos/d/ci;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/ci;-><init>(Lcom/aadhk/restpos/d/cf;)V

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/cx;->a(Lcom/aadhk/product/library/b/f;)V

    .line 136
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/cx;->show()V

    move v0, v1

    .line 137
    goto/16 :goto_0

    .line 139
    :cond_b
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0

    .line 114
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
