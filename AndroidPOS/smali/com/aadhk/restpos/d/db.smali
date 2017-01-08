.class public final Lcom/aadhk/restpos/d/db;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/MgrModifierActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/view/LayoutInflater;

.field private l:Lcom/aadhk/restpos/d/dh;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/aadhk/restpos/bean/ModifierGroup;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Lcom/aadhk/restpos/g/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 505
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/db;)Lcom/aadhk/restpos/d/dh;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->l:Lcom/aadhk/restpos/d/dh;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    new-instance v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/db;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ModifierGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-direct {p0}, Lcom/aadhk/restpos/d/db;->b()V

    .line 125
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/db;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lau/com/bytecode/opencsv/CSVReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    :goto_0
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    new-instance v3, Lcom/aadhk/restpos/bean/Modifier;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/Modifier;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/db;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/ModifierGroup;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/Modifier;->setGroupId(J)V

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Modifier;->setName(Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/Modifier;->setPrice(D)V

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/aadhk/restpos/bean/Modifier;->setType(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/aadhk/restpos/c/bo;

    iget-object v2, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080269

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/db;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "modifier.csv"

    aput-object v4, v3, v6

    sget-object v4, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bo;->show()V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->close()V

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "import formmat error"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/aadhk/restpos/c/bo;

    iget-object v2, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08026a

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/db;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "modifier.csv"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bo;->show()V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->close()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/db;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->l:Lcom/aadhk/restpos/d/dh;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/dh;->notifyDataSetChanged()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/db;)Lcom/aadhk/restpos/MgrModifierActivity;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 335
    new-instance v0, Lcom/aadhk/restpos/d/dh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/d/dh;-><init>(Lcom/aadhk/restpos/d/db;B)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->l:Lcom/aadhk/restpos/d/dh;

    .line 336
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/db;->l:Lcom/aadhk/restpos/d/dh;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 337
    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/db;)Lcom/aadhk/restpos/g/l;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->q:Lcom/aadhk/restpos/g/l;

    return-object v0
.end method

