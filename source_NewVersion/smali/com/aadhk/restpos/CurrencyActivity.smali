.class public Lcom/aadhk/restpos/CurrencyActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/product/library/bean/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/widget/ListView;

.field private m:Lcom/aadhk/restpos/b/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/CurrencyActivity;)Lcom/aadhk/restpos/b/d;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->m:Lcom/aadhk/restpos/b/d;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->m:Lcom/aadhk/restpos/b/d;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/d;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->a:Ljava/util/List;

    .line 126
    const v0, 0x7f0b012a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/CurrencyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    iget-object v1, p0, Lcom/aadhk/restpos/CurrencyActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 128
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->l:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/a/c;

    iget-object v2, p0, Lcom/aadhk/restpos/CurrencyActivity;->a:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/a/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/aadhk/restpos/CurrencyActivity;Lcom/aadhk/product/library/bean/Currency;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->m:Lcom/aadhk/restpos/b/d;

    invoke-virtual {p1}, Lcom/aadhk/product/library/bean/Currency;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/d;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aadhk/restpos/CurrencyActivity;->a()V

    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/CurrencyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/aadhk/restpos/CurrencyActivity;->a()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f090068

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/CurrencyActivity;->setTitle(I)V

    .line 38
    const v0, 0x7f030096

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/CurrencyActivity;->setContentView(I)V

    .line 40
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/aadhk/restpos/b/d;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/d;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/CurrencyActivity;->m:Lcom/aadhk/restpos/b/d;

    .line 42
    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/CurrencyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->l:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 43
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/aadhk/restpos/CurrencyActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 48
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 138
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 139
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
    .line 111
    iget-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/product/library/bean/Currency;

    .line 112
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 113
    const-string v2, "currency"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/aadhk/restpos/CurrencyActivity;->setResult(ILandroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Lcom/aadhk/restpos/CurrencyActivity;->finish()V

    .line 116
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/product/library/bean/Currency;

    .line 88
    invoke-virtual {v0}, Lcom/aadhk/product/library/bean/Currency;->a()Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v2, Lcom/aadhk/restpos/c/n;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lcom/aadhk/restpos/c/n;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/bean/Currency;I)V

    .line 90
    const v3, 0x7f090069

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/c/n;->setTitle(I)V

    .line 91
    new-instance v3, Lcom/aadhk/restpos/b;

    invoke-direct {v3, p0, v1}, Lcom/aadhk/restpos/b;-><init>(Lcom/aadhk/restpos/CurrencyActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/c/n;->a(Lcom/aadhk/restpos/c/q;)V

    .line 98
    new-instance v1, Lcom/aadhk/restpos/c;

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/c;-><init>(Lcom/aadhk/restpos/CurrencyActivity;Lcom/aadhk/product/library/bean/Currency;)V

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/c/n;->a(Lcom/aadhk/restpos/c/p;)V

    .line 104
    invoke-virtual {v2}, Lcom/aadhk/restpos/c/n;->show()V

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 53
    const v1, 0x7f0b027f

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 54
    new-instance v1, Lcom/aadhk/restpos/c/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/aadhk/restpos/c/n;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/bean/Currency;I)V

    const v2, 0x7f09006a

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/n;->setTitle(I)V

    new-instance v2, Lcom/aadhk/restpos/a;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/a;-><init>(Lcom/aadhk/restpos/CurrencyActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/n;->a(Lcom/aadhk/restpos/c/o;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/n;->show()V

    .line 57
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onResume()V

    .line 63
    invoke-direct {p0}, Lcom/aadhk/restpos/CurrencyActivity;->a()V

    .line 64
    return-void
.end method
