.class public final Lcom/aadhk/restpos/d/f;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/CustomerActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Lcom/aadhk/restpos/bean/Customer;

.field private l:Lcom/aadhk/restpos/g/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 273
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/f;)Lcom/aadhk/restpos/bean/Customer;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getAddress3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getTel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/f;)Lcom/aadhk/restpos/g/c;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->l:Lcom/aadhk/restpos/g/c;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/aadhk/restpos/bean/Customer;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Customer;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->j:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    invoke-direct {p0}, Lcom/aadhk/restpos/d/f;->a()V

    .line 83
    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/f;)Lcom/aadhk/restpos/CustomerActivity;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->a:Lcom/aadhk/restpos/CustomerActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/f;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/aadhk/restpos/d/f;->b()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->a:Lcom/aadhk/restpos/CustomerActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/CustomerActivity;->c()Lcom/aadhk/restpos/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/f;->l:Lcom/aadhk/restpos/g/c;

    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/aadhk/restpos/d/f;->b()V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->j:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    invoke-direct {p0}, Lcom/aadhk/restpos/d/f;->a()V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/CustomerActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/f;->a:Lcom/aadhk/restpos/CustomerActivity;

    .line 88
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 89
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const v6, 0x7f080085

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 115
    :sswitch_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->c:Landroid/widget/EditText;

    invoke-virtual {p0, v6}, Lcom/aadhk/restpos/d/f;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getId()I

    move-result v0

    if-lez v0, :cond_8

    .line 117
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/i;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/d/i;-><init>(Lcom/aadhk/restpos/d/f;B)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/f;->a:Lcom/aadhk/restpos/CustomerActivity;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 118
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v9}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->d:Landroid/widget/EditText;

    invoke-virtual {p0, v6}, Lcom/aadhk/restpos/d/f;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->e:Landroid/widget/EditText;

    invoke-virtual {p0, v6}, Lcom/aadhk/restpos/d/f;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->g:Landroid/widget/EditText;

    invoke-virtual {p0, v6}, Lcom/aadhk/restpos/d/f;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->a:Lcom/aadhk/restpos/CustomerActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/CustomerActivity;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getId()I

    move-result v7

    iget-object v8, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/Customer;->getId()I

    move-result v8

    if-eq v7, v8, :cond_5

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getTel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->g:Landroid/widget/EditText;

    const v2, 0x7f08032e

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/f;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->h:Landroid/widget/EditText;

    const v2, 0x7f08032f

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/f;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    goto/16 :goto_1

    :cond_7
    iget-object v6, p0, Lcom/aadhk/restpos/d/f;->h:Landroid/widget/EditText;

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/aadhk/restpos/d/f;->f:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v7, v2}, Lcom/aadhk/restpos/bean/Customer;->setName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/Customer;->setAddress1(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v2, v4}, Lcom/aadhk/restpos/bean/Customer;->setAddress2(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v2, v6}, Lcom/aadhk/restpos/bean/Customer;->setAddress3(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v2, v5}, Lcom/aadhk/restpos/bean/Customer;->setTel(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Customer;->setEmail(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_1

    .line 120
    :cond_8
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/g;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/d/g;-><init>(Lcom/aadhk/restpos/d/f;B)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/f;->a:Lcom/aadhk/restpos/CustomerActivity;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 121
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v9}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 126
    :sswitch_1
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/h;

    iget-object v3, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Customer;->getId()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/aadhk/restpos/d/h;-><init>(Lcom/aadhk/restpos/d/f;I)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/f;->a:Lcom/aadhk/restpos/CustomerActivity;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 127
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v9}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 131
    :sswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->a:Lcom/aadhk/restpos/CustomerActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/CustomerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 134
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 113
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090052 -> :sswitch_2
        0x7f09005a -> :sswitch_0
        0x7f0900dc -> :sswitch_1
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/f;->setHasOptionsMenu(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    const-string v1, "bundleCustomer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    iput-object v0, p0, Lcom/aadhk/restpos/d/f;->k:Lcom/aadhk/restpos/bean/Customer;

    .line 53
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 93
    const v0, 0x7f030078

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/f;->b:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->b:Landroid/view/View;

    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/f;->c:Landroid/widget/EditText;

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->b:Landroid/view/View;

    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/f;->d:Landroid/widget/EditText;

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->b:Landroid/view/View;

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/f;->e:Landroid/widget/EditText;

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->b:Landroid/view/View;

    const v1, 0x7f090056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/f;->f:Landroid/widget/EditText;

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->b:Landroid/view/View;

    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/f;->g:Landroid/widget/EditText;

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->b:Landroid/view/View;

    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/f;->h:Landroid/widget/EditText;

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->c:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/aadhk/product/library/c/j;

    invoke-direct {v2}, Lcom/aadhk/product/library/c/j;-><init>()V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->b:Landroid/view/View;

    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/f;->i:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->b:Landroid/view/View;

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/f;->j:Landroid/widget/Button;

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->b:Landroid/view/View;

    return-object v0
.end method