.method private c()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 460
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 461
    const v0, 0x7f080274

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/db;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    const v1, 0x7f080275

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/db;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 463
    const v2, 0x7f080278

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/db;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 464
    new-array v3, v11, [Ljava/lang/String;

    aput-object v0, v3, v9

    aput-object v1, v3, v8

    aput-object v2, v3, v10

    .line 465
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 466
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Modifier;

    .line 467
    new-array v4, v11, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getPrice()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getType()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/modifier_"

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

    move-result-object v2

    .line 473
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 475
    invoke-static {v2, v3, v1}, Lcom/aadhk/product/library/c/d;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    .line 476
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080270

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/db;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 498
    :goto_1
    return-void

    .line 480
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 481
    const v1, 0x7f080273

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 482
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    iget-object v1, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f080272

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/db;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 486
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 487
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 488
    :catch_1
    move-exception v0

    .line 489
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 490
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 491
    :catch_2
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 493
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    const v1, 0x7f080084

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/db;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/db;)Lcom/aadhk/restpos/bean/ModifierGroup;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/db;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/aadhk/restpos/d/db;->a()V

    return-void
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/db;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->k:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/db;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/aadhk/restpos/d/db;->p:I

    return v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/d/db;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->o:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrModifierActivity;->a()Lcom/aadhk/restpos/g/l;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->q:Lcom/aadhk/restpos/g/l;

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrModifierActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/db;->o:Ljava/lang/String;

    .line 100
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/db;->p:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->m:Ljava/util/List;

    .line 104
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/db;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    const-string v1, "bundleModifierGroup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    if-nez v0, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/aadhk/restpos/d/db;->a()V

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/aadhk/restpos/d/db;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ModifierGroup;->getModifiers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/db;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ModifierGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-direct {p0}, Lcom/aadhk/restpos/d/db;->b()V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/MgrModifierActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 91
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 249
    :sswitch_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->c:Landroid/widget/EditText;

    const v3, 0x7f080085

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/db;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    const v1, 0x7f0802fd

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/db;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v3, p0, Lcom/aadhk/restpos/d/db;->c:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/db;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->setName(Ljava/lang/String;)V

    move v0, v2

    goto :goto_1

    .line 253
    :cond_2
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/dl;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/d/dl;-><init>(Lcom/aadhk/restpos/d/db;B)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 254
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v4}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 259
    :sswitch_1
    new-instance v0, Lcom/aadhk/restpos/c/d;

    iget-object v3, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-direct {v0, v3}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0802f7

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/db;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/aadhk/restpos/d/db;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/ModifierGroup;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/aadhk/restpos/d/de;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/de;-><init>(Lcom/aadhk/restpos/d/db;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->show()V

    goto/16 :goto_0

    .line 262
    :sswitch_2
    new-instance v0, Lcom/aadhk/restpos/c/u;

    iget-object v1, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    iget v2, p0, Lcom/aadhk/restpos/d/db;->p:I

    invoke-direct {v0, v1, v4, v2}, Lcom/aadhk/restpos/c/u;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Modifier;I)V

    const v1, 0x7f0800c7

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/u;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/d/df;

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/df;-><init>(Lcom/aadhk/restpos/d/db;Lcom/aadhk/restpos/c/u;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/u;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/u;->show()V

    goto/16 :goto_0

    .line 265
    :sswitch_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->l:Lcom/aadhk/restpos/d/dh;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/dh;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 268
    :sswitch_4
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "modifier[\\w\\W]*.csv"

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/f;->a(Ljava/io/File;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    new-instance v1, Lcom/aadhk/product/library/b/k;

    iget-object v2, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/aadhk/product/library/b/k;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    const v2, 0x7f080285

    invoke-virtual {v1, v2}, Lcom/aadhk/product/library/b/k;->setTitle(I)V

    new-instance v2, Lcom/aadhk/restpos/d/dg;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/d/dg;-><init>(Lcom/aadhk/restpos/d/db;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v1}, Lcom/aadhk/product/library/b/k;->show()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    const v1, 0x7f080286

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 271
    :sswitch_5
    invoke-direct {p0}, Lcom/aadhk/restpos/d/db;->c()V

    goto/16 :goto_0

    .line 247
    :sswitch_data_0
    .sparse-switch
        0x7f09005a -> :sswitch_0
        0x7f0900dc -> :sswitch_1
        0x7f0901ae -> :sswitch_2
        0x7f0901af -> :sswitch_3
        0x7f0901b0 -> :sswitch_4
        0x7f0901b1 -> :sswitch_5
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/db;->setHasOptionsMenu(Z)V

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->k:Landroid/view/LayoutInflater;

    .line 85
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrModifierActivity;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    const v0, 0x7f090301

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 344
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 345
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    const v0, 0x7f030087

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->b:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->b:Landroid/view/View;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->d:Landroid/widget/ListView;

    .line 131
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->b:Landroid/view/View;

    const v1, 0x7f0901ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->c:Landroid/widget/EditText;

    .line 133
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->b:Landroid/view/View;

    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->e:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->b:Landroid/view/View;

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->f:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->b:Landroid/view/View;

    const v1, 0x7f0901ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->g:Landroid/widget/Button;

    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->b:Landroid/view/View;

    const v1, 0x7f0901af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->h:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->b:Landroid/view/View;

    const v1, 0x7f0901b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->i:Landroid/widget/Button;

    .line 138
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->b:Landroid/view/View;

    const v1, 0x7f0901b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->j:Landroid/widget/Button;

    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->b:Landroid/view/View;

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->m:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Modifier;

    new-instance v1, Lcom/aadhk/restpos/c/u;

    iget-object v2, p0, Lcom/aadhk/restpos/d/db;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    iget v3, p0, Lcom/aadhk/restpos/d/db;->p:I

    invoke-direct {v1, v2, v0, v3}, Lcom/aadhk/restpos/c/u;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Modifier;I)V

    const v2, 0x7f0800c8

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/u;->setTitle(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/u;->b()V

    new-instance v2, Lcom/aadhk/restpos/d/dc;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/d/dc;-><init>(Lcom/aadhk/restpos/d/db;Lcom/aadhk/restpos/c/u;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/u;->a(Lcom/aadhk/product/library/b/f;)V

    new-instance v2, Lcom/aadhk/restpos/d/dd;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/d/dd;-><init>(Lcom/aadhk/restpos/d/db;Lcom/aadhk/restpos/bean/Modifier;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/u;->a(Lcom/aadhk/product/library/b/g;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/u;->show()V

    .line 503
    return-void
.end method
