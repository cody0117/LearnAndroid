.class public final Lcom/aadhk/restpos/c/ay;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/GridView;

.field private k:Lcom/aadhk/restpos/c/bb;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/aadhk/restpos/bean/OrderItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/OrderItem;Lcom/aadhk/restpos/g/ad;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    const v0, 0x7f030051

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 38
    iput-object p2, p0, Lcom/aadhk/restpos/c/ay;->m:Lcom/aadhk/restpos/bean/OrderItem;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/ay;->l:Ljava/util/List;

    .line 41
    const v0, 0x7f090121

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ay;->i:Landroid/widget/EditText;

    .line 42
    const v0, 0x7f090122

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ay;->j:Landroid/widget/GridView;

    .line 43
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ay;->f:Landroid/widget/Button;

    .line 44
    const v0, 0x7f090123

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ay;->g:Landroid/widget/Button;

    .line 45
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ay;->h:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->m:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getKitchenNoteGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->m:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getKitchenNoteGroupId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 50
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 51
    iget-object v4, p0, Lcom/aadhk/restpos/c/ay;->l:Ljava/util/List;

    invoke-static {v3}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v3}, Lcom/aadhk/restpos/g/ad;->a(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ay;->m:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->j:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->j:Landroid/widget/GridView;

    new-instance v1, Lcom/aadhk/restpos/c/az;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/c/az;-><init>(Lcom/aadhk/restpos/c/ay;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/ay;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->l:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/bb;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/aadhk/restpos/c/ay;->k:Lcom/aadhk/restpos/c/bb;

    .line 86
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->k:Lcom/aadhk/restpos/c/bb;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->k:Lcom/aadhk/restpos/c/bb;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ay;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/restpos/c/bb;->a(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ay;->dismiss()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->i:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ay;->dismiss()V

    goto :goto_0
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
    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/aadhk/restpos/c/ay;->i:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/c/ay;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->l:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ay;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 102
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/c/ay;->i:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/aadhk/restpos/c/ay;->l:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
