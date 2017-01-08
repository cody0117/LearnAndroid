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

.field private l:Landroid/widget/ListView;

.field private m:Lcom/aadhk/restpos/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/MgrCategoryActivity;)Lcom/aadhk/restpos/b/b;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->m:Lcom/aadhk/restpos/b/b;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/MgrCategoryActivity;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
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

    if-ne v3, v6, :cond_0

    new-instance v3, Lcom/aadhk/restpos/bean/Category;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/Category;-><init>()V

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Lcom/aadhk/restpos/bean/Category;->setName(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->b:Landroid/content/res/Resources;

    const v3, 0x7f09021a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "category.csv"

    aput-object v4, v3, v5

    sget-object v4, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    aput-object v4, v3, v6

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
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->b:Landroid/content/res/Resources;

    const v3, 0x7f09021b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "category.csv"

    aput-object v4, v3, v5

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

    iget-object v1, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->m:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/b/b;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrCategoryActivity;->a()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09021c

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ax;->a(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->b:Landroid/content/res/Resources;

    const v1, 0x7f090225

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    new-array v1, v5, [Ljava/lang/String;

    aput-object v0, v1, v6

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
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

    .line 145
    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/category_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/aadhk/restpos/f/i;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".csv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 154
    invoke-static {v3, v1, v2}, Lcom/aadhk/product/library/c/d;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    .line 155
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->b:Landroid/content/res/Resources;

    const v4, 0x7f090221

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

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

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 177
    :goto_1
    return-void

    .line 159
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 160
    iget-object v1, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->b:Landroid/content/res/Resources;

    const v2, 0x7f090224

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->b:Landroid/content/res/Resources;

    const v4, 0x7f090223

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

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

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 165
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 166
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 167
    :catch_1
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 169
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 170
    :catch_2
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 172
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 175
    :cond_2
    const v0, 0x7f090054

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->m:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/b;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->a:Ljava/util/List;

    .line 261
    iget-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->l:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/a/ai;

    iget-object v2, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->a:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/a/ai;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    const v0, 0x7f0b012a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 264
    iget-object v1, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 265
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f03009f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->setContentView(I)V

    .line 55
    const v0, 0x7f090262

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->setTitle(I)V

    .line 57
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/aadhk/restpos/b/b;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->m:Lcom/aadhk/restpos/b/b;

    .line 61
    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->l:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrCategoryActivity;->a()V

    .line 63
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrCategoryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 68
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 309
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 310
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 311
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
    .line 303
    iget-object v0, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    .line 304
    new-instance v1, Lcom/aadhk/restpos/c/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/c/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f0900b6

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/r;->setTitle(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/r;->b()V

    new-instance v2, Lcom/aadhk/restpos/al;

    invoke-direct {v2, p0, v0, v1}, Lcom/aadhk/restpos/al;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;Lcom/aadhk/restpos/bean/Category;Lcom/aadhk/restpos/c/r;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/r;->a(Lcom/aadhk/product/library/b/f;)V

    new-instance v2, Lcom/aadhk/restpos/am;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/am;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;Lcom/aadhk/restpos/bean/Category;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/r;->a(Lcom/aadhk/product/library/b/g;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/r;->show()V

    .line 305
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b027f

    if-ne v1, v2, :cond_0

    .line 74
    new-instance v1, Lcom/aadhk/restpos/c/r;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/c/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f0900b5

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/r;->setTitle(I)V

    new-instance v2, Lcom/aadhk/restpos/ao;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/ao;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;Lcom/aadhk/restpos/c/r;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/r;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/r;->show()V

    .line 86
    :goto_0
    return v0

    .line 76
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0291

    if-ne v1, v2, :cond_2

    .line 77
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

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

    const v3, 0x7f090234

    invoke-virtual {v2, v3}, Lcom/aadhk/product/library/b/k;->setTitle(I)V

    new-instance v3, Lcom/aadhk/restpos/ap;

    invoke-direct {v3, p0, v1}, Lcom/aadhk/restpos/ap;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v2}, Lcom/aadhk/product/library/b/k;->show()V

    goto :goto_0

    :cond_1
    const v1, 0x7f090235

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 79
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0290

    if-ne v1, v2, :cond_4

    .line 80
    iget-object v1, p0, Lcom/aadhk/restpos/MgrCategoryActivity;->m:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v1, v3}, Lcom/aadhk/restpos/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0900c0

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ax;->a(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/aadhk/restpos/c/g;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0900b7

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/g;->setTitle(I)V

    new-instance v2, Lcom/aadhk/restpos/ak;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/ak;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/g;->show()V

    goto :goto_0

    .line 82
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0292

    if-ne v1, v2, :cond_5

    .line 83
    invoke-direct {p0}, Lcom/aadhk/restpos/MgrCategoryActivity;->b()V

    goto/16 :goto_0

    .line 86
    :cond_5
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0
.end method
