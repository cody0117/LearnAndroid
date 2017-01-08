.class public final Lcom/aadhk/restpos/d/ek;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/ReportListActivity;

.field private b:Landroid/widget/ListView;

.field private c:[Ljava/lang/String;

.field private d:Lcom/aadhk/restpos/f/l;

.field private e:Landroid/database/sqlite/SQLiteDatabase;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/Button;

.field private k:Landroid/view/View;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:[Ljava/lang/String;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Report;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/aadhk/restpos/b/s;

.field private u:Lcom/aadhk/restpos/b/n;

.field private v:Lcom/aadhk/restpos/b/j;

.field private w:Lcom/aadhk/restpos/bean/Company;

.field private x:[Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_report_end_day"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_report_staff_sales"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_report_cb_pay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pref_report_cb_Statistics"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pref_report_cb_item_amt"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pref_report_cb_item_qty"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_report_cb_item"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_report_cb_cancel_item"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_report_cb_modifier"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->r:[Ljava/lang/String;

    .line 156
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ek;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/aadhk/restpos/d/ek;->p:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->s:Ljava/util/List;

    .line 280
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->x:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->t:Lcom/aadhk/restpos/b/s;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/ek;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/ek;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aadhk/restpos/d/ek;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/ek;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/aadhk/restpos/b/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->x:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->t:Lcom/aadhk/restpos/b/s;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/ek;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/ek;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aadhk/restpos/d/ek;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/ek;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/aadhk/restpos/b/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->x:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->t:Lcom/aadhk/restpos/b/s;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/ek;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/ek;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aadhk/restpos/d/ek;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/ek;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/aadhk/restpos/b/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->x:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->t:Lcom/aadhk/restpos/b/s;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/ek;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/ek;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aadhk/restpos/d/ek;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/ek;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/aadhk/restpos/b/s;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->x:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_4

    .line 297
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->u:Lcom/aadhk/restpos/b/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/ek;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/ek;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "amt desc"

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/b/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 298
    invoke-static {v0}, Lcom/aadhk/restpos/d/ek;->a(Ljava/util/List;)V

    .line 299
    new-instance v1, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 300
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Report;->setId(I)V

    .line 301
    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->c:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Report;->setName(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 303
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->x:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_5

    .line 307
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->u:Lcom/aadhk/restpos/b/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/ek;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/ek;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "qty desc"

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/b/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 308
    invoke-static {v0}, Lcom/aadhk/restpos/d/ek;->b(Ljava/util/List;)V

    .line 309
    new-instance v1, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 310
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Report;->setId(I)V

    .line 311
    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->c:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Report;->setName(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 313
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->x:[Z

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_6

    .line 317
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->u:Lcom/aadhk/restpos/b/n;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/ek;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/ek;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/ek;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/ek;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/aadhk/restpos/b/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 318
    new-instance v1, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 319
    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->c:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Report;->setName(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 321
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->x:[Z

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7

    .line 325
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->u:Lcom/aadhk/restpos/b/n;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/ek;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/ek;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/ek;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/ek;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/aadhk/restpos/b/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 326
    new-instance v1, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 327
    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->c:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Report;->setName(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 329
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->x:[Z

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_8

    .line 333
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->v:Lcom/aadhk/restpos/b/j;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/ek;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/ek;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/ek;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/ek;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/b/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 334
    new-instance v1, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 335
    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->c:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Report;->setName(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 337
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->s:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/ek;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/ek;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/ek;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/ek;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/ReportListActivity;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method private static a(ILjava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ReportItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 388
    add-int/lit8 p0, p0, -0x1

    .line 389
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getPercentage()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/ReportItem;->setPercentage(I)V

    .line 390
    if-nez p0, :cond_1

    .line 391
    :cond_2
    if-gtz p0, :cond_0

    .line 395
    return-void
.end method

.method private a(Landroid/widget/EditText;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 217
    new-instance v0, Lcom/aadhk/restpos/c/j;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    new-instance v1, Lcom/aadhk/restpos/d/el;

    invoke-direct {v1, p0, p1, p2}, Lcom/aadhk/restpos/d/el;-><init>(Lcom/aadhk/restpos/d/ek;Landroid/widget/EditText;I)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/j;->a(Lcom/aadhk/product/library/b/f;)V

    .line 234
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/j;->show()V

    .line 235
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ReportItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 344
    .line 347
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 348
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 349
    int-to-double v4, v1

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v0

    add-double/2addr v0, v4

    double-to-int v0, v0

    move v1, v0

    goto :goto_0

    .line 352
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 353
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    int-to-double v6, v1

    div-double/2addr v4, v6

    double-to-int v4, v4

    .line 354
    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setPercentage(I)V

    .line 355
    add-int/2addr v2, v4

    .line 356
    goto :goto_1

    .line 357
    :cond_1
    rsub-int/lit8 v0, v2, 0x64

    .line 358
    if-lez v0, :cond_2

    .line 359
    invoke-static {v0, p0}, Lcom/aadhk/restpos/d/ek;->a(ILjava/util/List;)V

    .line 362
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ek;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/ek;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/aadhk/restpos/d/ek;->l:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/widget/EditText;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 238
    new-instance v0, Lcom/aadhk/restpos/c/cg;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/cg;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 239
    new-instance v1, Lcom/aadhk/restpos/d/em;

    invoke-direct {v1, p0, p1, p2}, Lcom/aadhk/restpos/d/em;-><init>(Lcom/aadhk/restpos/d/ek;Landroid/widget/EditText;I)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/cg;->a(Lcom/aadhk/product/library/b/f;)V

    .line 254
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/cg;->show()V

    .line 255
    return-void
.end method

.method private static b(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ReportItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 366
    .line 369
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 370
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 371
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 374
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 375
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v1

    .line 376
    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setPercentage(I)V

    .line 377
    add-int/2addr v2, v4

    .line 378
    goto :goto_1

    .line 379
    :cond_1
    rsub-int/lit8 v0, v2, 0x64

    .line 380
    if-lez v0, :cond_2

    .line 381
    invoke-static {v0, p0}, Lcom/aadhk/restpos/d/ek;->a(ILjava/util/List;)V

    .line 384
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/ek;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->r:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/ek;)Lcom/aadhk/restpos/f/l;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->d:Lcom/aadhk/restpos/f/l;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/ek;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/aadhk/restpos/d/ek;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/ek;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/aadhk/restpos/d/ek;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/ek;)[Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->x:[Z

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/ek;)Lcom/aadhk/restpos/ReportListActivity;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/ek;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/aadhk/restpos/d/ek;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/ek;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ek;->a()V

    return-void
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/ek;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->q:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportListActivity;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->e:Landroid/database/sqlite/SQLiteDatabase;

    .line 95
    new-instance v0, Lcom/aadhk/restpos/b/s;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/s;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->t:Lcom/aadhk/restpos/b/s;

    .line 96
    new-instance v0, Lcom/aadhk/restpos/b/n;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/n;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->u:Lcom/aadhk/restpos/b/n;

    .line 97
    new-instance v0, Lcom/aadhk/restpos/b/j;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/j;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->v:Lcom/aadhk/restpos/b/j;

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportListActivity;->n()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->w:Lcom/aadhk/restpos/bean/Company;

    .line 99
    new-instance v0, Lcom/aadhk/restpos/f/l;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->d:Lcom/aadhk/restpos/f/l;

    .line 100
    invoke-static {}, Lcom/aadhk/restpos/f/i;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->p:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->d:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->q:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ek;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->c:[Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->l:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->w:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTimeIn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->m:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->w:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTimeOut()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->o:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->m:Ljava/lang/String;

    invoke-static {}, Lcom/aadhk/restpos/f/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/f/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->l:Ljava/lang/String;

    .line 113
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->r:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->x:[Z

    .line 114
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->r:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->x:[Z

    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->d:Lcom/aadhk/restpos/f/l;

    iget-object v3, p0, Lcom/aadhk/restpos/d/ek;->r:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/f/l;->c(Ljava/lang/String;)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aadhk/restpos/f/i;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->n:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/d/en;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/en;-><init>(Lcom/aadhk/restpos/d/ek;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    iget-boolean v0, v0, Lcom/aadhk/restpos/ReportListActivity;->a:Z

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->j:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ek;->a()V

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/ReportListActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    .line 134
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 135
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 276
    :goto_0
    return-void

    .line 261
    :pswitch_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->f:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/aadhk/restpos/d/ek;->a(Landroid/widget/EditText;I)V

    goto :goto_0

    .line 264
    :pswitch_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->g:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/aadhk/restpos/d/ek;->b(Landroid/widget/EditText;I)V

    goto :goto_0

    .line 267
    :pswitch_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->h:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/aadhk/restpos/d/ek;->a(Landroid/widget/EditText;I)V

    goto :goto_0

    .line 270
    :pswitch_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->i:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/aadhk/restpos/d/ek;->b(Landroid/widget/EditText;I)V

    goto :goto_0

    .line 273
    :pswitch_4
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ek;->a()V

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x7f0b020a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    const v0, 0x7f030084

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->k:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->k:Landroid/view/View;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->b:Landroid/widget/ListView;

    .line 141
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->k:Landroid/view/View;

    const v1, 0x7f0b020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->f:Landroid/widget/EditText;

    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->k:Landroid/view/View;

    const v1, 0x7f0b020b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->g:Landroid/widget/EditText;

    .line 143
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->k:Landroid/view/View;

    const v1, 0x7f0b020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->h:Landroid/widget/EditText;

    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->k:Landroid/view/View;

    const v1, 0x7f0b020d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->i:Landroid/widget/EditText;

    .line 145
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->k:Landroid/view/View;

    const v1, 0x7f0b020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->j:Landroid/widget/Button;

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->k:Landroid/view/View;

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 82
    const v0, 0x7f0b011e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 83
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 84
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->x:[Z

    aput-boolean v0, v1, p3

    .line 86
    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->d:Lcom/aadhk/restpos/f/l;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ek;->r:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2, v0}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;Z)V

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/ReportListActivity;

    iget-boolean v0, v0, Lcom/aadhk/restpos/ReportListActivity;->a:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ek;->a()V

    .line 90
    :cond_0
    return-void

    .line 83
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
