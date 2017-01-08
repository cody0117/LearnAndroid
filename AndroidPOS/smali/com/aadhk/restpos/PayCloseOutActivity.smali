.class public Lcom/aadhk/restpos/PayCloseOutActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/EditText;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/Button;

.field private F:Lcom/aadhk/restpos/bean/CloseOutCashRegister;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:D

.field private J:D

.field private K:D

.field private L:D

.field private M:[Ljava/lang/String;

.field private N:Lcom/aadhk/restpos/g/p;

.field private a:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/widget/EditText;

.field private y:Landroid/widget/EditText;

.field private z:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 278
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/PayCloseOutActivity;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->I:D

    return-wide p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/PayCloseOutActivity;)Lcom/aadhk/restpos/bean/CloseOutCashRegister;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/PayCloseOutActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->H:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/cb;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/cb;-><init>(Lcom/aadhk/restpos/PayCloseOutActivity;B)V

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 114
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    return-void
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 259
    new-instance v0, Lcom/aadhk/restpos/c/a;

    iget v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/aadhk/restpos/c/a;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 260
    const v1, 0x7f08010b

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/a;->setTitle(I)V

    .line 261
    new-instance v1, Lcom/aadhk/restpos/by;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/by;-><init>(Lcom/aadhk/restpos/PayCloseOutActivity;I)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/product/library/b/f;)V

    .line 275
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/a;->show()V

    .line 276
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/PayCloseOutActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->M:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/PayCloseOutActivity;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->J:D

    return-wide p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/PayCloseOutActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/PayCloseOutActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->G:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 247
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->setDate(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->x:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->setTime(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->setLastTime(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 251
    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->A:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v2

    .line 252
    iget-object v4, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    invoke-virtual {v4, v0, v1}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->setStartAmount(D)V

    .line 253
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->setNextAmount(D)V

    .line 254
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/ca;

    invoke-direct {v1, p0, v5}, Lcom/aadhk/restpos/ca;-><init>(Lcom/aadhk/restpos/PayCloseOutActivity;B)V

    invoke-direct {v0, v1, p0, v5}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 255
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 256
    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/PayCloseOutActivity;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->K:D

    return-wide p1
.end method

.method static synthetic c(Lcom/aadhk/restpos/PayCloseOutActivity;)Lcom/aadhk/restpos/g/p;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->N:Lcom/aadhk/restpos/g/p;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/PayCloseOutActivity;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->L:D

    return-wide p1
.end method

.method static synthetic d(Lcom/aadhk/restpos/PayCloseOutActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/PayCloseOutActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->M:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->x:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/PayCloseOutActivity;)D
    .locals 2
    .parameter

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->I:D

    return-wide v0
.end method

.method static synthetic j(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->y:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/aadhk/restpos/PayCloseOutActivity;)D
    .locals 2
    .parameter

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->J:D

    return-wide v0
.end method

.method static synthetic l(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/aadhk/restpos/PayCloseOutActivity;)D
    .locals 2
    .parameter

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->K:D

    return-wide v0
.end method

.method static synthetic n(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/aadhk/restpos/PayCloseOutActivity;)D
    .locals 2
    .parameter

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->L:D

    return-wide v0
.end method

.method static synthetic p(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic s(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/aadhk/restpos/PayCloseOutActivity;)V
    .locals 9
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->J:D

    iget-wide v4, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->K:D

    iget-wide v6, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->L:D

    iget v8, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    invoke-static/range {v0 .. v8}, Lcom/aadhk/restpos/util/m;->a(DDDDI)D

    move-result-wide v0

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->r:Landroid/widget/TextView;

    iget v3, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    iget-object v4, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-static {v3, v0, v1, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->z:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic v(Lcom/aadhk/restpos/PayCloseOutActivity;)V
    .locals 5
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->A:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v2

    iget v4, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/util/m;->c(DDI)D

    move-result-wide v0

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->s:Landroid/widget/TextView;

    iget v3, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    iget-object v4, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-static {v3, v0, v1, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic w(Lcom/aadhk/restpos/PayCloseOutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/aadhk/restpos/PayCloseOutActivity;->a()V

    return-void
.end method

.method static synthetic x(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->z:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic y(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->A:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 244
    :goto_0
    return-void

    .line 197
    :sswitch_0
    new-instance v0, Lcom/aadhk/restpos/c/g;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    new-instance v1, Lcom/aadhk/restpos/bw;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/bw;-><init>(Lcom/aadhk/restpos/PayCloseOutActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/product/library/b/f;)V

    .line 206
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V

    goto :goto_0

    .line 209
    :sswitch_1
    new-instance v0, Lcom/aadhk/restpos/c/dr;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/c/dr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    new-instance v1, Lcom/aadhk/restpos/bx;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/bx;-><init>(Lcom/aadhk/restpos/PayCloseOutActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/dr;->a(Lcom/aadhk/product/library/b/f;)V

    .line 218
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/dr;->show()V

    goto :goto_0

    .line 221
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/aadhk/restpos/PayCloseOutActivity;->a(I)V

    goto :goto_0

    .line 224
    :sswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->a(I)V

    goto :goto_0

    .line 227
    :sswitch_4
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->a(I)V

    goto :goto_0

    .line 230
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->H:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->G:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/aadhk/restpos/PayCloseOutActivity;->b()V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->G:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->H:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/aadhk/restpos/PayCloseOutActivity;->b()V

    goto/16 :goto_0

    .line 237
    :cond_1
    const v0, 0x7f080107

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 240
    :cond_2
    const v0, 0x7f080108

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09006a -> :sswitch_0
        0x7f09006b -> :sswitch_1
        0x7f09006e -> :sswitch_2
        0x7f090075 -> :sswitch_3
        0x7f090078 -> :sswitch_4
        0x7f09007a -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->setContentView(I)V

    .line 49
    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->setTitle(I)V

    .line 50
    new-instance v0, Lcom/aadhk/restpos/g/p;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->N:Lcom/aadhk/restpos/g/p;

    .line 51
    new-instance v0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    invoke-static {}, Lcom/aadhk/restpos/util/o;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->setDate(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->F:Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    invoke-static {}, Lcom/aadhk/restpos/util/o;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->setTime(Ljava/lang/String;)V

    .line 54
    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f09006f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f090070

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f090071

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f090072

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f090079

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f090076

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->w:Landroid/widget/EditText;

    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->x:Landroid/widget/EditText;

    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->y:Landroid/widget/EditText;

    const v0, 0x7f090074

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->z:Landroid/widget/EditText;

    const v0, 0x7f090077

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->A:Landroid/widget/EditText;

    const v0, 0x7f09007a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->E:Landroid/widget/Button;

    const v0, 0x7f09006e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->B:Landroid/widget/ImageView;

    const v0, 0x7f090075

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->C:Landroid/widget/ImageView;

    const v0, 0x7f090078

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->x:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->y:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/bz;

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->y:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/bz;-><init>(Lcom/aadhk/restpos/PayCloseOutActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->z:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/bz;

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->z:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/bz;-><init>(Lcom/aadhk/restpos/PayCloseOutActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->A:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/bz;

    iget-object v2, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->A:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/bz;-><init>(Lcom/aadhk/restpos/PayCloseOutActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->E:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/aadhk/restpos/PayCloseOutActivity;->N:Lcom/aadhk/restpos/g/p;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 303
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 304
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onResume()V

    .line 60
    invoke-direct {p0}, Lcom/aadhk/restpos/PayCloseOutActivity;->a()V

    .line 61
    return-void
.end method
