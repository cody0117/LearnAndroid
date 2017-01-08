.class public final Lcom/aadhk/b/a/a;
.super Landroid/app/Dialog;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/EditText;

.field private g:Ljava/lang/String;

.field private h:Lcom/aadhk/b/a/c;

.field private i:Lcom/aadhk/b/a/b;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Landroid/content/res/Resources;

.field private m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 31
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0, v3}, Lcom/aadhk/b/a/a;->requestWindowFeature(I)Z

    .line 33
    invoke-virtual {p0, v3}, Lcom/aadhk/b/a/a;->setCancelable(Z)V

    .line 34
    iput-object p1, p0, Lcom/aadhk/b/a/a;->m:Landroid/content/Context;

    .line 35
    sget v0, Lcom/aadhk/b/g;->a:I

    invoke-virtual {p0, v0}, Lcom/aadhk/b/a/a;->setContentView(I)V

    .line 36
    iput-wide p2, p0, Lcom/aadhk/b/a/a;->j:J

    .line 37
    iput-object p4, p0, Lcom/aadhk/b/a/a;->k:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/b/a/a;->l:Landroid/content/res/Resources;

    .line 41
    sget v0, Lcom/aadhk/b/f;->e:I

    invoke-virtual {p0, v0}, Lcom/aadhk/b/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/b/a/a;->d:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/aadhk/b/a/a;->l:Landroid/content/res/Resources;

    sget v1, Lcom/aadhk/b/h;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/aadhk/b/a/a;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    sget v0, Lcom/aadhk/b/f;->f:I

    invoke-virtual {p0, v0}, Lcom/aadhk/b/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/b/a/a;->f:Landroid/widget/EditText;

    .line 45
    sget v0, Lcom/aadhk/b/f;->d:I

    invoke-virtual {p0, v0}, Lcom/aadhk/b/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/b/a/a;->e:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/aadhk/b/f;->c:I

    invoke-virtual {p0, v0}, Lcom/aadhk/b/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/b/a/a;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/b/a/a;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/aadhk/b/f;->b:I

    invoke-virtual {p0, v0}, Lcom/aadhk/b/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/b/a/a;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/b/a/a;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/aadhk/b/f;->a:I

    invoke-virtual {p0, v0}, Lcom/aadhk/b/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/b/a/a;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/b/a/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/b/a/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/b/a/a;->k:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/b/a/a;->a:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/b/a/a;->b:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/b/a/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/b/a/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/aadhk/b/a/a;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/b/a/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/aadhk/b/f;->d:I

    invoke-virtual {p0, v0}, Lcom/aadhk/b/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/aadhk/b/h;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/aadhk/b/a/a;->l:Landroid/content/res/Resources;

    sget v1, Lcom/aadhk/b/h;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/aadhk/b/a/a;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/b/a/a;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/b/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/aadhk/b/a/a;->h:Lcom/aadhk/b/a/c;

    .line 147
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/aadhk/b/a/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/aadhk/b/a/a;->dismiss()V

    .line 84
    iget-object v0, p0, Lcom/aadhk/b/a/a;->i:Lcom/aadhk/b/a/b;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/aadhk/b/a/a;->i:Lcom/aadhk/b/a/b;

    .line 87
    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    iget-object v2, p0, Lcom/aadhk/b/a/a;->a:Landroid/widget/Button;

    if-ne p1, v2, :cond_4

    .line 53
    iget-object v2, p0, Lcom/aadhk/b/a/a;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aadhk/b/a/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/b/a/a;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Lcom/aadhk/b/a/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/aadhk/b/a/a;->f:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/b/a/a;->l:Landroid/content/res/Resources;

    sget v3, Lcom/aadhk/b/h;->e:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    :cond_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/b/a/a;->h:Lcom/aadhk/b/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/b/a/a;->h:Lcom/aadhk/b/a/c;

    iget-object v1, p0, Lcom/aadhk/b/a/a;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/aadhk/b/a/c;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/aadhk/b/a/a;->dismiss()V

    .line 68
    :cond_3
    :goto_0
    return-void

    .line 54
    :cond_4
    iget-object v2, p0, Lcom/aadhk/b/a/a;->b:Landroid/widget/Button;

    if-ne p1, v2, :cond_5

    .line 55
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    new-array v3, v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/aadhk/b/a/a;->l:Landroid/content/res/Resources;

    sget v5, Lcom/aadhk/b/h;->a:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 58
    const-string v4, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v3, "android.intent.extra.SUBJECT"

    iget-object v4, p0, Lcom/aadhk/b/a/a;->l:Landroid/content/res/Resources;

    sget v5, Lcom/aadhk/b/h;->d:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v3, p0, Lcom/aadhk/b/a/a;->l:Landroid/content/res/Resources;

    sget v4, Lcom/aadhk/b/h;->c:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/aadhk/b/a/a;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/aadhk/b/a/a;->m:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 63
    :cond_5
    iget-object v0, p0, Lcom/aadhk/b/a/a;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aadhk/b/a/a;->l:Landroid/content/res/Resources;

    sget v3, Lcom/aadhk/b/h;->f:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/aadhk/b/a/a;->m:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final setTitle(I)V
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/aadhk/b/a/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    return-void
.end method
