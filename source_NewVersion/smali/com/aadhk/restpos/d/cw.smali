.class public final Lcom/aadhk/restpos/d/cw;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/aadhk/restpos/PriceScheduleActivity;

.field private i:Landroid/widget/CheckBox;

.field private j:Landroid/widget/CheckBox;

.field private k:Landroid/widget/CheckBox;

.field private l:Landroid/widget/CheckBox;

.field private m:Landroid/widget/CheckBox;

.field private n:Landroid/widget/CheckBox;

.field private o:Landroid/widget/CheckBox;

.field private p:Landroid/widget/CheckBox;

.field private q:Landroid/widget/ToggleButton;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/Button;

.field private u:Lcom/aadhk/restpos/bean/PriceSchedule;

.field private v:Lcom/aadhk/restpos/bean/Company;

.field private w:Lcom/aadhk/restpos/b/q;

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/cw;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/cw;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/cw;)Lcom/aadhk/restpos/bean/PriceSchedule;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/cw;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/cw;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/cw;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->e:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f090303

    const/4 v2, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->h:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/aadhk/restpos/b/q;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/q;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/cw;->w:Lcom/aadhk/restpos/b/q;

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->setDisAmt(Z)V

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->setEnable(Z)V

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setStartDate(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setEndDate(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->v:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTimeIn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setStartTime(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->v:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTimeOut()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setEndTime(Ljava/lang/String;)V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->getAmtRate()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->getStartDate()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/cw;->z:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->getEndDate()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/cw;->z:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->getEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->isDisAmt()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cw;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(I)V

    :goto_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->q:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->isDisAmt()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->isEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->isSun()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->isMon()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->isTue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->m:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->isWed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->n:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->isThu()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->isFri()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->isSat()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    :goto_2
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->s:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->g:Landroid/widget/TextView;

    const v2, 0x7f0901a6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->f:Landroid/widget/EditText;

    const v2, 0x7f090304

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->f:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->g:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->q:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->m:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->n:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 106
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    const-string v1, "bundleItemPicker"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->a([J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setItemIds(Ljava/util/List;)V

    .line 110
    :cond_0
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/PriceScheduleActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->h:Lcom/aadhk/restpos/PriceScheduleActivity;

    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 94
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 219
    :sswitch_0
    new-instance v0, Lcom/aadhk/restpos/c/j;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->h:Lcom/aadhk/restpos/PriceScheduleActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    new-instance v1, Lcom/aadhk/restpos/d/cx;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/cx;-><init>(Lcom/aadhk/restpos/d/cw;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/j;->a(Lcom/aadhk/product/library/b/f;)V

    .line 227
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/j;->show()V

    goto :goto_0

    .line 230
    :sswitch_1
    new-instance v0, Lcom/aadhk/restpos/c/j;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->h:Lcom/aadhk/restpos/PriceScheduleActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->getEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 231
    new-instance v1, Lcom/aadhk/restpos/d/cy;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/cy;-><init>(Lcom/aadhk/restpos/d/cw;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/j;->a(Lcom/aadhk/product/library/b/f;)V

    .line 238
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/j;->show()V

    goto :goto_0

    .line 241
    :sswitch_2
    new-instance v0, Lcom/aadhk/restpos/c/cg;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->h:Lcom/aadhk/restpos/PriceScheduleActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/cg;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    new-instance v1, Lcom/aadhk/restpos/d/cz;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/cz;-><init>(Lcom/aadhk/restpos/d/cw;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/cg;->a(Lcom/aadhk/product/library/b/f;)V

    .line 248
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/cg;->show()V

    goto :goto_0

    .line 251
    :sswitch_3
    new-instance v0, Lcom/aadhk/restpos/c/cg;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->h:Lcom/aadhk/restpos/PriceScheduleActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->getEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/cg;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    new-instance v1, Lcom/aadhk/restpos/d/da;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/da;-><init>(Lcom/aadhk/restpos/d/cw;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/cg;->a(Lcom/aadhk/product/library/b/f;)V

    .line 258
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/cg;->show()V

    goto :goto_0

    .line 261
    :sswitch_4
    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/cw;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aadhk/restpos/f/j;->d(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->getStartDate()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/PriceSchedule;->getEndDate()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/aadhk/restpos/d/cw;->d:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/aadhk/restpos/d/cw;->e:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/cw;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_1
    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 263
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->w:Lcom/aadhk/restpos/b/q;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/q;->b(Lcom/aadhk/restpos/bean/PriceSchedule;)V

    .line 267
    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->h:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->b()V

    goto/16 :goto_0

    .line 261
    :cond_1
    iget-object v8, p0, Lcom/aadhk/restpos/d/cw;->a:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    invoke-static {v6, v7}, Lcom/aadhk/restpos/f/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v1, Lcom/aadhk/restpos/c/ax;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cw;->h:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090306

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ax;->a(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/aadhk/restpos/d/cw;->q:Landroid/widget/ToggleButton;

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    cmpg-double v8, v2, v10

    if-gtz v8, :cond_5

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->f:Landroid/widget/EditText;

    const v2, 0x7f09028d

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/cw;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/aadhk/restpos/d/cw;->q:Landroid/widget/ToggleButton;

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    if-nez v8, :cond_5

    cmpg-double v8, v2, v10

    if-lez v8, :cond_4

    const-wide/high16 v8, 0x4059

    cmpl-double v8, v2, v8

    if-lez v8, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->f:Landroid/widget/EditText;

    const v2, 0x7f09028c

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/cw;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->q:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setDisAmt(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->i:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setEnable(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->setAmtRate(D)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->setStartDate(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0, v5}, Lcom/aadhk/restpos/bean/PriceSchedule;->setEndDate(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0, v6}, Lcom/aadhk/restpos/bean/PriceSchedule;->setStartTime(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0, v7}, Lcom/aadhk/restpos/bean/PriceSchedule;->setEndTime(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->j:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setSun(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->k:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setMon(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->l:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setTue(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->m:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setWed(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->n:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setThu(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->o:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setFri(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->p:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setSat(Z)V

    const/4 v0, 0x1

    goto/16 :goto_1

    .line 265
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->w:Lcom/aadhk/restpos/b/q;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/q;->a(Lcom/aadhk/restpos/bean/PriceSchedule;)V

    goto/16 :goto_2

    .line 271
    :sswitch_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->w:Lcom/aadhk/restpos/b/q;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/q;->a(J)V

    .line 272
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->h:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->b()V

    goto/16 :goto_0

    .line 275
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 276
    const-string v1, "bundleItemPicker"

    iget-object v2, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/PriceSchedule;->getItemIds()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->a(Ljava/util/List;)[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 278
    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->h:Lcom/aadhk/restpos/PriceScheduleActivity;

    const-class v2, Lcom/aadhk/restpos/MgrItemPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 279
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/aadhk/restpos/d/cw;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 283
    :sswitch_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->q:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cw;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->f:Landroid/widget/EditText;

    const v1, 0x7f090303

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->g:Landroid/widget/TextView;

    const v1, 0x7f0901a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->f:Landroid/widget/EditText;

    const v1, 0x7f090304

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_0

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0056 -> :sswitch_4
        0x7f0b00c9 -> :sswitch_5
        0x7f0b00cb -> :sswitch_7
        0x7f0b0249 -> :sswitch_0
        0x7f0b024a -> :sswitch_1
        0x7f0b024b -> :sswitch_2
        0x7f0b024c -> :sswitch_3
        0x7f0b0255 -> :sswitch_6
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/cw;->setHasOptionsMenu(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/cw;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    const-string v1, "bundlePriceSchedule"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/PriceSchedule;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->u:Lcom/aadhk/restpos/bean/PriceSchedule;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->h:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->n()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->v:Lcom/aadhk/restpos/bean/Company;

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->h:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->x:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->h:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->l()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/cw;->y:I

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->h:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->z:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/aadhk/restpos/f/i;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->A:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/aadhk/restpos/f/i;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->B:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/cw;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    const v0, 0x7f0b027f

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 117
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 118
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    const v0, 0x7f0300af

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 99
    const v0, 0x7f0b00bc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->g:Landroid/widget/TextView;

    const v0, 0x7f0b0247

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->a:Landroid/widget/EditText;

    const v0, 0x7f0b0249

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->b:Landroid/widget/EditText;

    const v0, 0x7f0b024a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->c:Landroid/widget/EditText;

    const v0, 0x7f0b024b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->d:Landroid/widget/EditText;

    const v0, 0x7f0b024c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->e:Landroid/widget/EditText;

    const v0, 0x7f0b024d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->f:Landroid/widget/EditText;

    const v0, 0x7f0b0248

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->i:Landroid/widget/CheckBox;

    const v0, 0x7f0b024e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->j:Landroid/widget/CheckBox;

    const v0, 0x7f0b0252

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->k:Landroid/widget/CheckBox;

    const v0, 0x7f0b024f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->l:Landroid/widget/CheckBox;

    const v0, 0x7f0b0253

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->m:Landroid/widget/CheckBox;

    const v0, 0x7f0b0250

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->n:Landroid/widget/CheckBox;

    const v0, 0x7f0b0254

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->o:Landroid/widget/CheckBox;

    const v0, 0x7f0b0251

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->p:Landroid/widget/CheckBox;

    const v0, 0x7f0b00cb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->q:Landroid/widget/ToggleButton;

    const v0, 0x7f0b0056

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->r:Landroid/widget/Button;

    const v0, 0x7f0b00c9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->s:Landroid/widget/Button;

    const v0, 0x7f0b0255

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cw;->t:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->r:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->s:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->t:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->q:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cw;->f:Landroid/widget/EditText;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/aadhk/restpos/f/e;

    iget v5, p0, Lcom/aadhk/restpos/d/cw;->y:I

    invoke-direct {v4, v5}, Lcom/aadhk/restpos/f/e;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 100
    return-object v1
.end method
