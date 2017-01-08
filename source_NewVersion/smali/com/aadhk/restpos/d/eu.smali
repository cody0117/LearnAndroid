.class public final Lcom/aadhk/restpos/d/eu;
.super Lcom/aadhk/restpos/d/et;
.source "ProGuard"


# instance fields
.field private A:Lcom/aadhk/restpos/e/f;

.field private B:I

.field private C:I

.field s:Lcom/aadhk/product/library/a/b;

.field private t:Lcom/aadhk/restpos/bean/Report;

.field private u:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private v:Lcom/aadhk/restpos/b/s;

.field private w:Lcom/aadhk/restpos/b/x;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/User;",
            ">;"
        }
    .end annotation
.end field

.field private y:[Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/aadhk/restpos/d/et;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/aadhk/restpos/d/eu;->B:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/aadhk/restpos/d/eu;->C:I

    .line 140
    new-instance v0, Lcom/aadhk/restpos/d/ew;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/ew;-><init>(Lcom/aadhk/restpos/d/eu;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/eu;->s:Lcom/aadhk/product/library/a/b;

    .line 209
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/eu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/aadhk/restpos/d/eu;->z:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/eu;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->x:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/eu;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->y:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/eu;)Lcom/aadhk/restpos/bean/Report;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->t:Lcom/aadhk/restpos/bean/Report;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/eu;)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->u:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/eu;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/eu;)Lcom/aadhk/restpos/e/f;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->A:Lcom/aadhk/restpos/e/f;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 9

    .prologue
    .line 165
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->t:Lcom/aadhk/restpos/bean/Report;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/eu;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/eu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->A:Lcom/aadhk/restpos/e/f;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eu;->q:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getEmail()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/eu;->u:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v5, p0, Lcom/aadhk/restpos/d/eu;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/aadhk/restpos/d/eu;->b:Ljava/lang/String;

    invoke-static {}, Lcom/aadhk/product/library/c/c;->c()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/aadhk/restpos/d/eu;->z:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/aadhk/restpos/e/f;->a(Ljava/lang/String;Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->t:Lcom/aadhk/restpos/bean/Report;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getReportItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/d/ex;

    iget-object v2, p0, Lcom/aadhk/restpos/d/eu;->f:Lcom/aadhk/restpos/ReportActivity;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/ex;-><init>(Lcom/aadhk/restpos/d/eu;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    iget v0, p0, Lcom/aadhk/restpos/d/eu;->o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eu;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eu;->e:Ljava/lang/String;

    .line 196
    :cond_0
    :goto_1
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 184
    :cond_2
    iget v0, p0, Lcom/aadhk/restpos/d/eu;->o:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/aadhk/restpos/d/eu;->o:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 185
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/eu;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/eu;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/eu;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/eu;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eu;->e:Ljava/lang/String;

    goto :goto_1

    .line 186
    :cond_4
    iget v0, p0, Lcom/aadhk/restpos/d/eu;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 187
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eu;->e:Ljava/lang/String;

    goto :goto_1

    .line 188
    :cond_5
    iget v0, p0, Lcom/aadhk/restpos/d/eu;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/f/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eu;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method protected final c()V
    .locals 5

    .prologue
    .line 199
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eu;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eu;->b:Ljava/lang/String;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->z:Ljava/lang/String;

    const v1, 0x7f090275

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/eu;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->v:Lcom/aadhk/restpos/b/s;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eu;->f:Lcom/aadhk/restpos/ReportActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/eu;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/eu;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/eu;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/eu;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/b/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eu;->t:Lcom/aadhk/restpos/bean/Report;

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->v:Lcom/aadhk/restpos/b/s;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eu;->f:Lcom/aadhk/restpos/ReportActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/eu;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/eu;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/eu;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/eu;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/eu;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/b/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eu;->t:Lcom/aadhk/restpos/bean/Report;

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/et;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    new-instance v1, Lcom/aadhk/restpos/b/s;

    iget-object v2, p0, Lcom/aadhk/restpos/d/eu;->r:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/b/s;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/eu;->v:Lcom/aadhk/restpos/b/s;

    .line 68
    new-instance v1, Lcom/aadhk/restpos/b/x;

    iget-object v2, p0, Lcom/aadhk/restpos/d/eu;->r:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/b/x;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/eu;->w:Lcom/aadhk/restpos/b/x;

    .line 69
    iget-object v1, p0, Lcom/aadhk/restpos/d/eu;->w:Lcom/aadhk/restpos/b/x;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/x;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/eu;->x:Ljava/util/List;

    .line 70
    new-instance v1, Lcom/aadhk/restpos/b/r;

    iget-object v2, p0, Lcom/aadhk/restpos/d/eu;->r:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/b/r;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/b/r;->b(I)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/eu;->u:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 72
    iget-object v2, p0, Lcom/aadhk/restpos/d/eu;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const v1, 0x7f090275

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/eu;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/aadhk/restpos/d/eu;->y:[Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/eu;->c()V

    .line 75
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/eu;->b()V

    .line 76
    return-void
.end method

.method public final bridge synthetic onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/et;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/et;->onCreate(Landroid/os/Bundle;)V

    .line 60
    new-instance v0, Lcom/aadhk/restpos/e/f;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eu;->f:Lcom/aadhk/restpos/ReportActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/e/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/eu;->A:Lcom/aadhk/restpos/e/f;

    .line 61
    const v0, 0x7f090275

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/eu;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eu;->z:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 89
    invoke-super {p0, p1, p2}, Lcom/aadhk/restpos/d/et;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 90
    iget v0, p0, Lcom/aadhk/restpos/d/eu;->C:I

    const v1, 0x7f0901b9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 91
    const v1, 0x7f0200d5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 92
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 94
    iget v0, p0, Lcom/aadhk/restpos/d/eu;->B:I

    const v1, 0x7f0901b8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 95
    const v1, 0x7f0200cf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 96
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 97
    return-void
.end method

.method public final bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/aadhk/restpos/d/et;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget v2, p0, Lcom/aadhk/restpos/d/eu;->B:I

    if-ne v1, v2, :cond_1

    .line 102
    new-instance v1, Lcom/aadhk/product/library/a/a;

    iget-object v2, p0, Lcom/aadhk/restpos/d/eu;->f:Lcom/aadhk/restpos/ReportActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/eu;->s:Lcom/aadhk/product/library/a/b;

    iget-object v4, p0, Lcom/aadhk/restpos/d/eu;->p:Landroid/content/res/Resources;

    const v5, 0x7f090177

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v6}, Lcom/aadhk/product/library/a/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-virtual {v1, v6}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 104
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget v2, p0, Lcom/aadhk/restpos/d/eu;->C:I

    if-ne v1, v2, :cond_2

    .line 105
    new-instance v1, Lcom/aadhk/product/library/b/a;

    iget-object v2, p0, Lcom/aadhk/restpos/d/eu;->f:Lcom/aadhk/restpos/ReportActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/eu;->y:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/product/library/b/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/aadhk/product/library/b/a;->a()V

    new-instance v2, Lcom/aadhk/restpos/d/ev;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/ev;-><init>(Lcom/aadhk/restpos/d/eu;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/product/library/b/a;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v1}, Lcom/aadhk/product/library/b/a;->show()V

    goto :goto_0

    .line 108
    :cond_2
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/et;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
