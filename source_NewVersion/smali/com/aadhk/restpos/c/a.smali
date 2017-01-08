.class public final Lcom/aadhk/restpos/c/a;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/EditText;

.field private B:Landroid/widget/EditText;

.field private C:Landroid/widget/EditText;

.field private D:Landroid/widget/EditText;

.field private E:Landroid/widget/EditText;

.field private F:Landroid/widget/EditText;

.field private G:Landroid/widget/EditText;

.field private H:Landroid/widget/EditText;

.field private I:Landroid/widget/EditText;

.field private J:Landroid/widget/EditText;

.field private K:Landroid/widget/EditText;

.field private L:Landroid/widget/EditText;

.field private M:Landroid/widget/EditText;

.field private N:Landroid/widget/EditText;

.field private O:Landroid/widget/EditText;

.field private P:D

.field private Q:I

.field private R:Ljava/lang/String;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    const v0, 0x7f03002a

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/a;->P:D

    .line 35
    iput p2, p0, Lcom/aadhk/restpos/c/a;->Q:I

    .line 36
    iput-object p3, p0, Lcom/aadhk/restpos/c/a;->R:Ljava/lang/String;

    .line 37
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->f:Landroid/widget/Button;

    .line 38
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->g:Landroid/widget/Button;

    .line 40
    const v0, 0x7f0b0088

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->i:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->j:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0b008a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->k:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0900dd

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0900de

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->l:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->m:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->n:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->o:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0b0094

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->p:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->q:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->r:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->s:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->t:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0b009e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->u:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0b00a0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->v:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0b00a2

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->w:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0b00a4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->x:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0b00a6

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->y:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0b00a8

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->z:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0b008b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->A:Landroid/widget/EditText;

    .line 61
    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->B:Landroid/widget/EditText;

    .line 62
    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->C:Landroid/widget/EditText;

    .line 63
    const v0, 0x7f0b0091

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->D:Landroid/widget/EditText;

    .line 64
    const v0, 0x7f0b0093

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->E:Landroid/widget/EditText;

    .line 65
    const v0, 0x7f0b0095

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->F:Landroid/widget/EditText;

    .line 66
    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->G:Landroid/widget/EditText;

    .line 67
    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->H:Landroid/widget/EditText;

    .line 68
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->I:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->J:Landroid/widget/EditText;

    .line 70
    const v0, 0x7f0b009f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->K:Landroid/widget/EditText;

    .line 71
    const v0, 0x7f0b00a1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->L:Landroid/widget/EditText;

    .line 72
    const v0, 0x7f0b00a3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->M:Landroid/widget/EditText;

    .line 73
    const v0, 0x7f0b00a5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->N:Landroid/widget/EditText;

    .line 74
    const v0, 0x7f0b00a7

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/a;->O:Landroid/widget/EditText;

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->A:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/b;

    iget-object v2, p0, Lcom/aadhk/restpos/c/a;->A:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/a;->l:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/restpos/c/b;-><init>(Lcom/aadhk/restpos/c/a;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->B:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/b;

    iget-object v2, p0, Lcom/aadhk/restpos/c/a;->B:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/a;->m:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/restpos/c/b;-><init>(Lcom/aadhk/restpos/c/a;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->C:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/b;

    iget-object v2, p0, Lcom/aadhk/restpos/c/a;->C:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/a;->n:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/restpos/c/b;-><init>(Lcom/aadhk/restpos/c/a;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->D:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/b;

    iget-object v2, p0, Lcom/aadhk/restpos/c/a;->D:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/a;->o:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/restpos/c/b;-><init>(Lcom/aadhk/restpos/c/a;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->E:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/b;

    iget-object v2, p0, Lcom/aadhk/restpos/c/a;->E:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/a;->p:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/restpos/c/b;-><init>(Lcom/aadhk/restpos/c/a;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->F:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/b;

    iget-object v2, p0, Lcom/aadhk/restpos/c/a;->F:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/a;->q:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/restpos/c/b;-><init>(Lcom/aadhk/restpos/c/a;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->G:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/b;

    iget-object v2, p0, Lcom/aadhk/restpos/c/a;->G:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/a;->r:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/restpos/c/b;-><init>(Lcom/aadhk/restpos/c/a;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->H:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/b;

    iget-object v2, p0, Lcom/aadhk/restpos/c/a;->H:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/a;->s:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/restpos/c/b;-><init>(Lcom/aadhk/restpos/c/a;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->I:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/b;

    iget-object v2, p0, Lcom/aadhk/restpos/c/a;->I:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/a;->t:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/restpos/c/b;-><init>(Lcom/aadhk/restpos/c/a;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->J:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/b;

    iget-object v2, p0, Lcom/aadhk/restpos/c/a;->J:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/a;->u:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/restpos/c/b;-><init>(Lcom/aadhk/restpos/c/a;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->K:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/b;

    iget-object v2, p0, Lcom/aadhk/restpos/c/a;->K:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/a;->v:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/restpos/c/b;-><init>(Lcom/aadhk/restpos/c/a;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->L:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/b;

    iget-object v2, p0, Lcom/aadhk/restpos/c/a;->L:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/a;->w:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/restpos/c/b;-><init>(Lcom/aadhk/restpos/c/a;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->M:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/b;

    iget-object v2, p0, Lcom/aadhk/restpos/c/a;->M:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/a;->x:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/restpos/c/b;-><init>(Lcom/aadhk/restpos/c/a;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->N:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/b;

    iget-object v2, p0, Lcom/aadhk/restpos/c/a;->N:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/a;->y:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/restpos/c/b;-><init>(Lcom/aadhk/restpos/c/a;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->O:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/b;

    iget-object v2, p0, Lcom/aadhk/restpos/c/a;->O:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/a;->z:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/restpos/c/b;-><init>(Lcom/aadhk/restpos/c/a;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/a;)V
    .locals 33
    .parameter

    .prologue
    .line 20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/c/a;->A:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0

    mul-double/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aadhk/restpos/c/a;->B:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000

    mul-double/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aadhk/restpos/c/a;->C:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v7, 0x4014

    mul-double/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/aadhk/restpos/c/a;->D:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v7

    const-wide/high16 v9, 0x4024

    mul-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/aadhk/restpos/c/a;->E:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v9

    const-wide/high16 v11, 0x4034

    mul-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/aadhk/restpos/c/a;->F:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v11

    const-wide/high16 v13, 0x4049

    mul-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aadhk/restpos/c/a;->G:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059

    mul-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aadhk/restpos/c/a;->H:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v15

    const-wide v17, 0x3fb999999999999aL

    mul-double v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aadhk/restpos/c/a;->I:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v17

    const-wide v19, 0x3fc999999999999aL

    mul-double v17, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aadhk/restpos/c/a;->J:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x3fd0

    mul-double v19, v19, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aadhk/restpos/c/a;->K:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x3fe0

    mul-double v21, v21, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aadhk/restpos/c/a;->L:Landroid/widget/EditText;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v23

    const-wide v25, 0x3f847ae147ae147bL

    mul-double v23, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aadhk/restpos/c/a;->M:Landroid/widget/EditText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v25

    const-wide v27, 0x3f947ae147ae147bL

    mul-double v25, v25, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aadhk/restpos/c/a;->N:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v27

    const-wide v29, 0x3f9999999999999aL

    mul-double v27, v27, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aadhk/restpos/c/a;->O:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v29

    const-wide v31, 0x3fa999999999999aL

    mul-double v29, v29, v31

    add-double/2addr v1, v3

    add-double/2addr v1, v5

    add-double/2addr v1, v7

    add-double/2addr v1, v9

    add-double/2addr v1, v11

    add-double/2addr v1, v13

    add-double/2addr v1, v15

    add-double v1, v1, v17

    add-double v1, v1, v19

    add-double v1, v1, v21

    add-double v1, v1, v23

    add-double v1, v1, v25

    add-double v1, v1, v27

    add-double v1, v1, v29

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/aadhk/restpos/c/a;->P:D

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/c/a;->i:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/aadhk/restpos/c/a;->Q:I

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/aadhk/restpos/c/a;->P:D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aadhk/restpos/c/a;->R:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->a:Lcom/aadhk/product/library/b/f;

    iget-wide v1, p0, Lcom/aadhk/restpos/c/a;->P:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/a;->dismiss()V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/a;->dismiss()V

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/aadhk/restpos/c/a;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 225
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/a;->dismiss()V

    goto :goto_0
.end method
