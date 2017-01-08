.class public final Lcom/aadhk/restpos/c/ds;
.super Lcom/aadhk/restpos/c/cs;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/ListView;

.field private j:Lcom/aadhk/restpos/c/dt;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Note;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/LinearLayout;

.field private o:Lcom/aadhk/restpos/bean/OrderItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Note;",
            ">;",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    const v0, 0x7f03006f

    invoke-direct {p0, p1, v0}, Lcom/aadhk/restpos/c/cs;-><init>(Landroid/content/Context;I)V

    .line 37
    iput-object p3, p0, Lcom/aadhk/restpos/c/ds;->o:Lcom/aadhk/restpos/bean/OrderItem;

    .line 38
    iput-object p2, p0, Lcom/aadhk/restpos/c/ds;->k:Ljava/util/List;

    .line 40
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ds;->e:Landroid/widget/Button;

    .line 41
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ds;->f:Landroid/widget/Button;

    .line 42
    const v0, 0x7f09010b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ds;->m:Landroid/widget/EditText;

    .line 43
    const v0, 0x7f0900fa

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ds;->l:Landroid/widget/EditText;

    .line 44
    const v0, 0x7f0900f4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ds;->g:Landroid/widget/ImageButton;

    .line 45
    const v0, 0x7f0900f5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ds;->h:Landroid/widget/ImageButton;

    .line 46
    const v0, 0x7f09011f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ds;->n:Landroid/widget/LinearLayout;

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/c/ds;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/c/ds;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/c/ds;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/c/ds;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p3}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/ds;->n:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/ds;->l:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/c/ds;->m:Landroid/widget/EditText;

    invoke-virtual {p3}, Lcom/aadhk/restpos/bean/OrderItem;->getCancelReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v0, 0x7f09016d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ds;->i:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/aadhk/restpos/c/ds;->i:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/ds;->i:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/a/ax;

    iget-object v2, p0, Lcom/aadhk/restpos/c/ds;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/aadhk/restpos/c/ds;->k:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/ax;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/ds;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/dt;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/aadhk/restpos/c/ds;->j:Lcom/aadhk/restpos/c/dt;

    .line 71
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f080085

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 84
    iget-object v2, p0, Lcom/aadhk/restpos/c/ds;->g:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_1

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/c/ds;->l:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->a(Landroid/widget/EditText;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/aadhk/restpos/c/ds;->h:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_2

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/c/ds;->l:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/aadhk/restpos/c/ds;->e:Landroid/widget/Button;

    if-ne p1, v2, :cond_6

    .line 89
    iget-object v2, p0, Lcom/aadhk/restpos/c/ds;->m:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    iget-object v3, p0, Lcom/aadhk/restpos/c/ds;->l:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    iget-object v4, p0, Lcom/aadhk/restpos/c/ds;->o:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v4

    if-le v4, v1, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/aadhk/restpos/c/ds;->l:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/aadhk/restpos/c/ds;->a:Landroid/content/res/Resources;

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/ds;->j:Lcom/aadhk/restpos/c/dt;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/c/ds;->j:Lcom/aadhk/restpos/c/dt;

    invoke-interface {v0, v2, v3}, Lcom/aadhk/restpos/c/dt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ds;->dismiss()V

    goto :goto_0

    .line 91
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/aadhk/restpos/c/ds;->o:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v5

    if-le v4, v5, :cond_4

    iget-object v1, p0, Lcom/aadhk/restpos/c/ds;->l:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/aadhk/restpos/c/ds;->a:Landroid/content/res/Resources;

    const v5, 0x7f080088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/aadhk/restpos/c/ds;->l:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/ds;->m:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/aadhk/restpos/c/ds;->a:Landroid/content/res/Resources;

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/c/ds;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ds;->dismiss()V

    goto/16 :goto_0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 79
    iget-object v1, p0, Lcom/aadhk/restpos/c/ds;->m:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/aadhk/restpos/c/ds;->k:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Note;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Note;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method
