.class public Lcom/aadhk/restpos/PayCloseOutActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/Button;

.field private D:Lcom/aadhk/restpos/bean/CashRegister;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:D

.field private H:D

.field private I:D

.field private J:D

.field private K:[Ljava/lang/String;

.field private a:Lcom/aadhk/restpos/b/a;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/EditText;

.field private v:Landroid/widget/EditText;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/widget/EditText;

.field private y:Landroid/widget/EditText;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 141
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->a:Lcom/aadhk/restpos/b/a;

    invoke-virtual {v0, v6}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->E:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->E:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->K:[Ljava/lang/String;

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->E:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->K:[Ljava/lang/String;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->K:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->u:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getDate()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->v:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->a:Lcom/aadhk/restpos/b/a;

    invoke-virtual {v0, v4, v6}, Lcom/aadhk/restpos/b/a;->a(ILjava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->G:D

    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->a:Lcom/aadhk/restpos/b/a;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->E:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v5}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->H:D

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->a:Lcom/aadhk/restpos/b/a;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->E:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->I:D

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->a:Lcom/aadhk/restpos/b/a;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->E:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/a;->b(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->J:D

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->w:Landroid/widget/EditText;

    iget-wide v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->G:D

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->m:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    iget-wide v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->H:D

    iget-object v4, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->n:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    iget-wide v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->I:D

    iget-object v4, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->o:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    iget-wide v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->J:D

    iget-object v4, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->q:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-direct {p0}, Lcom/aadhk/restpos/PayCloseOutActivity;->b()V

    .line 90
    invoke-direct {p0}, Lcom/aadhk/restpos/PayCloseOutActivity;->c()V

    .line 91
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0900e0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 247
    new-instance v0, Lcom/aadhk/restpos/c/a;

    iget v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/aadhk/restpos/c/a;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 248
    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/a;->setTitle(I)V

    .line 249
    new-instance v1, Lcom/aadhk/restpos/bd;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/bd;-><init>(Lcom/aadhk/restpos/PayCloseOutActivity;I)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/product/library/b/f;)V

    .line 263
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/a;->show()V

    .line 264
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/PayCloseOutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/aadhk/restpos/PayCloseOutActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 9

    .prologue
    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 95
    iget-wide v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->H:D

    iget-wide v4, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->I:D

    iget-wide v6, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->J:D

    iget v8, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    invoke-static/range {v0 .. v8}, Lcom/aadhk/restpos/f/h;->a(DDDDI)D

    move-result-wide v0

    .line 96
    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->p:Landroid/widget/TextView;

    iget v3, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    iget-object v4, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-static {v3, v0, v1, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->x:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/PayCloseOutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/aadhk/restpos/PayCloseOutActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/PayCloseOutActivity;)Lcom/aadhk/restpos/bean/CashRegister;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->x:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 102
    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v2

    .line 103
    iget v4, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/f/h;->c(DDI)D

    move-result-wide v0

    .line 104
    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->q:Landroid/widget/TextView;

    iget v3, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    iget-object v4, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-static {v3, v0, v1, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    .line 229
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setDate(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setTime(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 232
    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v2

    .line 233
    iget-object v4, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->E:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 234
    iget-object v4, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->a:Lcom/aadhk/restpos/b/a;

    iget-object v5, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->E:Ljava/lang/String;

    invoke-virtual {v4, v5, v0, v1}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;D)I

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/restpos/bean/CashRegister;->setAmount(D)V

    .line 241
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setTranxType(I)V

    .line 242
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->a:Lcom/aadhk/restpos/b/a;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/a;->a(Lcom/aadhk/restpos/bean/CashRegister;)J

    .line 243
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayCloseOutActivity;->finish()V

    .line 244
    return-void

    .line 236
    :cond_0
    iget-object v4, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v4, v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setAmount(D)V

    .line 237
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setTranxType(I)V

    .line 238
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->a:Lcom/aadhk/restpos/b/a;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/a;->a(Lcom/aadhk/restpos/bean/CashRegister;)J

    goto :goto_0
.end method

.method static synthetic d(Lcom/aadhk/restpos/PayCloseOutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/aadhk/restpos/PayCloseOutActivity;->a()V

    return-void
.end method

.method static synthetic e(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->x:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->y:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 179
    :sswitch_0
    new-instance v0, Lcom/aadhk/restpos/c/j;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/c/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    new-instance v1, Lcom/aadhk/restpos/bb;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/bb;-><init>(Lcom/aadhk/restpos/PayCloseOutActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/j;->a(Lcom/aadhk/product/library/b/f;)V

    .line 188
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/j;->show()V

    goto :goto_0

    .line 191
    :sswitch_1
    new-instance v0, Lcom/aadhk/restpos/c/cg;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/c/cg;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcom/aadhk/restpos/bc;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/bc;-><init>(Lcom/aadhk/restpos/PayCloseOutActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/cg;->a(Lcom/aadhk/product/library/b/f;)V

    .line 200
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/cg;->show()V

    goto :goto_0

    .line 203
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/aadhk/restpos/PayCloseOutActivity;->a(I)V

    goto :goto_0

    .line 206
    :sswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->a(I)V

    goto :goto_0

    .line 209
    :sswitch_4
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->a(I)V

    goto :goto_0

    .line 212
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->E:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/aadhk/restpos/PayCloseOutActivity;->d()V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->E:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/aadhk/restpos/PayCloseOutActivity;->d()V

    goto/16 :goto_0

    .line 219
    :cond_1
    const v0, 0x7f0900d8

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 222
    :cond_2
    const v0, 0x7f0900d9

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b005e -> :sswitch_0
        0x7f0b005f -> :sswitch_1
        0x7f0b0062 -> :sswitch_2
        0x7f0b0069 -> :sswitch_3
        0x7f0b006c -> :sswitch_4
        0x7f0b006e -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->setContentView(I)V

    .line 47
    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->setTitle(I)V

    .line 48
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/aadhk/restpos/b/a;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->a:Lcom/aadhk/restpos/b/a;

    .line 50
    new-instance v0, Lcom/aadhk/restpos/bean/CashRegister;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/CashRegister;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-static {}, Lcom/aadhk/restpos/f/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setDate(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-static {}, Lcom/aadhk/restpos/f/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setTime(Ljava/lang/String;)V

    .line 53
    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f0b0064

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f0b0065

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f0b0066

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->u:Landroid/widget/EditText;

    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->v:Landroid/widget/EditText;

    const v0, 0x7f0b0061

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->w:Landroid/widget/EditText;

    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->x:Landroid/widget/EditText;

    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->y:Landroid/widget/EditText;

    const v0, 0x7f0b006e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->C:Landroid/widget/Button;

    const v0, 0x7f0b0062

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->z:Landroid/widget/ImageView;

    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->A:Landroid/widget/ImageView;

    const v0, 0x7f0b006c

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->B:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->w:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/be;

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->w:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/be;-><init>(Lcom/aadhk/restpos/PayCloseOutActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->x:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/be;

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->x:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/be;-><init>(Lcom/aadhk/restpos/PayCloseOutActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->y:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/be;

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->y:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/be;-><init>(Lcom/aadhk/restpos/PayCloseOutActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->C:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 172
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 173
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onResume()V

    .line 59
    invoke-direct {p0}, Lcom/aadhk/restpos/PayCloseOutActivity;->a()V

    .line 60
    return-void
.end method
