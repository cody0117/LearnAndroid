.class public final Lcom/aadhk/restpos/d/ea;
.super Lcom/aadhk/restpos/d/et;
.source "ProGuard"


# instance fields
.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ReportItem;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/aadhk/restpos/b/n;

.field private u:Ljava/lang/String;

.field private v:D

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/aadhk/restpos/d/et;-><init>()V

    .line 169
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ea;)Lcom/aadhk/restpos/b/n;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->t:Lcom/aadhk/restpos/b/n;

    return-object v0
.end method

.method private b()Z
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 67
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/ea;->n:Ljava/lang/String;

    invoke-static {v3}, Lcom/aadhk/product/library/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/aadhk/restpos/d/ea;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
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

    iput-object v0, p0, Lcom/aadhk/restpos/d/ea;->u:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 74
    new-array v3, v13, [Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->p:Landroid/content/res/Resources;

    const v4, 0x7f0901a5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->p:Landroid/content/res/Resources;

    const v4, 0x7f0901a4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->p:Landroid/content/res/Resources;

    const v4, 0x7f0901a6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v12

    .line 75
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 77
    new-array v6, v13, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v8

    iget-wide v10, p0, Lcom/aadhk/restpos/d/ea;->v:D

    invoke-static {v8, v9, v10, v11}, Lcom/aadhk/restpos/f/h;->b(DD)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v12

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 83
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->u:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/aadhk/product/library/c/d;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    move v0, v1

    .line 108
    :goto_1
    return v0

    .line 88
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v3, p0, Lcom/aadhk/restpos/d/ea;->f:Lcom/aadhk/restpos/ReportActivity;

    invoke-direct {v0, v3}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 89
    iget-object v3, p0, Lcom/aadhk/restpos/d/ea;->p:Landroid/content/res/Resources;

    const v4, 0x7f090224

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v2

    .line 102
    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    iget-object v3, p0, Lcom/aadhk/restpos/d/ea;->f:Lcom/aadhk/restpos/ReportActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aadhk/restpos/d/ea;->p:Landroid/content/res/Resources;

    const v6, 0x7f090223

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/ea;->u:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 94
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 95
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    move v0, v2

    .line 102
    goto :goto_1

    .line 96
    :catch_1
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 98
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    move v0, v2

    .line 102
    goto :goto_1

    .line 99
    :catch_2
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    move v0, v2

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ea;->f:Lcom/aadhk/restpos/ReportActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 105
    iget-object v1, p0, Lcom/aadhk/restpos/d/ea;->p:Landroid/content/res/Resources;

    const v3, 0x7f090222

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    move v0, v2

    goto :goto_1
.end method

.method private c()V
    .locals 3

    .prologue
    .line 156
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 157
    iget v2, p0, Lcom/aadhk/restpos/d/ea;->x:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/aadhk/restpos/d/ea;->x:I

    .line 158
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getPercentage()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/ReportItem;->setPercentage(I)V

    .line 159
    iget v0, p0, Lcom/aadhk/restpos/d/ea;->x:I

    if-nez v0, :cond_1

    .line 160
    :cond_2
    iget v0, p0, Lcom/aadhk/restpos/d/ea;->x:I

    if-gtz v0, :cond_0

    .line 164
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ea;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->f:Lcom/aadhk/restpos/ReportActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ea;->u:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aadhk/restpos/d/ea;->q:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Company;->getEmail()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/ea;->q:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Company;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/ea;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/f/k;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/et;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    new-instance v0, Lcom/aadhk/restpos/b/n;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ea;->r:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/n;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ea;->t:Lcom/aadhk/restpos/b/n;

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ea;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ea;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->t:Lcom/aadhk/restpos/b/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/ea;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/ea;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/ea;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/ea;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "amt desc"

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/b/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ea;->s:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/ea;->v:D

    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ea;->v:D

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/aadhk/restpos/d/ea;->v:D

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/aadhk/restpos/d/ea;->v:D

    div-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/ReportItem;->setPercentage(I)V

    iget v0, p0, Lcom/aadhk/restpos/d/ea;->w:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/aadhk/restpos/d/ea;->w:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/aadhk/restpos/d/ea;->w:I

    rsub-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/aadhk/restpos/d/ea;->x:I

    iget v0, p0, Lcom/aadhk/restpos/d/ea;->x:I

    if-lez v0, :cond_3

    invoke-direct {p0}, Lcom/aadhk/restpos/d/ea;->c()V

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v8, p0, Lcom/aadhk/restpos/d/ea;->h:Landroid/widget/ListView;

    new-instance v0, Lcom/aadhk/restpos/d/eb;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ea;->f:Lcom/aadhk/restpos/ReportActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/ea;->s:Ljava/util/List;

    iget-object v4, p0, Lcom/aadhk/restpos/d/ea;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/aadhk/restpos/d/ea;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/aadhk/restpos/d/ea;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/aadhk/restpos/d/ea;->d:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/aadhk/restpos/d/eb;-><init>(Lcom/aadhk/restpos/d/ea;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, p0, Lcom/aadhk/restpos/d/ea;->o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ea;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ea;->e:Ljava/lang/String;

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/ea;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/ea;->p:Landroid/content/res/Resources;

    const v3, 0x7f0901b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/d/ea;->l:I

    iget-wide v3, p0, Lcom/aadhk/restpos/d/ea;->v:D

    iget-object v5, p0, Lcom/aadhk/restpos/d/ea;->k:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void

    .line 57
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/aadhk/restpos/d/ea;->o:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/aadhk/restpos/d/ea;->o:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/ea;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ea;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ea;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ea;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ea;->e:Ljava/lang/String;

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/aadhk/restpos/d/ea;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ea;->e:Ljava/lang/String;

    goto/16 :goto_3

    :cond_9
    iget v0, p0, Lcom/aadhk/restpos/d/ea;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/f/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ea;->e:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public final bridge synthetic onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/et;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/et;->onCreate(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method public final bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/aadhk/restpos/d/et;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/et;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
