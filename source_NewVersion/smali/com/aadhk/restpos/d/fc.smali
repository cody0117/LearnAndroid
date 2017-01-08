.class public final Lcom/aadhk/restpos/d/fc;
.super Lcom/aadhk/restpos/d/et;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/aadhk/restpos/b/s;

.field private u:Lcom/aadhk/restpos/b/n;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/aadhk/restpos/d/et;-><init>()V

    .line 145
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/fc;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->s:Ljava/util/List;

    return-object v0
.end method

.method private b()Z
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 64
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/fc;->n:Ljava/lang/String;

    invoke-static {v3}, Lcom/aadhk/product/library/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/aadhk/restpos/d/fc;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/aadhk/restpos/f/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".csv"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fc;->v:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 71
    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->p:Landroid/content/res/Resources;

    const v4, 0x7f090192

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->p:Landroid/content/res/Resources;

    const v4, 0x7f0901ad

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->p:Landroid/content/res/Resources;

    const v4, 0x7f0901ac

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->p:Landroid/content/res/Resources;

    const v4, 0x7f0901ae

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v11

    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->p:Landroid/content/res/Resources;

    const v4, 0x7f0901a7

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v12

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 74
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getCancelPerson()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getCancelReason()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getEndTime()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v12

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 81
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->v:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/aadhk/product/library/c/d;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    move v0, v1

    .line 106
    :goto_1
    return v0

    .line 86
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v3, p0, Lcom/aadhk/restpos/d/fc;->f:Lcom/aadhk/restpos/ReportActivity;

    invoke-direct {v0, v3}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 87
    iget-object v3, p0, Lcom/aadhk/restpos/d/fc;->p:Landroid/content/res/Resources;

    const v4, 0x7f090224

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v2

    .line 100
    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    iget-object v3, p0, Lcom/aadhk/restpos/d/fc;->f:Lcom/aadhk/restpos/ReportActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aadhk/restpos/d/fc;->p:Landroid/content/res/Resources;

    const v6, 0x7f090223

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/fc;->v:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 92
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 93
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    move v0, v2

    .line 100
    goto :goto_1

    .line 94
    :catch_1
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 96
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    move v0, v2

    .line 100
    goto :goto_1

    .line 97
    :catch_2
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    move v0, v2

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fc;->f:Lcom/aadhk/restpos/ReportActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 103
    iget-object v1, p0, Lcom/aadhk/restpos/d/fc;->p:Landroid/content/res/Resources;

    const v3, 0x7f090222

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/aadhk/restpos/d/fc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->f:Lcom/aadhk/restpos/ReportActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fc;->v:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aadhk/restpos/d/fc;->q:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Company;->getEmail()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/fc;->q:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Company;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/fc;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/f/k;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/et;->onActivityCreated(Landroid/os/Bundle;)V

    .line 51
    new-instance v0, Lcom/aadhk/restpos/b/s;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fc;->r:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/s;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/fc;->t:Lcom/aadhk/restpos/b/s;

    .line 52
    new-instance v0, Lcom/aadhk/restpos/b/n;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fc;->r:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/n;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/fc;->u:Lcom/aadhk/restpos/b/n;

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fc;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fc;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->t:Lcom/aadhk/restpos/b/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/fc;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/fc;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/fc;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/fc;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fc;->s:Ljava/util/List;

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/d/fd;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fc;->f:Lcom/aadhk/restpos/ReportActivity;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/fd;-><init>(Lcom/aadhk/restpos/d/fc;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget v0, p0, Lcom/aadhk/restpos/d/fc;->o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fc;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fc;->e:Ljava/lang/String;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/fc;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/fc;->p:Landroid/content/res/Resources;

    const v3, 0x7f0901b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/fc;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/aadhk/restpos/d/fc;->o:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/aadhk/restpos/d/fc;->o:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/fc;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fc;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fc;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fc;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fc;->e:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/aadhk/restpos/d/fc;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fc;->e:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/aadhk/restpos/d/fc;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/f/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fc;->e:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public final bridge synthetic onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/et;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/et;->onCreate(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method public final bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/aadhk/restpos/d/et;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 139
    iget-object v0, p0, Lcom/aadhk/restpos/d/fc;->s:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 140
    iget-object v1, p0, Lcom/aadhk/restpos/d/fc;->u:Lcom/aadhk/restpos/b/n;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/b/n;->b(J)Ljava/util/List;

    move-result-object v1

    .line 141
    new-instance v2, Lcom/aadhk/restpos/c/bn;

    iget-object v3, p0, Lcom/aadhk/restpos/d/fc;->f:Lcom/aadhk/restpos/ReportActivity;

    iget-object v4, p0, Lcom/aadhk/restpos/d/fc;->r:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/aadhk/restpos/c/bn;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 142
    invoke-virtual {v2}, Lcom/aadhk/restpos/c/bn;->show()V

    .line 143
    return-void
.end method

.method public final bridge synthetic onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/et;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
