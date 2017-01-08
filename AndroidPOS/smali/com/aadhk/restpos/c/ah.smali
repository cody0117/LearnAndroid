.class public final Lcom/aadhk/restpos/c/ah;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/Spinner;

.field private k:Ljava/lang/CharSequence;

.field private l:Landroid/view/LayoutInflater;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/TableGroup;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/aadhk/restpos/bean/Table;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Table;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aadhk/restpos/bean/Table;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/TableGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 34
    const v0, 0x7f030045

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 35
    iput-object p2, p0, Lcom/aadhk/restpos/c/ah;->n:Lcom/aadhk/restpos/bean/Table;

    .line 36
    iput-object p3, p0, Lcom/aadhk/restpos/c/ah;->m:Ljava/util/List;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/ah;->l:Landroid/view/LayoutInflater;

    .line 39
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ah;->f:Landroid/widget/Button;

    .line 40
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ah;->g:Landroid/widget/Button;

    .line 42
    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ah;->i:Landroid/widget/EditText;

    .line 43
    const v0, 0x7f09007d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ah;->j:Landroid/widget/Spinner;

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->j:Landroid/widget/Spinner;

    new-instance v2, Lcom/aadhk/restpos/c/ai;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/c/ai;-><init>(Lcom/aadhk/restpos/c/ah;B)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 47
    const v0, 0x7f09007c

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->n:Lcom/aadhk/restpos/bean/Table;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/ah;->n:Lcom/aadhk/restpos/bean/Table;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 55
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/TableGroup;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/TableGroup;->getTableGroupId()I

    move-result v0

    iget-object v2, p0, Lcom/aadhk/restpos/c/ah;->n:Lcom/aadhk/restpos/bean/Table;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Table;->getTableGroupId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->j:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 54
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/bean/Table;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Table;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/ah;->n:Lcom/aadhk/restpos/bean/Table;

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->c:Landroid/content/res/Resources;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/ah;->k:Ljava/lang/CharSequence;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/ah;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/ah;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->l:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 66
    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ah;->h:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 82
    const-string v0, ""

    iget-object v1, p0, Lcom/aadhk/restpos/c/ah;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ah;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->n:Lcom/aadhk/restpos/bean/Table;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ah;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Table;->setName(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/aadhk/restpos/c/ah;->n:Lcom/aadhk/restpos/bean/Table;

    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->m:Ljava/util/List;

    iget-object v2, p0, Lcom/aadhk/restpos/c/ah;->j:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/TableGroup;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/TableGroup;->getTableGroupId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Table;->setTableGroupId(I)V

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ah;->n:Lcom/aadhk/restpos/bean/Table;

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ah;->dismiss()V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ah;->dismiss()V

    goto :goto_0

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/c/ah;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 95
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ah;->dismiss()V

    goto :goto_0
.end method
