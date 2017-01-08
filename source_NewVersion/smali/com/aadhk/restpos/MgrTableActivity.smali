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

.field private l:Landroid/widget/ListView;

.field private m:Lcom/aadhk/restpos/b/v;

.field private n:Lcom/aadhk/restpos/b/m;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/MgrTableActivity;)Lcom/aadhk/restpos/b/v;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->m:Lcom/aadhk/restpos/b/v;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->m:Lcom/aadhk/restpos/b/v;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/v;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->a:Ljava/util/List;

    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->l:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/a/am;

    iget-object v2, p0, Lcom/aadhk/restpos/MgrTableActivity;->a:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/a/am;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    const v0, 0x7f0b012a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrTableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    iget-object v1, p0, Lcom/aadhk/restpos/MgrTableActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 153
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/aadhk/restpos/MgrTableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/aadhk/restpos/MgrTableActivity;->a()V

    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/MgrTableActivity;)Lcom/aadhk/restpos/b/m;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->n:Lcom/aadhk/restpos/b/m;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/MgrTableActivity;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lau/com/bytecode/opencsv/CSVReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/aadhk/restpos/MgrTableActivity;->o:Ljava/lang/String;

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

    new-instance v1, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/aadhk/restpos/MgrTableActivity;->b:Landroid/content/res/Resources;

    const v3, 0x7f09021a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "table.csv"

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

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->close()V

    iget-object v1, p0, Lcom/aadhk/restpos/MgrTableActivity;->m:Lcom/aadhk/restpos/b/v;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/b/v;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/aadhk/restpos/MgrTableActivity;->a()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/aadhk/restpos/MgrTableActivity;->b:Landroid/content/res/Resources;

    const v3, 0x7f09021b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "table.csv"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f0300a3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrTableActivity;->setContentView(I)V

    .line 45
    const v0, 0x7f09025e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrTableActivity;->setTitle(I)V

    .line 47
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/aadhk/restpos/b/v;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/v;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/MgrTableActivity;->m:Lcom/aadhk/restpos/b/v;

    .line 49
    new-instance v1, Lcom/aadhk/restpos/b/m;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/m;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/MgrTableActivity;->n:Lcom/aadhk/restpos/b/m;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/table.csv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->o:Ljava/lang/String;

    .line 53
    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrTableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->l:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    invoke-direct {p0}, Lcom/aadhk/restpos/MgrTableActivity;->a()V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrTableActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 60
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 221
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 222
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
    .line 214
    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableActivity;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Table;

    .line 215
    new-instance v1, Lcom/aadhk/restpos/c/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/c/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f0900b3

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/r;->setTitle(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/r;->b()V

    new-instance v2, Lcom/aadhk/restpos/as;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/as;-><init>(Lcom/aadhk/restpos/MgrTableActivity;Lcom/aadhk/restpos/bean/Table;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/r;->a(Lcom/aadhk/product/library/b/f;)V

    new-instance v2, Lcom/aadhk/restpos/at;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/at;-><init>(Lcom/aadhk/restpos/MgrTableActivity;Lcom/aadhk/restpos/bean/Table;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/r;->a(Lcom/aadhk/product/library/b/g;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/r;->show()V

    .line 216
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b027f

    if-ne v1, v2, :cond_0

    .line 66
    new-instance v1, Lcom/aadhk/restpos/c/r;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/c/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f0900b2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/r;->setTitle(I)V

    new-instance v2, Lcom/aadhk/restpos/av;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/av;-><init>(Lcom/aadhk/restpos/MgrTableActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/r;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/r;->show()V

    .line 75
    :goto_0
    return v0

    .line 68
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0291

    if-ne v1, v2, :cond_1

    .line 69
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Lcom/aadhk/restpos/c/g;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/aadhk/restpos/MgrTableActivity;->b:Landroid/content/res/Resources;

    const v3, 0x7f09021d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/g;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/aadhk/restpos/aw;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/aw;-><init>(Lcom/aadhk/restpos/MgrTableActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/g;->show()V

    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0290

    if-ne v1, v2, :cond_3

    .line 72
    iget-object v1, p0, Lcom/aadhk/restpos/MgrTableActivity;->n:Lcom/aadhk/restpos/b/m;

    invoke-virtual {v1, v3}, Lcom/aadhk/restpos/b/m;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0900bd

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ax;->a(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/aadhk/restpos/c/g;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0900b4

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/g;->setTitle(I)V

    new-instance v2, Lcom/aadhk/restpos/au;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/au;-><init>(Lcom/aadhk/restpos/MgrTableActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/g;->show()V

    goto :goto_0

    .line 75
    :cond_3
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
