.class public final Lcom/aadhk/restpos/d/j;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field a:Landroid/widget/AdapterView$OnItemClickListener;

.field b:Landroid/widget/AdapterView$OnItemClickListener;

.field c:Landroid/view/View$OnClickListener;

.field private d:Lcom/aadhk/restpos/CustomerActivity;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Customer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Customer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/aadhk/restpos/d/n;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ListView;

.field private l:Ljava/lang/String;

.field private m:Landroid/view/LayoutInflater;

.field private n:I

.field private o:Lcom/aadhk/restpos/g/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/aadhk/restpos/d/j;->n:I

    .line 156
    new-instance v0, Lcom/aadhk/restpos/d/k;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/k;-><init>(Lcom/aadhk/restpos/d/j;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/j;->a:Landroid/widget/AdapterView$OnItemClickListener;

    .line 167
    new-instance v0, Lcom/aadhk/restpos/d/l;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/l;-><init>(Lcom/aadhk/restpos/d/j;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/j;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 176
    new-instance v0, Lcom/aadhk/restpos/d/m;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/m;-><init>(Lcom/aadhk/restpos/d/j;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/j;->c:Landroid/view/View$OnClickListener;

    .line 255
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/j;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/aadhk/restpos/d/j;->n:I

    return p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/aadhk/restpos/d/j;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/j;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/j;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/aadhk/restpos/d/j;->e:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/aadhk/restpos/d/j;->n:I

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/j;->f:Ljava/util/List;

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/aadhk/restpos/d/j;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->d:Lcom/aadhk/restpos/CustomerActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/j;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/CustomerActivity;->a(Ljava/util/List;)V

    .line 125
    new-instance v0, Lcom/aadhk/restpos/d/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/d/n;-><init>(Lcom/aadhk/restpos/d/j;B)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/j;->g:Lcom/aadhk/restpos/d/n;

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/j;->g:Lcom/aadhk/restpos/d/n;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/j;)Lcom/aadhk/restpos/CustomerActivity;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->d:Lcom/aadhk/restpos/CustomerActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/j;)Lcom/aadhk/restpos/d/n;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->g:Lcom/aadhk/restpos/d/n;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/j;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/j;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/j;)V
    .locals 4
    .parameter

    .prologue
    .line 45
    const-string v0, ""

    iget-object v1, p0, Lcom/aadhk/restpos/d/j;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getTel()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/j;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/aadhk/restpos/d/j;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->g:Lcom/aadhk/restpos/d/n;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/n;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/j;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->m:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/j;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/aadhk/restpos/d/j;->n:I

    return v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/d/j;)Lcom/aadhk/restpos/g/c;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->o:Lcom/aadhk/restpos/g/c;

    return-object v0
.end method

.method static synthetic j(Lcom/aadhk/restpos/d/j;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/aadhk/restpos/d/j;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Customer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    iput-object p1, p0, Lcom/aadhk/restpos/d/j;->e:Ljava/util/List;

    .line 117
    invoke-direct {p0}, Lcom/aadhk/restpos/d/j;->a()V

    .line 118
    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->d:Lcom/aadhk/restpos/CustomerActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/CustomerActivity;->c()Lcom/aadhk/restpos/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/j;->o:Lcom/aadhk/restpos/g/c;

    .line 71
    const-string v0, "contextPay"

    iget-object v1, p0, Lcom/aadhk/restpos/d/j;->d:Lcom/aadhk/restpos/CustomerActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/CustomerActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/j;->a:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    :goto_0
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/p;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/p;-><init>(Lcom/aadhk/restpos/d/j;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/j;->d:Lcom/aadhk/restpos/CustomerActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 78
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/j;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/CustomerActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/j;->d:Lcom/aadhk/restpos/CustomerActivity;

    .line 101
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 102
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/j;->setHasOptionsMenu(Z)V

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->d:Lcom/aadhk/restpos/CustomerActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/j;->m:Landroid/view/LayoutInflater;

    .line 65
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    const v0, 0x7f0f0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 84
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 85
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    const v0, 0x7f030077

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/j;->j:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->j:Landroid/view/View;

    const v1, 0x7f09017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/j;->i:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->j:Landroid/view/View;

    const v1, 0x7f09017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/j;->k:Landroid/widget/ListView;

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->j:Landroid/view/View;

    const v1, 0x7f09017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/j;->h:Landroid/widget/EditText;

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/j;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->j:Landroid/view/View;

    return-object v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090301

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->d:Lcom/aadhk/restpos/CustomerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/CustomerActivity;->a(Lcom/aadhk/restpos/bean/Customer;)V

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/aadhk/restpos/d/j;->n:I

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->g:Lcom/aadhk/restpos/d/n;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/n;->notifyDataSetChanged()V

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/j;->l:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    const-string v0, ""

    iget-object v1, p0, Lcom/aadhk/restpos/d/j;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/aadhk/restpos/d/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->g:Lcom/aadhk/restpos/d/n;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/n;->notifyDataSetChanged()V

    .line 154
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->l:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/d/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    .line 147
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getTel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 148
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    iget-object v3, p0, Lcom/aadhk/restpos/d/j;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
