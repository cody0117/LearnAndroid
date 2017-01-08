.class public final Lcom/aadhk/restpos/d/kk;
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

.field private i:Lcom/aadhk/restpos/bean/User;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/User;",
            ">;"
        }
    .end annotation
.end field

.field private k:[Ljava/lang/String;

.field private l:[I

.field private m:I

.field private n:Lcom/aadhk/restpos/UserActivity;

.field private o:Lcom/aadhk/restpos/util/r;

.field private p:Lcom/aadhk/restpos/g/ae;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/aadhk/restpos/d/kk;->m:I

    .line 349
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/kk;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/aadhk/restpos/d/kk;->m:I

    return p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/aadhk/restpos/bean/User;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/User;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/User;->setRole(I)V

    .line 82
    invoke-direct {p0}, Lcom/aadhk/restpos/d/kk;->c()V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/kk;)[I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->l:[I

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/kk;)Lcom/aadhk/restpos/UserActivity;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->n:Lcom/aadhk/restpos/UserActivity;

    return-object v0
.end method

.method private b()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 107
    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/User;

    .line 109
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 110
    add-int/lit8 v0, v1, 0x1

    .line 111
    if-le v0, v3, :cond_2

    move v2, v3

    .line 116
    :cond_0
    return v2

    :cond_1
    move v0, v1

    :cond_2
    move v1, v0

    .line 112
    goto :goto_0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/kk;)Lcom/aadhk/restpos/g/ae;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->p:Lcom/aadhk/restpos/g/ae;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->g:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 222
    return-void
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/kk;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/aadhk/restpos/d/kk;->a()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/aadhk/restpos/d/kk;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->f:Landroid/widget/TextView;

    const v1, 0x7f080253

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->f:Landroid/widget/TextView;

    const v1, 0x7f080254

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
    .line 281
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->n:Lcom/aadhk/restpos/UserActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/UserActivity;->a()Lcom/aadhk/restpos/g/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/kk;->p:Lcom/aadhk/restpos/g/ae;

    .line 68
    new-instance v0, Lcom/aadhk/restpos/util/r;

    iget-object v1, p0, Lcom/aadhk/restpos/d/kk;->n:Lcom/aadhk/restpos/UserActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/kk;->o:Lcom/aadhk/restpos/util/r;

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->n:Lcom/aadhk/restpos/UserActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/UserActivity;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/kk;->j:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->i:Lcom/aadhk/restpos/bean/User;

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/aadhk/restpos/d/kk;->a()V

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->i:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->clone()Lcom/aadhk/restpos/bean/User;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 75
    invoke-direct {p0}, Lcom/aadhk/restpos/d/kk;->c()V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/UserActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/kk;->n:Lcom/aadhk/restpos/UserActivity;

    .line 88
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 89
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f08025e

    const v8, 0x7f080085

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_e

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->c:Landroid/widget/EditText;

    invoke-virtual {p0, v8}, Lcom/aadhk/restpos/d/kk;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->o:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->o:Lcom/aadhk/restpos/util/r;

    const-string v3, "showDefaultAccount"

    invoke-virtual {v0, v3, v1}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getId()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v0

    if-ne v0, v2, :cond_a

    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/kp;

    iget-object v3, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    invoke-direct {v2, p0, v3}, Lcom/aadhk/restpos/d/kp;-><init>(Lcom/aadhk/restpos/d/kk;Lcom/aadhk/restpos/bean/User;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/kk;->n:Lcom/aadhk/restpos/UserActivity;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v7}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    :cond_1
    :goto_1
    return-void

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getId()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->c:Landroid/widget/EditText;

    const v3, 0x7f080339

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/kk;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->d:Landroid/widget/EditText;

    invoke-virtual {p0, v9}, Lcom/aadhk/restpos/d/kk;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->d:Landroid/widget/EditText;

    invoke-virtual {p0, v9}, Lcom/aadhk/restpos/d/kk;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto/16 :goto_0

    :cond_7
    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->d:Landroid/widget/EditText;

    invoke-virtual {p0, v8}, Lcom/aadhk/restpos/d/kk;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->e:Landroid/widget/EditText;

    invoke-virtual {p0, v8}, Lcom/aadhk/restpos/d/kk;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0, v3}, Lcom/aadhk/restpos/bean/User;->setAccount(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/bean/User;->setPassword(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    iget v3, p0, Lcom/aadhk/restpos/d/kk;->m:I

    invoke-virtual {v0, v3}, Lcom/aadhk/restpos/bean/User;->setRole(I)V

    move v0, v2

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/aadhk/restpos/d/kk;->b()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v0

    if-eq v0, v2, :cond_c

    :cond_b
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/kp;

    iget-object v3, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    invoke-direct {v2, p0, v3}, Lcom/aadhk/restpos/d/kp;-><init>(Lcom/aadhk/restpos/d/kk;Lcom/aadhk/restpos/bean/User;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/kk;->n:Lcom/aadhk/restpos/UserActivity;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v7}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    :cond_c
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/kk;->n:Lcom/aadhk/restpos/UserActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08033a

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->n:Lcom/aadhk/restpos/UserActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/UserActivity;->c()V

    goto/16 :goto_1

    :cond_d
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/kn;

    iget-object v3, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    invoke-direct {v2, p0, v3}, Lcom/aadhk/restpos/d/kn;-><init>(Lcom/aadhk/restpos/d/kk;Lcom/aadhk/restpos/bean/User;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/kk;->n:Lcom/aadhk/restpos/UserActivity;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v7}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 124
    :cond_e
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v0

    if-ne v0, v2, :cond_10

    .line 127
    invoke-direct {p0}, Lcom/aadhk/restpos/d/kk;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 128
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/ko;

    iget-object v3, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/User;->getId()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/aadhk/restpos/d/ko;-><init>(Lcom/aadhk/restpos/d/kk;I)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/kk;->n:Lcom/aadhk/restpos/UserActivity;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 129
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v7}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 131
    :cond_f
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/kk;->n:Lcom/aadhk/restpos/UserActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 132
    const v1, 0x7f08033b

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 133
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto/16 :goto_1

    .line 136
    :cond_10
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/ko;

    iget-object v3, p0, Lcom/aadhk/restpos/d/kk;->h:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/User;->getId()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/aadhk/restpos/d/ko;-><init>(Lcom/aadhk/restpos/d/kk;I)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/kk;->n:Lcom/aadhk/restpos/UserActivity;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 137
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v7}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/kk;->setHasOptionsMenu(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/kk;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    const-string v1, "bundleUser"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/User;

    iput-object v0, p0, Lcom/aadhk/restpos/d/kk;->i:Lcom/aadhk/restpos/bean/User;

    .line 62
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

    .line 93
    const v0, 0x7f0300a9

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 94
    const v0, 0x7f09005a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/kk;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900dc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/kk;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09028e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/kk;->f:Landroid/widget/TextView;

    const v0, 0x7f09028a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/kk;->c:Landroid/widget/EditText;

    const v0, 0x7f09028c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/kk;->d:Landroid/widget/EditText;

    const v0, 0x7f09028d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/kk;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->c:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/aadhk/product/library/c/j;

    invoke-direct {v3}, Lcom/aadhk/product/library/c/j;-><init>()V

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/kk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/kk;->k:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/kk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/kk;->l:[I

    const v0, 0x7f09028b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/aadhk/restpos/d/kk;->g:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->g:Landroid/widget/Spinner;

    new-instance v2, Lcom/aadhk/restpos/a/bn;

    iget-object v3, p0, Lcom/aadhk/restpos/d/kk;->n:Lcom/aadhk/restpos/UserActivity;

    iget-object v4, p0, Lcom/aadhk/restpos/d/kk;->k:[Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/aadhk/restpos/a/bn;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->g:Landroid/widget/Spinner;

    new-instance v2, Lcom/aadhk/restpos/d/kl;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/kl;-><init>(Lcom/aadhk/restpos/d/kk;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/kk;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/aadhk/restpos/d/km;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/km;-><init>(Lcom/aadhk/restpos/d/kk;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 95
    return-object v1
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    return-void
.end method
