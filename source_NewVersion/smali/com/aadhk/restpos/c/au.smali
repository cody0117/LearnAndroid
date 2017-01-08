.class public final Lcom/aadhk/restpos/c/au;
.super Lcom/aadhk/restpos/c/br;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/aadhk/restpos/c/aw;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    const v0, 0x7f030046

    invoke-direct {p0, p1, v0}, Lcom/aadhk/restpos/c/br;-><init>(Landroid/content/Context;I)V

    .line 29
    const v0, 0x7f0900fd

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/au;->setTitle(I)V

    .line 31
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/au;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/au;->f:Landroid/widget/Button;

    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/c/au;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/au;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/au;->e:Landroid/widget/Button;

    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/au;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v0, 0x7f0b00f1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/au;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/au;->g:Landroid/widget/EditText;

    .line 37
    const v0, 0x7f0b00f2

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/au;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/au;->h:Landroid/widget/EditText;

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/c/au;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/au;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/c/au;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/au;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/c/au;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/av;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/av;-><init>(Lcom/aadhk/restpos/c/au;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 50
    return-void
.end method

.method private a()Z
    .locals 6

    .prologue
    const v5, 0x7f090210

    const v4, 0x7f090055

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 67
    iget-object v2, p0, Lcom/aadhk/restpos/c/au;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aadhk/restpos/c/au;->i:Ljava/lang/String;

    .line 68
    iget-object v2, p0, Lcom/aadhk/restpos/c/au;->i:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v1, p0, Lcom/aadhk/restpos/c/au;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/au;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/aadhk/restpos/c/au;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 110
    :goto_0
    return v0

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/aadhk/restpos/c/au;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aadhk/restpos/c/au;->j:Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lcom/aadhk/restpos/c/au;->j:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    iget-object v1, p0, Lcom/aadhk/restpos/c/au;->h:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/au;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/aadhk/restpos/c/au;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 82
    new-instance v3, Lcom/aadhk/restpos/b/x;

    invoke-direct {v3, v2}, Lcom/aadhk/restpos/b/x;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 83
    iget-object v2, p0, Lcom/aadhk/restpos/c/au;->i:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/aadhk/restpos/b/x;->a(Ljava/lang/String;)Lcom/aadhk/restpos/bean/User;

    move-result-object v2

    .line 84
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/b/f;->c()V

    .line 86
    if-eqz v2, :cond_4

    .line 87
    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aadhk/restpos/c/au;->l:Ljava/lang/String;

    .line 88
    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 90
    :try_start_0
    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/User;->getPassword()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/c/au;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 91
    goto :goto_0

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/c/au;->h:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/au;->a:Landroid/content/res/Resources;

    const v3, 0x7f090211

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Lcom/aadhk/restpos/c/au;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    invoke-static {v1}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 102
    :cond_3
    iget-object v1, p0, Lcom/aadhk/restpos/c/au;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/au;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/aadhk/restpos/c/au;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 107
    :cond_4
    iget-object v1, p0, Lcom/aadhk/restpos/c/au;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/au;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Lcom/aadhk/restpos/c/au;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/aadhk/restpos/c/au;->k:Lcom/aadhk/restpos/c/aw;

    .line 115
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/c/au;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/aadhk/restpos/c/au;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/c/au;->k:Lcom/aadhk/restpos/c/aw;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/c/au;->k:Lcom/aadhk/restpos/c/aw;

    iget-object v1, p0, Lcom/aadhk/restpos/c/au;->l:Ljava/lang/String;

    invoke-interface {v0}, Lcom/aadhk/restpos/c/aw;->a()V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/au;->dismiss()V

    .line 63
    :cond_1
    :goto_0
    return-void

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/au;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/au;->dismiss()V

    goto :goto_0
.end method
