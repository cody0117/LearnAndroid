.class public Lcom/aadhk/restpos/MgrCategoryActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Category;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/widget/ListView;

.field private p:Lcom/aadhk/restpos/g/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 467
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/MgrCategoryActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/MgrCategoryActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->a:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 143
    const v0, 0x7f080274

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    const v1, 0x7f080279

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/MgrCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    new-array v2, v8, [Ljava/lang/String;

    aput-object v0, v2, v7

    aput-object v1, v2, v6

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    .line 148
    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getSequence()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/category_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/aadhk/restpos/util/o;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".csv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 157
    invoke-static {v3, v2, v1}, Lcom/aadhk/product/library/c/d;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    .line 158
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080270

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/MgrCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 180
    :goto_1
    return-void

    .line 162
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 163
    const v1, 0x7f080273

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 164
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080272

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/MgrCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 168
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 169
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 170
    :catch_1
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 172
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 173
    :catch_2
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 175
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 178
    :cond_2
    const v0, 0x7f080084

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/aadhk/restpos/MgrCategoryActivity;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
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

    if-ne v3, v7, :cond_0

    new-instance v3, Lcom/aadhk/restpos/bean/Category;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/Category;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Category;->setName(Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/aadhk/restpos/bean/Category;->setSequence(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/aadhk/restpos/c/bo;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080269

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/MgrCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "category.csv"

    aput-object v4, v3, v5

    sget-object v4, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    aput-object v4, v3, v6

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
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/aadhk/restpos/c/bo;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08026a

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/MgrCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "category.csv"

    aput-object v4, v3, v5

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

    new-instance v1, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/aj;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/aj;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-direct {v1, v2, p0, v0}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/aadhk/restpos/c/bo;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08026b

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/bo;->a(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bo;->show()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/aadhk/restpos/MgrCategoryActivity;)Lcom/aadhk/restpos/g/j;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->p:Lcom/aadhk/restpos/g/j;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/MgrCategoryActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->o:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/a/al;

    iget-object v2, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->a:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/a/al;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f09016e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/ao;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/ao;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;Ljava/util/Map;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 262
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 263
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f0300bd

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->setContentView(I)V

    .line 60
    const v0, 0x7f0802bd

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->setTitle(I)V

    .line 61
    new-instance v0, Lcom/aadhk/restpos/g/j;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->p:Lcom/aadhk/restpos/g/j;

    .line 64
    const v0, 0x7f0900a4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->o:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->o:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/am;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/am;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;B)V

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrCategoryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 71
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->p:Lcom/aadhk/restpos/g/j;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 497
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 498
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 328
    iget-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    .line 329
    new-instance v1, Lcom/aadhk/restpos/c/p;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/c/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f0800c4

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/p;->setTitle(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/p;->b()V

    new-instance v2, Lcom/aadhk/restpos/ad;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/ad;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;Lcom/aadhk/restpos/bean/Category;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/p;->a(Lcom/aadhk/product/library/b/f;)V

    new-instance v2, Lcom/aadhk/restpos/ae;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/ae;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;Lcom/aadhk/restpos/bean/Category;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/p;->a(Lcom/aadhk/product/library/b/g;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/p;->show()V

    .line 330
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090301

    if-ne v1, v2, :cond_0

    .line 77
    new-instance v1, Lcom/aadhk/restpos/c/p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/c/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f0800c3

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/p;->setTitle(I)V

    new-instance v2, Lcom/aadhk/restpos/ag;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/ag;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/p;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/p;->show()V

    .line 89
    :goto_0
    return v0

    .line 79
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090314

    if-ne v1, v2, :cond_2

    .line 80
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "category[\\w\\W]*.csv"

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/f;->a(Ljava/io/File;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    new-instance v2, Lcom/aadhk/product/library/b/k;

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, v1, v3}, Lcom/aadhk/product/library/b/k;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    const v3, 0x7f080285

    invoke-virtual {v2, v3}, Lcom/aadhk/product/library/b/k;->setTitle(I)V

    new-instance v3, Lcom/aadhk/restpos/ah;

    invoke-direct {v3, p0, v1}, Lcom/aadhk/restpos/ah;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v2}, Lcom/aadhk/product/library/b/k;->show()V

    goto :goto_0

    :cond_1
    const v1, 0x7f080286

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 82
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090313

    if-ne v1, v2, :cond_3

    .line 83
    new-instance v1, Lcom/aadhk/restpos/c/d;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800c5

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/d;->setTitle(I)V

    new-instance v2, Lcom/aadhk/restpos/ac;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/ac;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/d;->show()V

    goto :goto_0

    .line 85
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090315

    if-ne v1, v2, :cond_4

    .line 86
    invoke-direct {p0}, Lcom/aadhk/restpos/MgrCategoryActivity;->a()V

    goto :goto_0

    .line 89
    :cond_4
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
