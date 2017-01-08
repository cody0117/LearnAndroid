.class public final Lcom/aadhk/restpos/c/y;
.super Lcom/aadhk/restpos/c/br;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/EditText;

.field private h:D

.field private i:Lcom/aadhk/restpos/c/aa;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/OrderItem;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    const v0, 0x7f03003a

    invoke-direct {p0, p1, v0}, Lcom/aadhk/restpos/c/br;-><init>(Landroid/content/Context;I)V

    .line 27
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/y;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/y;->h:D

    .line 30
    iput p3, p0, Lcom/aadhk/restpos/c/y;->j:I

    .line 32
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/y;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/y;->e:Landroid/widget/Button;

    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/c/y;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/y;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/y;->f:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/y;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v0, 0x7f0b00d3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/y;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/y;->g:Landroid/widget/EditText;

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/y;->g:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/aadhk/restpos/c/y;->h:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/c/y;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/c/y;->g:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/aadhk/restpos/f/e;

    invoke-direct {v3, p3}, Lcom/aadhk/restpos/f/e;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/c/y;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/z;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/z;-><init>(Lcom/aadhk/restpos/c/y;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/aadhk/restpos/c/y;->i:Lcom/aadhk/restpos/c/aa;

    .line 82
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/c/y;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/c/y;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/c/y;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/y;->a:Landroid/content/res/Resources;

    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/y;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/c/y;->i:Lcom/aadhk/restpos/c/aa;

    if-eqz v0, :cond_1

    .line 59
    iget-object v2, p0, Lcom/aadhk/restpos/c/y;->i:Lcom/aadhk/restpos/c/aa;

    iget-object v0, p0, Lcom/aadhk/restpos/c/y;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v0, 0x0

    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :cond_0
    invoke-interface {v2, v0, v1}, Lcom/aadhk/restpos/c/aa;->a(D)V

    .line 65
    :cond_1
    :goto_1
    return-void

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/y;->g:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto :goto_0

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/y;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/y;->dismiss()V

    goto :goto_1
.end method
