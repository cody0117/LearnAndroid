.class public final Lcom/aadhk/restpos/d/fq;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/aadhk/restpos/PriceScheduleActivity;

.field private j:Landroid/widget/CheckBox;

.field private k:Landroid/widget/ToggleButton;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Lcom/aadhk/restpos/bean/PriceSchedule;

.field private p:Lcom/aadhk/restpos/bean/Company;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Landroid/view/View;

.field private w:Lcom/aadhk/restpos/util/r;

.field private x:[Ljava/lang/String;

.field private y:[Ljava/lang/Boolean;

.field private z:Lcom/aadhk/restpos/g/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 423
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/fq;)Lcom/aadhk/restpos/PriceScheduleActivity;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/fq;)[Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->y:[Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/fq;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->x:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/fq;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->A:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/fq;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/fq;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/fq;)Lcom/aadhk/restpos/bean/PriceSchedule;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/fq;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/d/fq;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Lcom/aadhk/restpos/d/fq;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/aadhk/restpos/d/fq;)Lcom/aadhk/restpos/g/t;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->z:Lcom/aadhk/restpos/g/t;

    return-object v0
.end method

.method static synthetic l(Lcom/aadhk/restpos/d/fq;)Lcom/aadhk/restpos/util/r;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->w:Lcom/aadhk/restpos/util/r;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->a()Lcom/aadhk/restpos/g/t;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->z:Lcom/aadhk/restpos/g/t;

    .line 93
    new-instance v0, Lcom/aadhk/restpos/util/r;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-direct {v0, v2}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->w:Lcom/aadhk/restpos/util/r;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->A:Ljava/util/Map;

    .line 95
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "prefCbSuns"

    aput-object v2, v0, v1

    const-string v2, "prefCbTues"

    aput-object v2, v0, v7

    const-string v2, "prefCbThus"

    aput-object v2, v0, v8

    const-string v2, "prefCbSats"

    aput-object v2, v0, v9

    const-string v2, "prefCbMons"

    aput-object v2, v0, v10

    const/4 v2, 0x5

    const-string v3, "prefCbWeds"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "prefCbFris"

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->x:[Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    if-nez v0, :cond_3

    .line 97
    new-instance v0, Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setDiscountAmt(Z)V

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setEnable(Z)V

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->setStartDate(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->setEndDate(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->p:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTimeIn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->setStartTime(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->p:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTimeOut()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->setEndTime(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->x:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 105
    iget-object v5, p0, Lcom/aadhk/restpos/d/fq;->A:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v8

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v9

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v10

    const/4 v2, 0x5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->y:[Ljava/lang/Boolean;

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->v:Landroid/view/View;

    const v0, 0x7f0900df

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->h:Landroid/widget/TextView;

    const v0, 0x7f0902bf

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->a:Landroid/widget/EditText;

    const v0, 0x7f0902c1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->b:Landroid/widget/EditText;

    const v0, 0x7f0902c2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->c:Landroid/widget/EditText;

    const v0, 0x7f0902c3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->d:Landroid/widget/EditText;

    const v0, 0x7f0902c4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->e:Landroid/widget/EditText;

    const v0, 0x7f0902c5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->f:Landroid/widget/EditText;

    const v0, 0x7f0902c7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->g:Landroid/widget/EditText;

    const v0, 0x7f0900de

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->k:Landroid/widget/ToggleButton;

    const v0, 0x7f0902c0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->j:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e001a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f090259

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v4, Lcom/aadhk/restpos/d/fv;

    invoke-direct {v4, p0, v3}, Lcom/aadhk/restpos/d/fv;-><init>(Lcom/aadhk/restpos/d/fq;[Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f09005a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->l:Landroid/widget/Button;

    const v0, 0x7f0900dc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->m:Landroid/widget/Button;

    const v0, 0x7f0902c6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->f:Landroid/widget/EditText;

    new-array v2, v8, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    new-instance v3, Lcom/aadhk/restpos/util/g;

    iget v4, p0, Lcom/aadhk/restpos/d/fq;->r:I

    invoke-direct {v3, v4}, Lcom/aadhk/restpos/util/g;-><init>(I)V

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->getAmtRate()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->getStartDate()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/fq;->s:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aadhk/restpos/util/o;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->getEndDate()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/fq;->s:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aadhk/restpos/util/o;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->getEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->isDiscountAmt()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->f:Landroid/widget/EditText;

    const v2, 0x7f080363

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    :goto_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->getItemNames()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->isDiscountAmt()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->isEnable()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 116
    :goto_2
    return-void

    .line 109
    :cond_3
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->isSun()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->isTue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v7

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->isThu()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v8

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->isSat()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v9

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->isMon()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v10

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/PriceSchedule;->isWed()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/PriceSchedule;->isFri()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->y:[Ljava/lang/Boolean;

    move v0, v1

    .line 110
    :goto_3
    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->y:[Ljava/lang/Boolean;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->A:Ljava/util/Map;

    iget-object v3, p0, Lcom/aadhk/restpos/d/fq;->x:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/aadhk/restpos/d/fq;->y:[Ljava/lang/Boolean;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 115
    :cond_4
    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->h:Landroid/widget/TextView;

    const v2, 0x7f0801e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->f:Landroid/widget/EditText;

    const v2, 0x7f080364

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->a:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->f:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->b:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->c:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->d:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->e:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->h:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->f:Landroid/widget/EditText;

    const v2, 0x7f080363

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 134
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 135
    const-string v1, "bundleItemPicker"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 136
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [J

    .line 137
    const-string v1, ""

    .line 138
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 139
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    .line 140
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v5

    aput-wide v5, v4, v1

    .line 141
    if-nez v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    .line 144
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-static {v4}, Lcom/aadhk/product/library/c/h;->a([J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setItemIds(Ljava/util/List;)V

    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->setItemNames(Ljava/lang/String;)V

    .line 151
    :cond_2
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/PriceScheduleActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    .line 121
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 122
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 302
    :sswitch_0
    new-instance v0, Lcom/aadhk/restpos/c/g;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    new-instance v1, Lcom/aadhk/restpos/d/fr;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/fr;-><init>(Lcom/aadhk/restpos/d/fq;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/product/library/b/f;)V

    .line 310
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V

    goto :goto_0

    .line 313
    :sswitch_1
    new-instance v0, Lcom/aadhk/restpos/c/g;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->getEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    new-instance v1, Lcom/aadhk/restpos/d/fs;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/fs;-><init>(Lcom/aadhk/restpos/d/fq;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/product/library/b/f;)V

    .line 321
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V

    goto :goto_0

    .line 324
    :sswitch_2
    new-instance v0, Lcom/aadhk/restpos/c/dr;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/dr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 325
    new-instance v1, Lcom/aadhk/restpos/d/ft;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ft;-><init>(Lcom/aadhk/restpos/d/fq;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/dr;->a(Lcom/aadhk/product/library/b/f;)V

    .line 331
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/dr;->show()V

    goto :goto_0

    .line 334
    :sswitch_3
    new-instance v0, Lcom/aadhk/restpos/c/dr;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->getEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/dr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    new-instance v1, Lcom/aadhk/restpos/d/fu;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/fu;-><init>(Lcom/aadhk/restpos/d/fq;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/dr;->a(Lcom/aadhk/product/library/b/f;)V

    .line 341
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/dr;->show()V

    goto :goto_0

    .line 344
    :sswitch_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aadhk/restpos/util/p;->d(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->getStartDate()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/PriceSchedule;->getEndDate()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/aadhk/restpos/d/fq;->d:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/aadhk/restpos/d/fq;->e:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->a:Landroid/widget/EditText;

    const v2, 0x7f080085

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/fq;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    .line 346
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/ga;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/d/ga;-><init>(Lcom/aadhk/restpos/d/fq;B)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 347
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v10}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 344
    :cond_1
    iget-object v8, p0, Lcom/aadhk/restpos/d/fq;->a:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    invoke-static {v6, v7}, Lcom/aadhk/restpos/util/o;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-direct {v0, v2}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080366

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/bo;->a(I)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/aadhk/restpos/d/fq;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    cmpg-double v8, v2, v11

    if-gtz v8, :cond_5

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->f:Landroid/widget/EditText;

    const v2, 0x7f0802ec

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/fq;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/aadhk/restpos/d/fq;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    if-nez v8, :cond_5

    cmpg-double v8, v2, v11

    if-lez v8, :cond_4

    const-wide/high16 v8, 0x4059

    cmpl-double v8, v2, v8

    if-lez v8, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->f:Landroid/widget/EditText;

    const v2, 0x7f0802eb

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/fq;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    goto/16 :goto_1

    :cond_5
    iget-object v8, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v8, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v8, p0, Lcom/aadhk/restpos/d/fq;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    invoke-virtual {v0, v8}, Lcom/aadhk/restpos/bean/PriceSchedule;->setDiscountAmt(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v8, p0, Lcom/aadhk/restpos/d/fq;->j:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    invoke-virtual {v0, v8}, Lcom/aadhk/restpos/bean/PriceSchedule;->setEnable(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/restpos/bean/PriceSchedule;->setAmtRate(D)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->setStartDate(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0, v5}, Lcom/aadhk/restpos/bean/PriceSchedule;->setEndDate(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0, v6}, Lcom/aadhk/restpos/bean/PriceSchedule;->setStartTime(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0, v7}, Lcom/aadhk/restpos/bean/PriceSchedule;->setEndTime(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->A:Ljava/util/Map;

    const-string v3, "prefCbSuns"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setSun(Z)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->A:Ljava/util/Map;

    const-string v3, "prefCbMons"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setMon(Z)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->A:Ljava/util/Map;

    const-string v3, "prefCbTues"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setTue(Z)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->A:Ljava/util/Map;

    const-string v3, "prefCbWeds"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setWed(Z)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->A:Ljava/util/Map;

    const-string v3, "prefCbThus"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setThu(Z)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->A:Ljava/util/Map;

    const-string v3, "prefCbFris"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setFri(Z)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->A:Ljava/util/Map;

    const-string v3, "prefCbSats"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setSat(Z)V

    const/4 v0, 0x1

    goto/16 :goto_1

    .line 349
    :cond_6
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/fy;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/d/fy;-><init>(Lcom/aadhk/restpos/d/fq;B)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 350
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v10}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 355
    :sswitch_5
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/fz;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/d/fz;-><init>(Lcom/aadhk/restpos/d/fq;B)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 356
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v10}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 359
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 360
    const-string v1, "bundleItemPicker"

    iget-object v2, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->getItemIds()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->a(Ljava/util/List;)[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 361
    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    const-class v2, Lcom/aadhk/restpos/MgrItemPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 362
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/aadhk/restpos/d/fq;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 365
    :sswitch_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fq;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->f:Landroid/widget/EditText;

    const v1, 0x7f080363

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->h:Landroid/widget/TextView;

    const v1, 0x7f0801e1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->f:Landroid/widget/EditText;

    const v1, 0x7f080364

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_0

    .line 300
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09005a -> :sswitch_4
        0x7f0900dc -> :sswitch_5
        0x7f0900de -> :sswitch_7
        0x7f0902c1 -> :sswitch_0
        0x7f0902c2 -> :sswitch_1
        0x7f0902c3 -> :sswitch_2
        0x7f0902c4 -> :sswitch_3
        0x7f0902c6 -> :sswitch_6
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/fq;->setHasOptionsMenu(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/fq;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    const-string v1, "bundlePriceSchedule"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/PriceSchedule;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->o:Lcom/aadhk/restpos/bean/PriceSchedule;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->v()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->p:Lcom/aadhk/restpos/bean/Company;

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->q:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->t()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/fq;->r:I

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->i:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->s:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/aadhk/restpos/util/o;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->t:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/aadhk/restpos/util/o;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->u:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/fq;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    const v0, 0x7f090301

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 158
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 159
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    const v0, 0x7f0300ce

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fq;->v:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/d/fq;->v:Landroid/view/View;

    return-object v0
.end method
