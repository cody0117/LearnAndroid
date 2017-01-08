.class public Lcom/aadhk/restpos/PaymentMethodActivity;
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
            "Lcom/aadhk/restpos/bean/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/widget/ListView;

.field private m:Lcom/aadhk/restpos/b/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/PaymentMethodActivity;)Lcom/aadhk/restpos/b/p;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentMethodActivity;->m:Lcom/aadhk/restpos/b/p;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentMethodActivity;->m:Lcom/aadhk/restpos/b/p;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/p;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentMethodActivity;->a:Ljava/util/List;

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentMethodActivity;->l:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/a/au;

    iget-object v2, p0, Lcom/aadhk/restpos/PaymentMethodActivity;->a:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/a/au;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    const v0, 0x7f0b012a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PaymentMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentMethodActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 120
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f030096

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PaymentMethodActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f090276

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PaymentMethodActivity;->setTitle(I)V

    .line 40
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/aadhk/restpos/b/p;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/p;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/PaymentMethodActivity;->m:Lcom/aadhk/restpos/b/p;

    .line 43
    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PaymentMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentMethodActivity;->l:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/aadhk/restpos/PaymentMethodActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 44
    invoke-virtual {p0}, Lcom/aadhk/restpos/PaymentMethodActivity;->a()V

    .line 45
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/aadhk/restpos/PaymentMethodActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 50
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 135
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 136
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
    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentMethodActivity;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/PaymentMethod;

    .line 129
    new-instance v1, Lcom/aadhk/restpos/c/bi;

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/c/bi;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/PaymentMethod;)V

    const v2, 0x7f090278

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/bi;->setTitle(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bi;->b()V

    new-instance v2, Lcom/aadhk/restpos/bh;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/bh;-><init>(Lcom/aadhk/restpos/PaymentMethodActivity;Lcom/aadhk/restpos/c/bi;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/bi;->a(Lcom/aadhk/product/library/b/f;)V

    new-instance v2, Lcom/aadhk/restpos/bi;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/bi;-><init>(Lcom/aadhk/restpos/PaymentMethodActivity;Lcom/aadhk/restpos/bean/PaymentMethod;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/bi;->a(Lcom/aadhk/product/library/b/g;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bi;->show()V

    .line 130
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b027f

    if-ne v0, v1, :cond_0

    .line 56
    new-instance v0, Lcom/aadhk/restpos/c/bi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/c/bi;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/PaymentMethod;)V

    const v1, 0x7f090279

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bi;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/bk;

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/bk;-><init>(Lcom/aadhk/restpos/PaymentMethodActivity;Lcom/aadhk/restpos/c/bi;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bi;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bi;->show()V

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
