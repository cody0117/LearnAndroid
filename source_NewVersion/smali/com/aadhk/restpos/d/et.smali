.class abstract Lcom/aadhk/restpos/d/et;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Lcom/aadhk/restpos/ReportActivity;

.field protected g:Landroid/view/View;

.field protected h:Landroid/widget/ListView;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/TextView;

.field protected k:Ljava/lang/String;

.field protected l:I

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:I

.field protected p:Landroid/content/res/Resources;

.field protected q:Lcom/aadhk/restpos/bean/Company;

.field protected r:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/d/et;->f:Lcom/aadhk/restpos/ReportActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportActivity;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/et;->r:Landroid/database/sqlite/SQLiteDatabase;

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/d/et;->f:Lcom/aadhk/restpos/ReportActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportActivity;->c()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/et;->o:I

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/d/et;->f:Lcom/aadhk/restpos/ReportActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportActivity;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/et;->n:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/ReportActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/et;->f:Lcom/aadhk/restpos/ReportActivity;

    .line 100
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/et;->setHasOptionsMenu(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/et;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    const-string v1, "fromDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/et;->a:Ljava/lang/String;

    .line 50
    const-string v1, "toDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/et;->b:Ljava/lang/String;

    .line 51
    const-string v1, "reportTitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/et;->n:Ljava/lang/String;

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/et;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/et;->p:Landroid/content/res/Resources;

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/d/et;->f:Lcom/aadhk/restpos/ReportActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/et;->q:Lcom/aadhk/restpos/bean/Company;

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/et;->q:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/et;->k:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/d/et;->q:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/et;->l:I

    .line 59
    new-instance v0, Lcom/aadhk/restpos/f/l;

    iget-object v1, p0, Lcom/aadhk/restpos/d/et;->f:Lcom/aadhk/restpos/ReportActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    .line 60
    iget-object v1, p0, Lcom/aadhk/restpos/d/et;->q:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTimeIn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/et;->c:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/aadhk/restpos/d/et;->q:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTimeOut()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/et;->d:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/et;->m:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    const v0, 0x7f0300b3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/et;->g:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/d/et;->g:Landroid/view/View;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/et;->h:Landroid/widget/ListView;

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/d/et;->g:Landroid/view/View;

    const v1, 0x7f0b012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/et;->i:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/et;->g:Landroid/view/View;

    const v1, 0x7f0b0118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/et;->j:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/d/et;->g:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b028a

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/et;->a()V

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
