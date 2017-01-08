.class public final Lcom/aadhk/restpos/c/cp;
.super Lcom/aadhk/restpos/c/cs;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Lcom/aadhk/restpos/c/cr;

.field private n:Lcom/aadhk/restpos/c/cq;

.field private o:Lcom/aadhk/restpos/bean/License;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/License;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 30
    const v0, 0x7f03005e

    invoke-direct {p0, p1, v0}, Lcom/aadhk/restpos/c/cs;-><init>(Landroid/content/Context;I)V

    .line 31
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cp;->setTitle(I)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cp;->setCancelable(Z)V

    .line 33
    iput-object p2, p0, Lcom/aadhk/restpos/c/cp;->o:Lcom/aadhk/restpos/bean/License;

    .line 35
    const v0, 0x7f090154

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cp;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09011c

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cp;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09014f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cp;->g:Landroid/widget/TextView;

    const v0, 0x7f09014e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cp;->h:Landroid/widget/TextView;

    const v0, 0x7f090150

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cp;->i:Landroid/widget/EditText;

    const v0, 0x7f090151

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cp;->j:Landroid/widget/EditText;

    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cp;->l:Landroid/widget/EditText;

    const v0, 0x7f090153

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cp;->k:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cp;->o:Lcom/aadhk/restpos/bean/License;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/License;->getActivationKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cp;->o:Lcom/aadhk/restpos/bean/License;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/License;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cp;->o:Lcom/aadhk/restpos/bean/License;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/License;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cp;->o:Lcom/aadhk/restpos/bean/License;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/License;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/c/cp;->a:Landroid/content/res/Resources;

    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/c/cp;->o:Lcom/aadhk/restpos/bean/License;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/License;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->o:Lcom/aadhk/restpos/bean/License;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/License;->getActivationKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->f:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cp;->setTitle(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->h:Landroid/widget/TextView;

    const v1, 0x7f0800f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/cr;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/aadhk/restpos/c/cp;->m:Lcom/aadhk/restpos/c/cr;

    .line 171
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/cp;->dismiss()V

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->n:Lcom/aadhk/restpos/c/cq;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->n:Lcom/aadhk/restpos/c/cq;

    .line 75
    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f080085

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lcom/aadhk/restpos/c/cp;->e:Landroid/widget/Button;

    if-ne p1, v1, :cond_6

    .line 41
    iget-object v1, p0, Lcom/aadhk/restpos/c/cp;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/c/cp;->j:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/c/cp;->l:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/c/cp;->k:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v1, p0, Lcom/aadhk/restpos/c/cp;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cp;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/cp;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->m:Lcom/aadhk/restpos/c/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->m:Lcom/aadhk/restpos/c/cr;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cp;->o:Lcom/aadhk/restpos/bean/License;

    invoke-interface {v0, v1}, Lcom/aadhk/restpos/c/cr;->a(Lcom/aadhk/restpos/bean/License;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/cp;->dismiss()V

    .line 58
    :cond_1
    :goto_1
    return-void

    .line 41
    :cond_2
    iget-object v5, p0, Lcom/aadhk/restpos/c/cp;->i:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v1, p0, Lcom/aadhk/restpos/c/cp;->j:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cp;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/cp;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/aadhk/restpos/c/cp;->j:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v1, p0, Lcom/aadhk/restpos/c/cp;->l:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cp;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/cp;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/aadhk/restpos/c/cp;->l:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v3}, Lcom/aadhk/product/library/c/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v1, p0, Lcom/aadhk/restpos/c/cp;->l:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cp;->a:Landroid/content/res/Resources;

    const v3, 0x7f08032f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/cp;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->o:Lcom/aadhk/restpos/bean/License;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/License;->setActivationKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->o:Lcom/aadhk/restpos/bean/License;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/License;->setUserName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->o:Lcom/aadhk/restpos/bean/License;

    invoke-virtual {v0, v3}, Lcom/aadhk/restpos/bean/License;->setEmail(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->o:Lcom/aadhk/restpos/bean/License;

    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/bean/License;->setPhone(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 42
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/c/cp;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aadhk/restpos/c/cp;->a:Landroid/content/res/Resources;

    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/aadhk/restpos/c/cp;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
