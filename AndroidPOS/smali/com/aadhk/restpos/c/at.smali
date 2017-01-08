.class public final Lcom/aadhk/restpos/c/at;
.super Lcom/aadhk/restpos/c/cs;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/CheckBox;

.field private i:Landroid/widget/Spinner;

.field private j:Lcom/aadhk/restpos/c/au;

.field private k:Lcom/aadhk/restpos/bean/Company;

.field private l:Landroid/view/LayoutInflater;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ServiceFee;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Company;ILjava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aadhk/restpos/bean/Company;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ServiceFee;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f0801bf

    const v2, 0x7f0801be

    .line 43
    const v0, 0x7f03004b

    invoke-direct {p0, p1, v0}, Lcom/aadhk/restpos/c/cs;-><init>(Landroid/content/Context;I)V

    .line 44
    iput-object p2, p0, Lcom/aadhk/restpos/c/at;->k:Lcom/aadhk/restpos/bean/Company;

    .line 45
    iput-object p1, p0, Lcom/aadhk/restpos/c/at;->c:Landroid/content/Context;

    .line 46
    iput p3, p0, Lcom/aadhk/restpos/c/at;->n:I

    .line 47
    iput-object p4, p0, Lcom/aadhk/restpos/c/at;->m:Ljava/util/List;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/at;->l:Landroid/view/LayoutInflater;

    .line 50
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/at;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/at;->e:Landroid/widget/Button;

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/at;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/at;->f:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f090118

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/at;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/at;->g:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f090119

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/at;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/c/at;->h:Landroid/widget/CheckBox;

    .line 58
    const v0, 0x7f09011a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/at;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/aadhk/restpos/c/at;->i:Landroid/widget/Spinner;

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->i:Landroid/widget/Spinner;

    new-instance v1, Lcom/aadhk/restpos/c/av;

    invoke-direct {v1, p0, v4}, Lcom/aadhk/restpos/c/av;-><init>(Lcom/aadhk/restpos/c/at;B)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->i:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    if-nez p3, :cond_2

    .line 63
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeDineIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->h:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeDineIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 69
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdDineIn()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/c/at;->a(I)I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/c/at;->p:I

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->i:Landroid/widget/Spinner;

    iget v1, p0, Lcom/aadhk/restpos/c/at;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 91
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->i:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 96
    :goto_2
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 71
    :cond_2
    if-ne p3, v5, :cond_4

    .line 72
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeTakeOut()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 77
    :goto_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->h:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeTakeOut()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 78
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdTakeOut()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/c/at;->a(I)I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/c/at;->p:I

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->i:Landroid/widget/Spinner;

    iget v1, p0, Lcom/aadhk/restpos/c/at;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 80
    :cond_4
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 81
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeDelivery()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 86
    :goto_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->h:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeDelivery()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdDelivery()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/c/at;->a(I)I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/c/at;->p:I

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->i:Landroid/widget/Spinner;

    iget v1, p0, Lcom/aadhk/restpos/c/at;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 94
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->i:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_2
.end method

.method private a(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 99
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ServiceFee;

    .line 101
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 105
    :goto_1
    return v1

    .line 99
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 105
    goto :goto_1
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/at;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/at;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->l:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/c/at;)Lcom/aadhk/restpos/bean/Company;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->k:Lcom/aadhk/restpos/bean/Company;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/au;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/aadhk/restpos/c/at;->j:Lcom/aadhk/restpos/c/au;

    .line 136
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 144
    if-eqz p2, :cond_0

    .line 145
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->i:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->i:Landroid/widget/Spinner;

    iget v1, p0, Lcom/aadhk/restpos/c/at;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->g:Landroid/widget/TextView;

    const v1, 0x7f0801be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/aadhk/restpos/c/at;->o:I

    .line 150
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->i:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 151
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->i:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->g:Landroid/widget/TextView;

    const v1, 0x7f0801bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 111
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->j:Lcom/aadhk/restpos/c/au;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/aadhk/restpos/c/at;->n:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->k:Lcom/aadhk/restpos/bean/Company;

    iget-object v1, p0, Lcom/aadhk/restpos/c/at;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Company;->setIncludeServiceFeeDineIn(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->k:Lcom/aadhk/restpos/bean/Company;

    iget v1, p0, Lcom/aadhk/restpos/c/at;->o:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Company;->setServiceFeeIdDineIn(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->j:Lcom/aadhk/restpos/c/au;

    iget-object v1, p0, Lcom/aadhk/restpos/c/at;->k:Lcom/aadhk/restpos/bean/Company;

    invoke-interface {v0, v1}, Lcom/aadhk/restpos/c/au;->a(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/at;->dismiss()V

    .line 115
    :cond_2
    :goto_1
    return-void

    .line 111
    :cond_3
    iget v0, p0, Lcom/aadhk/restpos/c/at;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->k:Lcom/aadhk/restpos/bean/Company;

    iget-object v1, p0, Lcom/aadhk/restpos/c/at;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Company;->setIncludeServiceFeeTakeOut(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->k:Lcom/aadhk/restpos/bean/Company;

    iget v1, p0, Lcom/aadhk/restpos/c/at;->o:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Company;->setServiceFeeIdTakeOut(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/aadhk/restpos/c/at;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->k:Lcom/aadhk/restpos/bean/Company;

    iget-object v1, p0, Lcom/aadhk/restpos/c/at;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Company;->setIncludeServiceFeeDelivery(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->k:Lcom/aadhk/restpos/bean/Company;

    iget v1, p0, Lcom/aadhk/restpos/c/at;->o:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Company;->setServiceFeeIdDelivery(I)V

    goto :goto_0

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/at;->dismiss()V

    goto :goto_1
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/aadhk/restpos/c/at;->m:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ServiceFee;

    .line 205
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getId()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/c/at;->o:I

    .line 206
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 210
    return-void
.end method
