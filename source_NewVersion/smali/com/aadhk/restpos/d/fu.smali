.class public final Lcom/aadhk/restpos/d/fu;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Spinner;

.field private h:Lcom/aadhk/restpos/bean/User;

.field private i:[Ljava/lang/String;

.field private j:[I

.field private k:I

.field private l:Lcom/aadhk/restpos/UserActivity;

.field private m:Lcom/aadhk/restpos/f/l;

.field private n:Lcom/aadhk/restpos/b/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/aadhk/restpos/d/fu;->k:I

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/fu;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/aadhk/restpos/d/fu;->k:I

    return p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/fu;)[I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->j:[I

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/fu;)Lcom/aadhk/restpos/UserActivity;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->l:Lcom/aadhk/restpos/UserActivity;

    return-object v0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/aadhk/restpos/d/fu;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->f:Landroid/widget/TextView;

    const v1, 0x7f09020d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->f:Landroid/widget/TextView;

    const v1, 0x7f09020e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->l:Lcom/aadhk/restpos/UserActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/UserActivity;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/aadhk/restpos/b/x;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/x;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/fu;->n:Lcom/aadhk/restpos/b/x;

    .line 60
    new-instance v0, Lcom/aadhk/restpos/f/l;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fu;->l:Lcom/aadhk/restpos/UserActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/fu;->m:Lcom/aadhk/restpos/f/l;

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->h:Lcom/aadhk/restpos/bean/User;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/aadhk/restpos/bean/User;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/User;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/fu;->h:Lcom/aadhk/restpos/bean/User;

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->h:Lcom/aadhk/restpos/bean/User;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/User;->setRole(I)V

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fu;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fu;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fu;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->g:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fu;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 68
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/UserActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fu;->l:Lcom/aadhk/restpos/UserActivity;

    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 74
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f090055

    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->c:Landroid/widget/EditText;

    invoke-virtual {p0, v5}, Lcom/aadhk/restpos/d/fu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->m:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->m:Lcom/aadhk/restpos/f/l;

    const-string v2, "showDefaultAccount"

    invoke-virtual {v0, v2, v1}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getId()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->n:Lcom/aadhk/restpos/b/x;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fu;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/x;->b(Lcom/aadhk/restpos/bean/User;)V

    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->l:Lcom/aadhk/restpos/UserActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/UserActivity;->b()V

    .line 105
    :cond_1
    :goto_2
    return-void

    .line 94
    :cond_2
    iget-object v2, p0, Lcom/aadhk/restpos/d/fu;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/User;->getId()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/aadhk/restpos/d/fu;->n:Lcom/aadhk/restpos/b/x;

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/b/x;->a(Ljava/lang/String;)Lcom/aadhk/restpos/bean/User;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->c:Landroid/widget/EditText;

    const v2, 0x7f0902db

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/fu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/aadhk/restpos/d/fu;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->d:Landroid/widget/EditText;

    invoke-virtual {p0, v5}, Lcom/aadhk/restpos/d/fu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/aadhk/restpos/d/fu;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->e:Landroid/widget/EditText;

    invoke-virtual {p0, v5}, Lcom/aadhk/restpos/d/fu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/aadhk/restpos/d/fu;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/User;->setAccount(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/User;->setPassword(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->h:Lcom/aadhk/restpos/bean/User;

    iget v2, p0, Lcom/aadhk/restpos/d/fu;->k:I

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/User;->setRole(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->n:Lcom/aadhk/restpos/b/x;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fu;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/x;->a(Lcom/aadhk/restpos/bean/User;)V

    goto :goto_1

    .line 95
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->n:Lcom/aadhk/restpos/b/x;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fu;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/x;->a(I)V

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->l:Lcom/aadhk/restpos/UserActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/UserActivity;->b()V

    goto/16 :goto_2

    .line 98
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->c:Landroid/widget/EditText;

    if-ne p1, v0, :cond_9

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_2

    .line 100
    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->d:Landroid/widget/EditText;

    if-ne p1, v0, :cond_a

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_2

    .line 102
    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->e:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_2
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/fu;->setHasOptionsMenu(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/fu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    const-string v1, "bundleUser"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/User;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fu;->h:Lcom/aadhk/restpos/bean/User;

    .line 54
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 78
    const v0, 0x7f03008c

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 79
    const v0, 0x7f0b0056

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fu;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00c9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fu;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0227

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fu;->f:Landroid/widget/TextView;

    const v0, 0x7f0b0223

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fu;->c:Landroid/widget/EditText;

    const v0, 0x7f0b0225

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fu;->d:Landroid/widget/EditText;

    const v0, 0x7f0b0226

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fu;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->c:Landroid/widget/EditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/aadhk/product/library/c/j;

    invoke-direct {v3}, Lcom/aadhk/product/library/c/j;-><init>()V

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/fu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fu;->i:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/fu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fu;->j:[I

    const v0, 0x7f0b0224

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fu;->g:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->g:Landroid/widget/Spinner;

    new-instance v2, Lcom/aadhk/restpos/a/bf;

    iget-object v3, p0, Lcom/aadhk/restpos/d/fu;->l:Lcom/aadhk/restpos/UserActivity;

    iget-object v4, p0, Lcom/aadhk/restpos/d/fu;->i:[Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/aadhk/restpos/a/bf;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->g:Landroid/widget/Spinner;

    new-instance v2, Lcom/aadhk/restpos/d/fv;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/fv;-><init>(Lcom/aadhk/restpos/d/fu;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/aadhk/restpos/d/fw;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/fw;-><init>(Lcom/aadhk/restpos/d/fu;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 80
    return-object v1
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    return-void
.end method
