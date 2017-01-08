.class public final Lcom/aadhk/restpos/c/dm;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/TextView;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/String;

.field private l:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f08038f

    const v5, 0x7f08038e

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    const v0, 0x7f030067

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 31
    iput-object p1, p0, Lcom/aadhk/restpos/c/dm;->l:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/aadhk/restpos/c/dm;->k:Ljava/lang/String;

    .line 33
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dm;->f:Landroid/widget/Button;

    .line 34
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dm;->g:Landroid/widget/Button;

    .line 36
    const v0, 0x7f090165

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dm;->h:Landroid/widget/EditText;

    .line 37
    const v0, 0x7f090164

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dm;->i:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/c/dm;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/c/dm;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/c/dm;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/c/dm;->c:Landroid/content/res/Resources;

    const v3, 0x7f080085

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/dm;->j:Ljava/lang/CharSequence;

    .line 44
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/c/dm;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 49
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/dm;->l:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/c/dm;->l:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/aadhk/restpos/c/dm;->l:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/aadhk/restpos/c/dm;->k:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/aadhk/restpos/c/dm;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/aadhk/restpos/c/dm;->l:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/aadhk/restpos/c/dm;->k:Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/c/dm;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/c/dm;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/aadhk/restpos/c/dm;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/aadhk/restpos/c/dm;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/c/dm;->k:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 76
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/c/dm;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/dm;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/c/dm;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    sget-object v1, Lcom/aadhk/product/library/c/n;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_3

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/c/dm;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/dm;->l:Landroid/content/Context;

    const v2, 0x7f080237

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/c/dm;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 88
    :cond_3
    iget-object v1, p0, Lcom/aadhk/restpos/c/dm;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/aadhk/restpos/c/dm;->a:Lcom/aadhk/product/library/b/f;

    invoke-interface {v1, v0}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dm;->dismiss()V

    goto :goto_0

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/dm;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dm;->dismiss()V

    goto :goto_0
.end method
