.class public final Lcom/aadhk/restpos/d/dn;
.super Lcom/aadhk/restpos/d/dh;
.source "ProGuard"


# instance fields
.field private a:Landroid/widget/EditText;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/aadhk/restpos/d/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->j:Lcom/aadhk/restpos/b/r;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/r;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 33
    return-void
.end method

.method protected final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->g:Landroid/view/View;

    const v1, 0x7f0b01c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dn;->a:Landroid/widget/EditText;

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->g:Landroid/view/View;

    const v1, 0x7f0b01c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dn;->o:Landroid/widget/EditText;

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->g:Landroid/view/View;

    const v1, 0x7f0b01c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dn;->p:Landroid/widget/EditText;

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->o:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/dn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->p:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-super {p0}, Lcom/aadhk/restpos/d/dh;->b()V

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dn;->g()V

    .line 46
    return-void
.end method

.method public final c()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f090055

    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->p:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/dn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 89
    :goto_0
    return v0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->p:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->a:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/dn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 63
    :cond_1
    sget-object v2, Lcom/aadhk/product/library/c/n;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->a:Landroid/widget/EditText;

    const v2, 0x7f0901fa

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/dn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->o:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/dn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->o:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dn;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 86
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 89
    invoke-super {p0}, Lcom/aadhk/restpos/d/dh;->c()Z

    move-result v0

    goto/16 :goto_0
.end method

.method protected final d()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/aadhk/restpos/d/dh;->d()V

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setIp(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPort(I)V

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setModel(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommInitial(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommCut(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommDrawer(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dn;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommBeep(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dn;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dn;->d()V

    .line 111
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/dh;->onActivityCreated(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dn;->b()V

    .line 23
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    const v0, 0x7f03007d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dn;->g:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->g:Landroid/view/View;

    return-object v0
.end method
