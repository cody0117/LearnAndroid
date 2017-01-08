.class public final Lcom/aadhk/restpos/c/v;
.super Lcom/aadhk/restpos/c/br;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/content/Context;

.field private l:Lcom/aadhk/restpos/bean/OrderItem;

.field private m:Lcom/aadhk/restpos/c/x;

.field private n:Lcom/aadhk/restpos/c/w;

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/OrderItem;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    const v0, 0x7f030039

    invoke-direct {p0, p1, v0}, Lcom/aadhk/restpos/c/br;-><init>(Landroid/content/Context;I)V

    .line 41
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/v;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    iput-object p1, p0, Lcom/aadhk/restpos/c/v;->k:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/aadhk/restpos/c/v;->l:Lcom/aadhk/restpos/bean/OrderItem;

    .line 44
    iput p3, p0, Lcom/aadhk/restpos/c/v;->o:I

    .line 46
    if-nez p2, :cond_0

    .line 47
    new-instance v0, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/OrderItem;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/v;->l:Lcom/aadhk/restpos/bean/OrderItem;

    .line 50
    :cond_0
    const v0, 0x7f0b00d4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/v;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/v;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00d5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/v;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/v;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/v;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/v;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/v;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/v;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00d6

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/v;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/v;->j:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->j:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->l:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->j:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/c/v;->l:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/x;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/aadhk/restpos/c/v;->m:Lcom/aadhk/restpos/c/x;

    .line 137
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->j:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->a(Landroid/widget/EditText;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->j:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/v;->a:Landroid/content/res/Resources;

    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->m:Lcom/aadhk/restpos/c/x;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->l:Lcom/aadhk/restpos/bean/OrderItem;

    iget-object v1, p0, Lcom/aadhk/restpos/c/v;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/restpos/f/m;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setNum(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->m:Lcom/aadhk/restpos/c/x;

    iget-object v1, p0, Lcom/aadhk/restpos/c/v;->l:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-interface {v0, v1}, Lcom/aadhk/restpos/c/x;->a(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/v;->dismiss()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->j:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto :goto_1

    .line 68
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->n:Lcom/aadhk/restpos/c/w;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->n:Lcom/aadhk/restpos/c/w;

    :cond_7
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/v;->dismiss()V

    goto :goto_0

    .line 70
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_9

    .line 71
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/v;->dismiss()V

    goto/16 :goto_0

    .line 72
    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->j:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/c/v;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_0
.end method
