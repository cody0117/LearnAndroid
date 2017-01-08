.class public final Lcom/aadhk/restpos/d/eq;
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

.field private j:Landroid/content/res/Resources;

.field private k:Lcom/aadhk/restpos/bean/Company;

.field private l:Landroid/database/sqlite/SQLiteDatabase;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Report;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private o:Lcom/aadhk/restpos/e/f;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/ReportListActivity;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    return-object v0
.end method

.method private a()Z
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 182
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Report_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->a:Ljava/lang/String;

    const-string v4, "yyyy_MM_dd"

    invoke-static {v1, v4}, Lcom/aadhk/product/library/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->s:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/aadhk/restpos/f/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".csv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->r:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 188
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 189
    new-array v0, v2, [Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->j:Landroid/content/res/Resources;

    const v5, 0x7f090195

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-array v0, v2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aadhk/restpos/d/eq;->j:Landroid/content/res/Resources;

    const v6, 0x7f0901bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/aadhk/restpos/d/eq;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-array v0, v2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aadhk/restpos/d/eq;->j:Landroid/content/res/Resources;

    const v6, 0x7f0901bc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/aadhk/restpos/d/eq;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v11

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Report;

    .line 194
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getReportItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    new-array v0, v2, [Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->j:Landroid/content/res/Resources;

    const v6, 0x7f090054

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
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

    .line 198
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

    .line 199
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getId()I

    move-result v7

    const/16 v8, 0xe

    if-ne v7, v8, :cond_3

    .line 200
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getId()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 201
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

    .line 203
    :cond_2
    iget-object v7, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v7}, Lcom/aadhk/restpos/ReportListActivity;->l()I

    move-result v7

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v8

    iget-object v10, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v10}, Lcom/aadhk/restpos/ReportListActivity;->k()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 204
    new-array v8, v12, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v3

    const-string v1, ""

    aput-object v1, v8, v2

    aput-object v7, v8, v11

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
    :cond_3
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getId()I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_4

    .line 208
    iget-object v7, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v7}, Lcom/aadhk/restpos/ReportListActivity;->l()I

    move-result v7

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v8

    iget-object v10, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v10}, Lcom/aadhk/restpos/ReportListActivity;->k()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 209
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

    .line 210
    :cond_4
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getId()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_5

    .line 211
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

    .line 213
    :cond_5
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v7

    if-nez v7, :cond_6

    .line 214
    iget-object v7, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v7}, Lcom/aadhk/restpos/ReportListActivity;->l()I

    move-result v7

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v8

    iget-object v10, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v10}, Lcom/aadhk/restpos/ReportListActivity;->k()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 215
    new-array v8, v12, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v3

    const-string v1, ""

    aput-object v1, v8, v2

    aput-object v7, v8, v11

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 217
    :cond_6
    iget-object v7, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v7}, Lcom/aadhk/restpos/ReportListActivity;->l()I

    move-result v7

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v8

    iget-object v10, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v10}, Lcom/aadhk/restpos/ReportListActivity;->k()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 218
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

    .line 226
    :cond_7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 228
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 229
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/aadhk/restpos/f/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 230
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->r:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lcom/aadhk/product/library/c/d;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    move v0, v2

    .line 253
    :goto_2
    return v0

    .line 233
    :cond_8
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 234
    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->j:Landroid/content/res/Resources;

    const v4, 0x7f090224

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v3

    .line 247
    goto :goto_2

    .line 237
    :catch_0
    move-exception v0

    .line 238
    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aadhk/restpos/d/eq;->j:Landroid/content/res/Resources;

    const v6, 0x7f090223

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/eq;->r:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 239
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 240
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    move v0, v3

    .line 247
    goto :goto_2

    .line 241
    :catch_1
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 243
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    move v0, v3

    .line 247
    goto :goto_2

    .line 244
    :catch_2
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 246
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    move v0, v3

    .line 248
    goto :goto_2

    .line 249
    :cond_9
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 250
    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->j:Landroid/content/res/Resources;

    const v2, 0x7f090222

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    move v0, v3

    goto :goto_2
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->n:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/eq;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/eq;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/eq;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/eq;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/eq;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/e/f;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->o:Lcom/aadhk/restpos/e/f;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportListActivity;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->l:Landroid/database/sqlite/SQLiteDatabase;

    .line 87
    new-instance v0, Lcom/aadhk/restpos/b/r;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/r;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 88
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/r;->b(I)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->n:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 89
    new-instance v0, Lcom/aadhk/restpos/e/f;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/e/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->o:Lcom/aadhk/restpos/e/f;

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportListActivity;->n()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->k:Lcom/aadhk/restpos/bean/Company;

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportListActivity;->m()Lcom/aadhk/restpos/bean/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->q:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportListActivity;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->m:Ljava/util/List;

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->e:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->e:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/aadhk/restpos/a/ba;

    iget-object v2, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/eq;->m:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/ba;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->e:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/aadhk/restpos/d/er;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/er;-><init>(Lcom/aadhk/restpos/d/eq;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 102
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/ReportListActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 116
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/eq;->setHasOptionsMenu(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/eq;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    const-string v1, "fromDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/eq;->a:Ljava/lang/String;

    .line 77
    const-string v1, "toDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->b:Ljava/lang/String;

    .line 79
    :cond_0
    invoke-static {}, Lcom/aadhk/product/library/c/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->p:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->j:Landroid/content/res/Resources;

    .line 81
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 121
    const v0, 0x7f0f000f

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 122
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    const v0, 0x7f030085

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->d:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->d:Landroid/view/View;

    const v1, 0x7f0b0212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->e:Landroid/widget/ExpandableListView;

    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->d:Landroid/view/View;

    const v1, 0x7f0b0210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->f:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->d:Landroid/view/View;

    const v1, 0x7f0b0211

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->g:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->d:Landroid/view/View;

    const v1, 0x7f0b0213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->h:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->d:Landroid/view/View;

    const v1, 0x7f0b0214

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->i:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->d:Landroid/view/View;

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
    const/4 v5, 0x0

    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0298

    if-ne v0, v1, :cond_2

    .line 127
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    new-instance v2, Lcom/aadhk/restpos/d/es;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/es;-><init>(Lcom/aadhk/restpos/d/eq;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/eq;->j:Landroid/content/res/Resources;

    const v4, 0x7f090177

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    .line 151
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 152
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v5}, Lcom/aadhk/product/library/a/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 167
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 154
    :cond_1
    invoke-virtual {v0, v5}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 156
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b028a

    if-ne v0, v1, :cond_3

    .line 157
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/aadhk/restpos/f/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090195

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/eq;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 159
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->o:Lcom/aadhk/restpos/e/f;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->k:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getEmail()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/eq;->n:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v3, p0, Lcom/aadhk/restpos/d/eq;->m:Ljava/util/List;

    iget-object v5, p0, Lcom/aadhk/restpos/d/eq;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/aadhk/restpos/d/eq;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/aadhk/restpos/d/eq;->p:Ljava/lang/String;

    iget-object v8, p0, Lcom/aadhk/restpos/d/eq;->q:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/aadhk/restpos/e/f;->a(Ljava/lang/String;Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0019

    if-ne v0, v1, :cond_4

    .line 161
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportListActivity;->finish()V

    goto :goto_0

    .line 162
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0299

    if-ne v0, v1, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/aadhk/restpos/d/eq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->c:Lcom/aadhk/restpos/ReportListActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->r:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aadhk/restpos/d/eq;->k:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Company;->getEmail()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/eq;->k:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Company;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/eq;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/f/k;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
