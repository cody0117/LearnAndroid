.class public final Lcom/aadhk/restpos/c/bl;
.super Lcom/aadhk/restpos/c/cs;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/EditText;

.field private h:Ljava/lang/String;

.field private i:Lcom/aadhk/restpos/c/bm;

.field private j:Ljava/lang/String;

.field private k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    const v0, 0x7f030055

    invoke-direct {p0, p1, v0}, Lcom/aadhk/restpos/c/cs;-><init>(Landroid/content/Context;I)V

    .line 32
    const v0, 0x7f08012d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bl;->setTitle(I)V

    .line 33
    iput-object p1, p0, Lcom/aadhk/restpos/c/bl;->k:Landroid/content/Context;

    .line 34
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bl;->f:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/bl;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bl;->e:Landroid/widget/Button;

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/c/bl;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bl;->g:Landroid/widget/EditText;

    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/c/bl;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bl;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/bl;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/aadhk/restpos/c/bl;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/bl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/aadhk/restpos/c/bl;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/c/bl;)Lcom/aadhk/restpos/c/bm;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/aadhk/restpos/c/bl;->i:Lcom/aadhk/restpos/c/bm;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/c/bl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/aadhk/restpos/c/bl;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/c/bl;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/aadhk/restpos/c/bl;->g:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/bm;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/aadhk/restpos/c/bl;->i:Lcom/aadhk/restpos/c/bm;

    .line 102
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/c/bl;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/c/bl;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bl;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/c/bl;->h:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/bl;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/bl;->a:Landroid/content/res/Resources;

    const v3, 0x7f080085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bl;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 47
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/c/bn;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/c/bn;-><init>(Lcom/aadhk/restpos/c/bl;B)V

    iget-object v3, p0, Lcom/aadhk/restpos/c/bl;->k:Landroid/content/Context;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 48
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    :cond_0
    :goto_1
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/bl;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bl;->dismiss()V

    goto :goto_1
.end method
