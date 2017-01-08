.class public final Lcom/aadhk/restpos/d/au;
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

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/content/res/Resources;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Lcom/aadhk/restpos/b/j;

.field private j:Lcom/aadhk/restpos/b/k;

.field private k:Landroid/view/LayoutInflater;

.field private l:Lcom/aadhk/restpos/d/bb;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 416
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/au;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->m:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 371
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->f:Landroid/content/res/Resources;

    const v1, 0x7f090225

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/aadhk/restpos/d/au;->f:Landroid/content/res/Resources;

    const v2, 0x7f090226

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 374
    iget-object v2, p0, Lcom/aadhk/restpos/d/au;->f:Landroid/content/res/Resources;

    const v3, 0x7f090229

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 375
    new-array v3, v11, [Ljava/lang/String;

    aput-object v0, v3, v9

    aput-object v1, v3, v8

    aput-object v2, v3, v10

    .line 376
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 377
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Modifier;

    .line 378
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

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/modifier_"

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

    move-result-object v2

    .line 384
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 386
    invoke-static {v2, v3, v1}, Lcom/aadhk/product/library/c/d;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    .line 387
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/au;->f:Landroid/content/res/Resources;

    const v4, 0x7f090221

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

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

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 409
    :goto_1
    return-void

    .line 391
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 392
    iget-object v1, p0, Lcom/aadhk/restpos/d/au;->f:Landroid/content/res/Resources;

    const v3, 0x7f090224

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 395
    :catch_0
    move-exception v0

    .line 396
    iget-object v1, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/au;->f:Landroid/content/res/Resources;

    const v5, 0x7f090223

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

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

    .line 397
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 398
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 399
    :catch_1
    move-exception v0

    .line 400
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 401
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 402
    :catch_2
    move-exception v0

    .line 403
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 404
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    const v1, 0x7f090054

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/au;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 60
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

    iget-object v4, p0, Lcom/aadhk/restpos/d/au;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

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

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/Modifier;->setPrice(D)V

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/aadhk/restpos/bean/Modifier;->setType(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/aadhk/restpos/c/ax;

    iget-object v2, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/au;->f:Landroid/content/res/Resources;

    const v3, 0x7f09021a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "modifier.csv"

    aput-object v4, v3, v6

    sget-object v4, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

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

    new-instance v1, Lcom/aadhk/restpos/c/ax;

    iget-object v2, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/au;->f:Landroid/content/res/Resources;

    const v3, 0x7f09021b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "modifier.csv"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->close()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/au;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->l:Lcom/aadhk/restpos/d/bb;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/bb;->notifyDataSetChanged()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/au;)Lcom/aadhk/restpos/d/bb;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->l:Lcom/aadhk/restpos/d/bb;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/au;)Lcom/aadhk/restpos/b/j;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->i:Lcom/aadhk/restpos/b/j;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/au;)Lcom/aadhk/restpos/bean/ModifierGroup;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/au;)Lcom/aadhk/restpos/b/k;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->j:Lcom/aadhk/restpos/b/k;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/au;)Lcom/aadhk/restpos/MgrModifierActivity;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/au;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->k:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/au;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/aadhk/restpos/d/au;->p:I

    return v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/d/au;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->o:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrModifierActivity;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/aadhk/restpos/b/j;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/j;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/au;->i:Lcom/aadhk/restpos/b/j;

    .line 99
    new-instance v1, Lcom/aadhk/restpos/b/k;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/k;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/au;->j:Lcom/aadhk/restpos/b/k;

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrModifierActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/au;->o:Ljava/lang/String;

    .line 103
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/au;->p:I

    .line 106
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/au;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    const-string v1, "bundleModifierGroup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    iput-object v0, p0, Lcom/aadhk/restpos/d/au;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/au;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    if-nez v0, :cond_2

    .line 116
    new-instance v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/au;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/au;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ModifierGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->i:Lcom/aadhk/restpos/b/j;

    iget-object v1, p0, Lcom/aadhk/restpos/d/au;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ModifierGroup;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/j;->b(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/au;->m:Ljava/util/List;

    new-instance v0, Lcom/aadhk/restpos/d/bb;

    invoke-direct {v0, p0, v3}, Lcom/aadhk/restpos/d/bb;-><init>(Lcom/aadhk/restpos/d/au;B)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/au;->l:Lcom/aadhk/restpos/d/bb;

    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/au;->l:Lcom/aadhk/restpos/d/bb;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    return-void

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/MgrModifierActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 92
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 189
    :sswitch_0
    iget-object v2, p0, Lcom/aadhk/restpos/d/au;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/aadhk/restpos/d/au;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/au;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/au;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    :goto_1
    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    const v3, 0x7f09029e

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/MgrModifierActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/ModifierGroup;->setName(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->j:Lcom/aadhk/restpos/b/k;

    iget-object v1, p0, Lcom/aadhk/restpos/d/au;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    iget-object v2, p0, Lcom/aadhk/restpos/d/au;->m:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/k;->a(Lcom/aadhk/restpos/bean/ModifierGroup;Ljava/util/List;)V

    .line 194
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrModifierActivity;->b()V

    goto :goto_0

    .line 199
    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " b.rowid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/au;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/ModifierGroup;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/au;->j:Lcom/aadhk/restpos/b/k;

    invoke-virtual {v3, v2}, Lcom/aadhk/restpos/b/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/au;->f:Landroid/content/res/Resources;

    const v2, 0x7f0900be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    goto/16 :goto_0

    :cond_3
    new-instance v2, Lcom/aadhk/restpos/c/g;

    iget-object v3, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-direct {v2, v3}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/au;->f:Landroid/content/res/Resources;

    const v4, 0x7f090298

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/aadhk/restpos/d/au;->n:Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/ModifierGroup;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/c/g;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/aadhk/restpos/d/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/ax;-><init>(Lcom/aadhk/restpos/d/au;)V

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    invoke-virtual {v2}, Lcom/aadhk/restpos/c/g;->show()V

    goto/16 :goto_0

    .line 202
    :sswitch_2
    new-instance v0, Lcom/aadhk/restpos/c/t;

    iget-object v1, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    iget v2, p0, Lcom/aadhk/restpos/d/au;->p:I

    invoke-direct {v0, v1, v4, v2}, Lcom/aadhk/restpos/c/t;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Modifier;I)V

    const v1, 0x7f0900b9

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/t;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/d/ay;

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/ay;-><init>(Lcom/aadhk/restpos/d/au;Lcom/aadhk/restpos/c/t;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/t;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/t;->show()V

    goto/16 :goto_0

    .line 187
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0056 -> :sswitch_0
        0x7f0b00c9 -> :sswitch_1
        0x7f0b0163 -> :sswitch_2
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

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/au;->setHasOptionsMenu(Z)V

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/au;->k:Landroid/view/LayoutInflater;

    .line 85
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/au;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/au;->f:Landroid/content/res/Resources;

    .line 86
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrModifierActivity;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const v0, 0x7f0b027f

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 257
    :cond_0
    const v0, 0x7f0f000a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 258
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 259
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    const v0, 0x7f030070

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/au;->b:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->b:Landroid/view/View;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/au;->d:Landroid/widget/ListView;

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->b:Landroid/view/View;

    const v1, 0x7f0b0162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/au;->c:Landroid/widget/EditText;

    .line 131
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->b:Landroid/view/View;

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/au;->g:Landroid/widget/Button;

    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->b:Landroid/view/View;

    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/au;->h:Landroid/widget/Button;

    .line 133
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->b:Landroid/view/View;

    const v1, 0x7f0b0163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/au;->e:Landroid/widget/LinearLayout;

    .line 135
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->b:Landroid/view/View;

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
    .line 413
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->m:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Modifier;

    new-instance v1, Lcom/aadhk/restpos/c/t;

    iget-object v2, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    iget v3, p0, Lcom/aadhk/restpos/d/au;->p:I

    invoke-direct {v1, v2, v0, v3}, Lcom/aadhk/restpos/c/t;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Modifier;I)V

    const v2, 0x7f0900ba

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/t;->setTitle(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/t;->b()V

    new-instance v2, Lcom/aadhk/restpos/d/av;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/d/av;-><init>(Lcom/aadhk/restpos/d/au;Lcom/aadhk/restpos/c/t;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/t;->a(Lcom/aadhk/product/library/b/f;)V

    new-instance v2, Lcom/aadhk/restpos/d/aw;

    invoke-direct {v2, p0, v0, v1}, Lcom/aadhk/restpos/d/aw;-><init>(Lcom/aadhk/restpos/d/au;Lcom/aadhk/restpos/bean/Modifier;Lcom/aadhk/restpos/c/t;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/t;->a(Lcom/aadhk/product/library/b/g;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/t;->show()V

    .line 414
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 263
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0291

    if-ne v1, v2, :cond_1

    .line 264
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "modifier[\\w\\W]*.csv"

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/f;->a(Ljava/io/File;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    new-instance v2, Lcom/aadhk/product/library/b/k;

    iget-object v3, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, v3, v1, v4}, Lcom/aadhk/product/library/b/k;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    const v3, 0x7f090234

    invoke-virtual {v2, v3}, Lcom/aadhk/product/library/b/k;->setTitle(I)V

    new-instance v3, Lcom/aadhk/restpos/d/az;

    invoke-direct {v3, p0, v1}, Lcom/aadhk/restpos/d/az;-><init>(Lcom/aadhk/restpos/d/au;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v2}, Lcom/aadhk/product/library/b/k;->show()V

    .line 273
    :goto_0
    return v0

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    const v2, 0x7f090235

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 266
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0290

    if-ne v1, v2, :cond_3

    .line 267
    iget-object v1, p0, Lcom/aadhk/restpos/d/au;->j:Lcom/aadhk/restpos/b/k;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/b/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/aadhk/restpos/c/ax;

    iget-object v2, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0900bf

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ax;->a(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/aadhk/restpos/c/g;

    iget-object v2, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0900bc

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/g;->setTitle(I)V

    new-instance v2, Lcom/aadhk/restpos/d/ba;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/ba;-><init>(Lcom/aadhk/restpos/d/au;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/g;->show()V

    goto :goto_0

    .line 269
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0292

    if-ne v1, v2, :cond_4

    .line 270
    invoke-direct {p0}, Lcom/aadhk/restpos/d/au;->a()V

    goto :goto_0

    .line 273
    :cond_4
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
