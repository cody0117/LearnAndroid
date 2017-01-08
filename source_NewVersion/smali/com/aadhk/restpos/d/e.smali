.class public final Lcom/aadhk/restpos/d/e;
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

.field private f:Lcom/aadhk/restpos/d/i;

.field private g:Landroid/widget/EditText;

.field private h:Lcom/aadhk/restpos/b/e;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ListView;

.field private l:Ljava/lang/String;

.field private m:Landroid/view/LayoutInflater;

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/aadhk/restpos/d/e;->n:I

    .line 129
    new-instance v0, Lcom/aadhk/restpos/d/f;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/f;-><init>(Lcom/aadhk/restpos/d/e;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/e;->a:Landroid/widget/AdapterView$OnItemClickListener;

    .line 142
    new-instance v0, Lcom/aadhk/restpos/d/g;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/g;-><init>(Lcom/aadhk/restpos/d/e;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/e;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 151
    new-instance v0, Lcom/aadhk/restpos/d/h;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/h;-><init>(Lcom/aadhk/restpos/d/e;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/e;->c:Landroid/view/View$OnClickListener;

    .line 158
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/e;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/aadhk/restpos/d/e;->n:I

    return p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/e;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/e;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/aadhk/restpos/d/e;->e:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->h:Lcom/aadhk/restpos/b/e;

    iget-object v1, p0, Lcom/aadhk/restpos/d/e;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/e;->e:Ljava/util/List;

    .line 109
    new-instance v0, Lcom/aadhk/restpos/d/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/d/i;-><init>(Lcom/aadhk/restpos/d/e;B)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/e;->f:Lcom/aadhk/restpos/d/i;

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/e;->f:Lcom/aadhk/restpos/d/i;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/e;)Lcom/aadhk/restpos/CustomerActivity;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->d:Lcom/aadhk/restpos/CustomerActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/e;)Lcom/aadhk/restpos/d/i;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->f:Lcom/aadhk/restpos/d/i;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/e;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/e;)Lcom/aadhk/restpos/b/e;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->h:Lcom/aadhk/restpos/b/e;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/e;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->m:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/e;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/aadhk/restpos/d/e;->n:I

    return v0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/aadhk/restpos/d/e;->n:I

    .line 116
    invoke-direct {p0}, Lcom/aadhk/restpos/d/e;->a()V

    .line 117
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/aadhk/restpos/b/e;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/e;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/e;->h:Lcom/aadhk/restpos/b/e;

    .line 65
    const-string v0, "contextPay"

    iget-object v1, p0, Lcom/aadhk/restpos/d/e;->d:Lcom/aadhk/restpos/CustomerActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/CustomerActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/e;->a:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    :goto_0
    invoke-direct {p0}, Lcom/aadhk/restpos/d/e;->a()V

    .line 71
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/e;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/CustomerActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/e;->d:Lcom/aadhk/restpos/CustomerActivity;

    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 94
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->d:Lcom/aadhk/restpos/CustomerActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/e;->m:Landroid/view/LayoutInflater;

    .line 58
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    const v0, 0x7f0f0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 76
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 77
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    const v0, 0x7f030062

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/e;->j:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->j:Landroid/view/View;

    const v1, 0x7f0b0139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/e;->i:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->j:Landroid/view/View;

    const v1, 0x7f0b013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/e;->k:Landroid/widget/ListView;

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->j:Landroid/view/View;

    const v1, 0x7f0b0138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/e;->g:Landroid/widget/EditText;

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/e;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->j:Landroid/view/View;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 220
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 221
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b027f

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->d:Lcom/aadhk/restpos/CustomerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/CustomerActivity;->a(Lcom/aadhk/restpos/bean/Customer;)V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/aadhk/restpos/d/e;->n:I

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->f:Lcom/aadhk/restpos/d/i;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/i;->notifyDataSetChanged()V

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/d/e;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/e;->l:Ljava/lang/String;

    .line 127
    return-void
.end method
