.class public Lcom/aadhk/restpos/MgrTableActivity;
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
            "Lcom/aadhk/restpos/bean/Table;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/TableGroup;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/widget/ListView;

.field private q:Ljava/lang/String;

.field private r:Lcom/aadhk/restpos/g/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 418
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/MgrTableActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/MgrTableActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/aadhk/restpos/MgrTableActivity;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/MgrTableActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/aadhk/restpos/MgrTableActivity;->o:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/MgrTableActivity;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lau/com/bytecode/opencsv/CSVReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/aadhk/restpos/MgrTableActivity;->q:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    aget-object v3, v2, v3

    if-eqz v3, :cond_0

    const-string v3, ""

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/aadhk/restpos/bean/Table;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/aadhk/restpos/bean/Table;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/aadhk/restpos/c/bo;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080269

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/MgrTableActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "table.csv"

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

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->close()V

    new-instance v1, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/bb;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/bb;-><init>(Lcom/aadhk/restpos/MgrTableActivity;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-direct {v1, v2, p0, v0}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/aadhk/restpos/c/bo;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08026a

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/MgrTableActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "table.csv"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bo;->show()V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/aadhk/restpos/MgrTableActivity;)Lcom/aadhk/restpos/g/n;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->r:Lcom/aadhk/restpos/g/n;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/MgrTableActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/a/ar;

    iget-object v2, p0, Lcom/aadhk/restpos/MgrTableActivity;->a:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/a/ar;-><init>(Lcom/aadhk/restpos/MgrTableActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f09016e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrTableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/MgrTableActivity;->a:Ljava/util/List;

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

.method static synthetic e(Lcom/aadhk/restpos/MgrTableActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->o:Ljava/util/List;

    return-object v0
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
    .line 373
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/bi;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/bi;-><init>(Lcom/aadhk/restpos/MgrTableActivity;Ljava/util/Map;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 374
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 375
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0300c1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrTableActivity;->setContentView(I)V

    .line 50
    const v0, 0x7f0802b9

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrTableActivity;->setTitle(I)V

    .line 51
    new-instance v0, Lcom/aadhk/restpos/g/n;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->r:Lcom/aadhk/restpos/g/n;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/table.csv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->q:Ljava/lang/String;

    .line 54
    const v0, 0x7f0900a4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrTableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->p:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 55
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/bc;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/bc;-><init>(Lcom/aadhk/restpos/MgrTableActivity;B)V

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v3}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/bd;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/bd;-><init>(Lcom/aadhk/restpos/MgrTableActivity;B)V

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v3}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrTableActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 67
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->r:Lcom/aadhk/restpos/g/n;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 448
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 449
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
    .line 203
    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Table;

    .line 204
    new-instance v1, Lcom/aadhk/restpos/c/ah;

    iget-object v2, p0, Lcom/aadhk/restpos/MgrTableActivity;->o:Ljava/util/List;

    invoke-direct {v1, p0, v0, v2}, Lcom/aadhk/restpos/c/ah;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Table;Ljava/util/List;)V

    const v2, 0x7f0800c1

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ah;->setTitle(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ah;->b()V

    new-instance v2, Lcom/aadhk/restpos/av;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/av;-><init>(Lcom/aadhk/restpos/MgrTableActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ah;->a(Lcom/aadhk/product/library/b/f;)V

    new-instance v2, Lcom/aadhk/restpos/aw;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/aw;-><init>(Lcom/aadhk/restpos/MgrTableActivity;Lcom/aadhk/restpos/bean/Table;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ah;->a(Lcom/aadhk/product/library/b/g;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ah;->show()V

    .line 205
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090301

    if-ne v1, v2, :cond_0

    .line 73
    new-instance v1, Lcom/aadhk/restpos/c/ah;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aadhk/restpos/MgrTableActivity;->o:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/restpos/c/ah;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Table;Ljava/util/List;)V

    const v2, 0x7f0800c0

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ah;->setTitle(I)V

    new-instance v2, Lcom/aadhk/restpos/ay;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/ay;-><init>(Lcom/aadhk/restpos/MgrTableActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ah;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ah;->show()V

    .line 82
    :goto_0
    return v0

    .line 75
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090314

    if-ne v1, v2, :cond_1

    .line 76
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Lcom/aadhk/restpos/c/d;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08026c

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/MgrTableActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/d;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/aadhk/restpos/az;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/az;-><init>(Lcom/aadhk/restpos/MgrTableActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/d;->show()V

    goto :goto_0

    .line 78
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090313

    if-ne v1, v2, :cond_2

    .line 79
    new-instance v1, Lcom/aadhk/restpos/c/d;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800c2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/d;->setTitle(I)V

    new-instance v2, Lcom/aadhk/restpos/ax;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/ax;-><init>(Lcom/aadhk/restpos/MgrTableActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/d;->show()V

    goto :goto_0

    .line 82
    :cond_2
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
