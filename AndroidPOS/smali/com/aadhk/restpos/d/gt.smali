.class public final Lcom/aadhk/restpos/d/gt;
.super Lcom/aadhk/restpos/d/gn;
.source "ProGuard"


# instance fields
.field private a:Landroid/widget/EditText;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/aadhk/restpos/d/gn;-><init>()V

    .line 121
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/gu;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/gu;-><init>(Lcom/aadhk/restpos/d/gt;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gt;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 40
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method

.method protected final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/d/gt;->g:Landroid/view/View;

    const v1, 0x7f090217

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gt;->a:Landroid/widget/EditText;

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/d/gt;->g:Landroid/view/View;

    const v1, 0x7f090219

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gt;->p:Landroid/widget/EditText;

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/gt;->g:Landroid/view/View;

    const v1, 0x7f090215

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gt;->q:Landroid/widget/EditText;

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/gt;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/d/gt;->p:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gt;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/d/gt;->q:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-super {p0}, Lcom/aadhk/restpos/d/gn;->b()V

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/d/gt;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/d/gt;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gt;->g()V

    .line 54
    return-void
.end method

.method public final c()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f080085

    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->q:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/gt;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 97
    :goto_0
    return v0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->q:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->a:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/gt;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 71
    :cond_1
    sget-object v2, Lcom/aadhk/product/library/c/n;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    .line 72
    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->a:Landroid/widget/EditText;

    const v2, 0x7f080237

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/gt;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->p:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/gt;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 85
    :cond_3
    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->p:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->b:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/gt;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/gt;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 97
    invoke-super {p0}, Lcom/aadhk/restpos/d/gn;->c()Z

    move-result v0

    goto/16 :goto_0
.end method

.method protected final d()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/aadhk/restpos/d/gn;->d()V

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/d/gt;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setIp(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/d/gt;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPort(I)V

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/d/gt;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setModel(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/d/gt;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommInitial(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/d/gt;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommCut(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/d/gt;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommDrawer(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/gt;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gt;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommBeep(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gt;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gt;->d()V

    .line 118
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/gn;->onActivityCreated(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gt;->b()V

    .line 30
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    const v0, 0x7f030095

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gt;->g:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/d/gt;->g:Landroid/view/View;

    return-object v0
.end method
