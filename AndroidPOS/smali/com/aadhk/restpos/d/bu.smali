.class public final Lcom/aadhk/restpos/d/bu;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/aadhk/restpos/bean/Company;

.field private D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Lcom/aadhk/restpos/g/k;

.field private a:Lcom/aadhk/restpos/MgrItemActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/CheckBox;

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/ImageButton;

.field private u:Landroid/widget/ImageButton;

.field private v:Landroid/widget/ImageButton;

.field private w:Lcom/aadhk/restpos/bean/Item;

.field private x:[Ljava/lang/String;

.field private y:[Z

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 670
    return-void
.end method

.method private a(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 495
    move v1, v2

    .line 496
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->B:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 498
    add-int/lit8 v2, v1, 0x1

    .line 502
    :cond_0
    return v2

    .line 496
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/bu;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/bu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/aadhk/restpos/d/bu;->K:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getPrice()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/aadhk/product/library/c/h;->c(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->r:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->isAskPrice()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 238
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getCost()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/aadhk/product/library/c/h;->c(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->z:Ljava/util/Map;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getPrinterId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const v0, 0x7f080281

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/bu;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->n:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const-string v0, ""

    .line 247
    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getTax1Id()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 248
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->C:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getTax2Id()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->C:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getTax3Id()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->C:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->o:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const-string v0, ""

    .line 267
    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getModifierGroupIds()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 268
    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getModifierGroupIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 269
    const-string v3, "\\,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 270
    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_7

    .line 271
    aget-object v4, v3, v1

    .line 272
    if-nez v1, :cond_6

    .line 273
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->D:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->C:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->C:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 275
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->D:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v1, v0

    .line 280
    const-string v0, ""

    .line 281
    iget-object v3, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Item;->getKitchenNoteGroupIds()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 282
    iget-object v3, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Item;->getKitchenNoteGroupIds()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 283
    const-string v4, "\\,"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 284
    :goto_4
    array-length v4, v3

    if-ge v2, v4, :cond_9

    .line 285
    aget-object v4, v3, v2

    .line 286
    if-nez v2, :cond_8

    .line 287
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->F:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 289
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->F:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 293
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 294
    const v1, 0x7f080284

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/bu;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 296
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 297
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/bu;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    :cond_b
    iget-object v2, p0, Lcom/aadhk/restpos/d/bu;->p:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->q:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->K:Ljava/lang/String;

    invoke-static {v1}, Lcom/aadhk/restpos/util/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 320
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->L:Ljava/lang/String;

    invoke-static {v1}, Lcom/aadhk/restpos/util/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 321
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->K:Ljava/lang/String;

    invoke-static {v1}, Lcom/aadhk/restpos/util/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 322
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->L:Ljava/lang/String;

    invoke-static {v1}, Lcom/aadhk/restpos/util/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 323
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/bu;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/bu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/aadhk/restpos/d/bu;->L:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/bu;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/bu;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/bu;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/bu;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/bean/Item;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/bu;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->B:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/bean/Company;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->C:Lcom/aadhk/restpos/bean/Company;

    return-object v0
.end method

.method static synthetic j(Lcom/aadhk/restpos/d/bu;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->o:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/g/k;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->M:Lcom/aadhk/restpos/g/k;

    return-object v0
.end method

.method static synthetic l(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/MgrItemActivity;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 453
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    .line 454
    if-nez v1, :cond_0

    .line 455
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 452
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 458
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 463
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 465
    const v0, 0x7f080284

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/bu;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->p:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Item;->setModifierGroupIds(Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/KitchenNote;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 476
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/KitchenNote;

    .line 477
    if-nez v1, :cond_0

    .line 478
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/KitchenNote;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/KitchenNote;->getId()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 481
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/KitchenNote;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/KitchenNote;->getId()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 486
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 488
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/bu;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 490
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->q:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Item;->setKitchenNoteGroupIds(Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->m()Lcom/aadhk/restpos/g/k;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->M:Lcom/aadhk/restpos/g/k;

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->j()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->z:Ljava/util/Map;

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->k()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->A:Ljava/util/List;

    .line 111
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->l()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->B:Ljava/util/List;

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->f()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->D:Ljava/util/Map;

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->D:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->D:Ljava/util/Map;

    .line 118
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/aadhk/restpos/d/bu;->D:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->E:Ljava/util/List;

    .line 119
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->E:Ljava/util/List;

    const v3, 0x7f080284

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/bu;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->g()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->F:Ljava/util/Map;

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->F:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->F:Ljava/util/Map;

    .line 125
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/aadhk/restpos/d/bu;->F:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->G:Ljava/util/List;

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->G:Ljava/util/List;

    const v3, 0x7f0800eb

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/bu;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    if-nez v0, :cond_7

    .line 129
    new-instance v0, Lcom/aadhk/restpos/bean/Item;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Item;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->h:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->K:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->I:Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->K:Ljava/lang/String;

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->L:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->J:Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->L:Ljava/lang/String;

    .line 145
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v3, p0, Lcom/aadhk/restpos/d/bu;->C:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 147
    iget-object v3, p0, Lcom/aadhk/restpos/d/bu;->C:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_4
    iget-object v3, p0, Lcom/aadhk/restpos/d/bu;->C:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 150
    iget-object v3, p0, Lcom/aadhk/restpos/d/bu;->C:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_5
    iget-object v3, p0, Lcom/aadhk/restpos/d/bu;->C:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 153
    iget-object v3, p0, Lcom/aadhk/restpos/d/bu;->C:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->x:[Ljava/lang/String;

    .line 156
    new-array v3, v5, [Z

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getTax1Id()I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_1
    aput-boolean v0, v3, v2

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getTax2Id()I

    move-result v0

    if-ne v0, v4, :cond_9

    move v0, v1

    :goto_2
    aput-boolean v0, v3, v1

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getTax3Id()I

    move-result v0

    if-ne v0, v5, :cond_a

    :goto_3
    aput-boolean v1, v3, v4

    iput-object v3, p0, Lcom/aadhk/restpos/d/bu;->y:[Z

    .line 157
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bu;->a()V

    .line 158
    return-void

    .line 132
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getBackground()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->K:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getFontColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->L:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 156
    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    move v1, v2

    goto :goto_3
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/MgrItemActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 103
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    const v6, 0x7f080085

    const/4 v1, 0x0

    .line 329
    iget-object v2, p0, Lcom/aadhk/restpos/d/bu;->c:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    .line 330
    new-instance v0, Lcom/aadhk/restpos/d/bx;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/bx;-><init>(Lcom/aadhk/restpos/d/bu;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/MgrItemActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/bu;->K:Ljava/lang/String;

    invoke-static {v2}, Lcom/aadhk/restpos/util/c;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lyuku/ambilwarna/a;->a(I)Lyuku/ambilwarna/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lyuku/ambilwarna/a;->a(Lyuku/ambilwarna/e;)V

    const-string v0, "color_picker_dialog"

    invoke-virtual {v2, v1, v0}, Lyuku/ambilwarna/a;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v2, p0, Lcom/aadhk/restpos/d/bu;->d:Landroid/widget/Button;

    if-ne p1, v2, :cond_2

    .line 332
    new-instance v0, Lcom/aadhk/restpos/d/by;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/by;-><init>(Lcom/aadhk/restpos/d/bu;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/MgrItemActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/bu;->L:Ljava/lang/String;

    invoke-static {v2}, Lcom/aadhk/restpos/util/c;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lyuku/ambilwarna/a;->a(I)Lyuku/ambilwarna/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lyuku/ambilwarna/a;->a(Lyuku/ambilwarna/e;)V

    const-string v0, "color_picker_dialog"

    invoke-virtual {v2, v1, v0}, Lyuku/ambilwarna/a;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :cond_2
    iget-object v2, p0, Lcom/aadhk/restpos/d/bu;->f:Landroid/widget/Button;

    if-ne p1, v2, :cond_3

    .line 334
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->I:Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->K:Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->J:Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->I:Ljava/lang/String;

    invoke-static {v1}, Lcom/aadhk/restpos/util/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->J:Ljava/lang/String;

    invoke-static {v1}, Lcom/aadhk/restpos/util/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->I:Ljava/lang/String;

    invoke-static {v1}, Lcom/aadhk/restpos/util/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->J:Ljava/lang/String;

    invoke-static {v1}, Lcom/aadhk/restpos/util/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 335
    :cond_3
    iget-object v2, p0, Lcom/aadhk/restpos/d/bu;->g:Landroid/widget/Button;

    if-ne p1, v2, :cond_9

    .line 336
    iget-object v2, p0, Lcom/aadhk/restpos/d/bu;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/bu;->l:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/bu;->m:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->k:Landroid/widget/EditText;

    invoke-virtual {p0, v6}, Lcom/aadhk/restpos/d/bu;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    iget-object v6, p0, Lcom/aadhk/restpos/d/bu;->r:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/aadhk/restpos/bean/Item;->setAskPrice(Z)V

    iget-object v5, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    iget-object v6, p0, Lcom/aadhk/restpos/d/bu;->K:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/aadhk/restpos/bean/Item;->setBackground(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    iget-object v6, p0, Lcom/aadhk/restpos/d/bu;->L:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/aadhk/restpos/bean/Item;->setFontColor(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v5, v2}, Lcom/aadhk/restpos/bean/Item;->setName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-static {v3}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/aadhk/restpos/bean/Item;->setPrice(D)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-static {v4}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/Item;->setCost(D)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v2}, Lcom/aadhk/restpos/MgrItemActivity;->i()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/restpos/bean/Item;->setCategoryId(J)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getSequence()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Item;->setSequence(I)V

    :cond_5
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/cc;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/d/cc;-><init>(Lcom/aadhk/restpos/d/bu;B)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v7}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_6
    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->l:Landroid/widget/EditText;

    invoke-virtual {p0, v6}, Lcom/aadhk/restpos/d/bu;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto/16 :goto_1

    :cond_7
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->m:Landroid/widget/EditText;

    invoke-virtual {p0, v6}, Lcom/aadhk/restpos/d/bu;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto/16 :goto_1

    :cond_8
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/ce;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/d/ce;-><init>(Lcom/aadhk/restpos/d/bu;B)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v7}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 337
    :cond_9
    iget-object v2, p0, Lcom/aadhk/restpos/d/bu;->h:Landroid/widget/Button;

    if-ne p1, v2, :cond_a

    .line 338
    new-instance v2, Lcom/aadhk/restpos/c/d;

    iget-object v3, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v2, v3}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0802f7

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/bu;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/c/d;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/aadhk/restpos/d/cb;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/cb;-><init>(Lcom/aadhk/restpos/d/bu;)V

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    invoke-virtual {v2}, Lcom/aadhk/restpos/c/d;->show()V

    goto/16 :goto_0

    .line 339
    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->s:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_b

    .line 340
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->l:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->a(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 341
    :cond_b
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->t:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_c

    .line 342
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->l:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->b(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 343
    :cond_c
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->u:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_d

    .line 344
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->m:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->a(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 345
    :cond_d
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->v:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_e

    .line 346
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->m:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->b(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 355
    :cond_e
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->n:Landroid/widget/EditText;

    if-ne p1, v0, :cond_10

    .line 356
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_f

    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->A:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    new-instance v0, Lcom/aadhk/product/library/b/k;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Item;->getPrinterId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/aadhk/restpos/d/bu;->a(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/b/k;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    const v1, 0x7f08027f

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/k;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/d/bz;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/bz;-><init>(Lcom/aadhk/restpos/d/bu;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v0}, Lcom/aadhk/product/library/b/k;->show()V

    goto/16 :goto_0

    .line 357
    :cond_10
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->o:Landroid/widget/EditText;

    if-ne p1, v0, :cond_11

    .line 358
    new-instance v0, Lcom/aadhk/product/library/b/h;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bu;->x:[Ljava/lang/String;

    iget-object v3, p0, Lcom/aadhk/restpos/d/bu;->y:[Z

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/b/h;-><init>(Landroid/content/Context;[Ljava/lang/String;[Z)V

    const v1, 0x7f080280

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/h;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/d/ca;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ca;-><init>(Lcom/aadhk/restpos/d/bu;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/h;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v0}, Lcom/aadhk/product/library/b/h;->show()V

    goto/16 :goto_0

    .line 359
    :cond_11
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->p:Landroid/widget/EditText;

    if-ne p1, v0, :cond_12

    .line 360
    new-instance v0, Lcom/aadhk/restpos/c/da;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/da;-><init>(Lcom/aadhk/restpos/MgrItemActivity;Lcom/aadhk/restpos/bean/Item;)V

    .line 361
    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v2, 0x7f0802c1

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/MgrItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/da;->setTitle(Ljava/lang/CharSequence;)V

    .line 362
    new-instance v1, Lcom/aadhk/restpos/d/bv;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/bv;-><init>(Lcom/aadhk/restpos/d/bu;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/da;->a(Lcom/aadhk/product/library/b/f;)V

    .line 369
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/da;->show()V

    goto/16 :goto_0

    .line 370
    :cond_12
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->q:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 371
    new-instance v0, Lcom/aadhk/restpos/c/cx;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/cx;-><init>(Lcom/aadhk/restpos/MgrItemActivity;Lcom/aadhk/restpos/bean/Item;)V

    .line 372
    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v2, 0x7f0800ec

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/MgrItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/cx;->setTitle(Ljava/lang/CharSequence;)V

    .line 373
    new-instance v1, Lcom/aadhk/restpos/d/bw;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/bw;-><init>(Lcom/aadhk/restpos/d/bu;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/cx;->a(Lcom/aadhk/product/library/b/f;)V

    .line 380
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/cx;->show()V

    goto/16 :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f0802bf

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/MgrItemActivity;->setTitle(I)V

    .line 88
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/bu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    const-string v1, "bundleItem"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->w:Lcom/aadhk/restpos/bean/Item;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->C:Lcom/aadhk/restpos/bean/Company;

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->C:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/bu;->H:I

    .line 95
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/bu;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->I:Ljava/lang/String;

    .line 96
    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/bu;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->J:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 162
    const v0, 0x7f030086

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0901a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->i:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->j:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0900f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->s:Landroid/widget/ImageButton;

    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0900f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->t:Landroid/widget/ImageButton;

    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0900f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->u:Landroid/widget/ImageButton;

    .line 170
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->u:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->v:Landroid/widget/ImageButton;

    .line 172
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->v:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0901a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->c:Landroid/widget/Button;

    .line 182
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0901a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->d:Landroid/widget/Button;

    .line 184
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0901aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->e:Landroid/widget/Button;

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->f:Landroid/widget/Button;

    .line 187
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->g:Landroid/widget/Button;

    .line 189
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->h:Landroid/widget/Button;

    .line 191
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0900f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->k:Landroid/widget/EditText;

    .line 194
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0900f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->l:Landroid/widget/EditText;

    .line 195
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->m:Landroid/widget/EditText;

    .line 196
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0901a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->n:Landroid/widget/EditText;

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->n:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0901a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->o:Landroid/widget/EditText;

    .line 199
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->o:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0901a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->p:Landroid/widget/EditText;

    .line 201
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->p:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0901a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->q:Landroid/widget/EditText;

    .line 203
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->q:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    const v1, 0x7f0901a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bu;->r:Landroid/widget/CheckBox;

    .line 229
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->l:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    const/4 v2, 0x1

    new-instance v3, Lcom/aadhk/restpos/util/g;

    iget v4, p0, Lcom/aadhk/restpos/d/bu;->H:I

    invoke-direct {v3, v4}, Lcom/aadhk/restpos/util/g;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 230
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->b:Landroid/view/View;

    return-object v0
.end method
