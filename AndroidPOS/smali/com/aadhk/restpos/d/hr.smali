.class public final Lcom/aadhk/restpos/d/hr;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/aadhk/restpos/ReportListActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ExpandableListView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/aadhk/restpos/bean/Company;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Report;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private m:Lcom/aadhk/restpos/e/g;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/hr;)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->l:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method private a()Z
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 172
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Report_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/hr;->a:Ljava/lang/String;

    const-string v4, "yyyy_MM_dd"

    invoke-static {v1, v4}, Lcom/aadhk/product/library/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hr;->q:Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/aadhk/restpos/util/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/hr;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".csv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hr;->p:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 178
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 179
    new-array v0, v2, [Ljava/lang/String;

    const v1, 0x7f0801d0

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/hr;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-array v0, v2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0801f6

    invoke-virtual {p0, v5}, Lcom/aadhk/restpos/d/hr;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/aadhk/restpos/d/hr;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-array v0, v2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0801f7

    invoke-virtual {p0, v5}, Lcom/aadhk/restpos/d/hr;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/aadhk/restpos/d/hr;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v11

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Report;

    .line 184
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getReportItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    new-array v0, v2, [Ljava/lang/String;

    const v1, 0x7f080084

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/hr;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v11

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getReportItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/bean/ReportItem;

    .line 189
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getId()I

    move-result v7

    const/16 v8, 0xe

    if-ne v7, v8, :cond_3

    .line 190
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getId()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 191
    new-array v7, v12, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, ""

    aput-object v8, v7, v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v11

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_2
    iget-object v7, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v7}, Lcom/aadhk/restpos/ReportListActivity;->t()I

    move-result v7

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v8

    iget-object v10, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v10}, Lcom/aadhk/restpos/ReportListActivity;->s()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 194
    new-array v8, v12, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v3

    const-string v1, ""

    aput-object v1, v8, v2

    aput-object v7, v8, v11

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    :cond_3
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getId()I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_4

    .line 198
    iget-object v7, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v7}, Lcom/aadhk/restpos/ReportListActivity;->t()I

    move-result v7

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v8

    iget-object v10, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v10}, Lcom/aadhk/restpos/ReportListActivity;->s()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 199
    new-array v8, v12, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    aput-object v7, v8, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getPercentage()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "%"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v11

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 200
    :cond_4
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getId()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_5

    .line 201
    new-array v7, v12, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getPercentage()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "%"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v11

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 203
    :cond_5
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v7

    if-nez v7, :cond_6

    .line 204
    iget-object v7, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v7}, Lcom/aadhk/restpos/ReportListActivity;->t()I

    move-result v7

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v8

    iget-object v10, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v10}, Lcom/aadhk/restpos/ReportListActivity;->s()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 205
    new-array v8, v12, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v3

    const-string v1, ""

    aput-object v1, v8, v2

    aput-object v7, v8, v11

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 207
    :cond_6
    iget-object v7, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v7}, Lcom/aadhk/restpos/ReportListActivity;->t()I

    move-result v7

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v8

    iget-object v10, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v10}, Lcom/aadhk/restpos/ReportListActivity;->s()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 208
    new-array v8, v12, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v2

    aput-object v7, v8, v11

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 216
    :cond_7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 218
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 219
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/aadhk/restpos/util/f;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 220
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->p:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lcom/aadhk/product/library/c/d;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    move v0, v2

    .line 243
    :goto_2
    return v0

    .line 223
    :cond_8
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 224
    const v1, 0x7f080273

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/hr;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v3

    .line 237
    goto :goto_2

    .line 227
    :catch_0
    move-exception v0

    .line 228
    iget-object v1, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f080272

    invoke-virtual {p0, v5}, Lcom/aadhk/restpos/d/hr;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/hr;->p:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 229
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 230
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    move v0, v3

    .line 237
    goto :goto_2

    .line 231
    :catch_1
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 233
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    move v0, v3

    .line 237
    goto :goto_2

    .line 234
    :catch_2
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 236
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    move v0, v3

    .line 238
    goto :goto_2

    .line 239
    :cond_9
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 240
    const v1, 0x7f080271

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/hr;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    move v0, v3

    goto :goto_2
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/hr;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/hr;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/hr;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/hr;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/hr;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/hr;)Lcom/aadhk/restpos/e/g;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->m:Lcom/aadhk/restpos/e/g;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/hr;)Lcom/aadhk/restpos/ReportListActivity;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->k()Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hr;->l:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 81
    new-instance v0, Lcom/aadhk/restpos/e/g;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/e/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/hr;->m:Lcom/aadhk/restpos/e/g;

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportListActivity;->v()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hr;->j:Lcom/aadhk/restpos/bean/Company;

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportListActivity;->u()Lcom/aadhk/restpos/bean/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hr;->o:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportListActivity;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hr;->k:Ljava/util/List;

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->e:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->e:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/aadhk/restpos/a/bf;

    iget-object v2, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/hr;->k:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/bf;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->e:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/aadhk/restpos/d/hs;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/hs;-><init>(Lcom/aadhk/restpos/d/hr;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 94
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/hr;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/aadhk/restpos/d/hr;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hr;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hr;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hr;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/ReportListActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 108
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/hr;->setHasOptionsMenu(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/hr;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    const-string v1, "fromDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/hr;->a:Ljava/lang/String;

    .line 72
    const-string v1, "toDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hr;->b:Ljava/lang/String;

    .line 74
    :cond_0
    invoke-static {}, Lcom/aadhk/product/library/c/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hr;->n:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 113
    const v0, 0x7f0f0012

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 114
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    const v0, 0x7f03009d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hr;->d:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->d:Landroid/view/View;

    const v1, 0x7f090268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hr;->e:Landroid/widget/ExpandableListView;

    .line 163
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->d:Landroid/view/View;

    const v1, 0x7f090266

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hr;->f:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->d:Landroid/view/View;

    const v1, 0x7f090267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hr;->g:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->d:Landroid/view/View;

    const v1, 0x7f090269

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hr;->h:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->d:Landroid/view/View;

    const v1, 0x7f09026a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hr;->i:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->d:Landroid/view/View;

    return-object v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09031a

    if-ne v0, v1, :cond_1

    .line 120
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/ht;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ht;-><init>(Lcom/aadhk/restpos/d/hr;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-direct {v0, v1, v2, v4}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 144
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 145
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0901a0

    if-ne v0, v1, :cond_2

    .line 146
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/aadhk/restpos/util/f;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0801d0

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/hr;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/hr;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->m:Lcom/aadhk/restpos/e/g;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hr;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getEmail()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/hr;->l:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v3, p0, Lcom/aadhk/restpos/d/hr;->k:Ljava/util/List;

    iget-object v5, p0, Lcom/aadhk/restpos/d/hr;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/aadhk/restpos/d/hr;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/aadhk/restpos/d/hr;->n:Ljava/lang/String;

    iget-object v8, p0, Lcom/aadhk/restpos/d/hr;->o:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/aadhk/restpos/e/g;->a(Ljava/lang/String;Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090014

    if-ne v0, v1, :cond_3

    .line 150
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportListActivity;->finish()V

    goto :goto_0

    .line 151
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09031b

    if-ne v0, v1, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/aadhk/restpos/d/hr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/aadhk/restpos/d/hr;->c:Lcom/aadhk/restpos/ReportListActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hr;->p:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/aadhk/restpos/d/hr;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->getEmail()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/hr;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Company;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/hr;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "text/csv"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.extra.EMAIL"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v1, 0x7f08024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
