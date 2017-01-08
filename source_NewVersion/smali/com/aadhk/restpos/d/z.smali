.class public final Lcom/aadhk/restpos/d/z;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:[Ljava/lang/String;

.field private B:[Z

.field private C:Ljava/util/Map;
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

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/aadhk/restpos/bean/Company;

.field private G:Ljava/util/Map;
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

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J:Landroid/content/res/Resources;

.field private K:Lcom/aadhk/restpos/b/n;

.field private L:Lcom/aadhk/restpos/b/i;

.field private M:I

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

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

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/CheckBox;

.field private t:Landroid/widget/ImageButton;

.field private u:Landroid/widget/ImageButton;

.field private v:Landroid/widget/ImageButton;

.field private w:Landroid/widget/ImageButton;

.field private x:Landroid/widget/ImageButton;

.field private y:Landroid/widget/ImageButton;

.field private z:Lcom/aadhk/restpos/bean/Item;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 404
    move v1, v2

    .line 405
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->E:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 407
    add-int/lit8 v2, v1, 0x1

    .line 411
    :cond_0
    return v2

    .line 405
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/z;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/z;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/aadhk/restpos/d/z;->P:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getPrice()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/aadhk/product/library/c/h;->c(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->C:Ljava/util/Map;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getPrinterId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->J:Landroid/content/res/Resources;

    const v1, 0x7f090230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->n:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const-string v0, ""

    .line 228
    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getTax1Id()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 229
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->F:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getTax2Id()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->F:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->o:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 240
    const-string v0, ""

    .line 241
    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getModifierGroupIds()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 242
    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getModifierGroupIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 243
    const-string v3, "\\,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 244
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 245
    aget-object v4, v3, v1

    .line 246
    if-nez v1, :cond_4

    .line 247
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->G:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->F:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->G:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 253
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 254
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->J:Landroid/content/res/Resources;

    const v1, 0x7f090233

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    :cond_6
    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->p:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->q:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Item;->getQty()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->isWarn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 259
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 260
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/z;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080061

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->r:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 271
    :goto_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->r:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Item;->getWarnQty()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->P:Ljava/lang/String;

    invoke-static {v1}, Lcom/aadhk/restpos/f/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 274
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->Q:Ljava/lang/String;

    invoke-static {v1}, Lcom/aadhk/restpos/f/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 275
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->P:Ljava/lang/String;

    invoke-static {v1}, Lcom/aadhk/restpos/f/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 276
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->Q:Ljava/lang/String;

    invoke-static {v1}, Lcom/aadhk/restpos/f/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 277
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    return-void

    .line 265
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 266
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/z;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08006d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->r:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/z;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->r:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/z;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/aadhk/restpos/d/z;->Q:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 415
    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 416
    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->J:Landroid/content/res/Resources;

    const v3, 0x7f090230

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    move v1, v0

    .line 417
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 418
    add-int/lit8 v3, v1, 0x1

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->D:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    .line 417
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 420
    :cond_0
    new-instance v0, Lcom/aadhk/product/library/b/k;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->a:Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Item;->getPrinterId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/aadhk/restpos/d/z;->a(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/b/k;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 421
    const v1, 0x7f09022d

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/k;->setTitle(I)V

    .line 422
    new-instance v1, Lcom/aadhk/restpos/d/ad;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/ad;-><init>(Lcom/aadhk/restpos/d/z;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/f;)V

    .line 435
    invoke-virtual {v0}, Lcom/aadhk/product/library/b/k;->show()V

    .line 436
    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/z;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->x:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/z;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->y:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/z;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/z;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/z;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/z;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/d/z;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/aadhk/restpos/d/z;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/aadhk/restpos/d/z;)Lcom/aadhk/restpos/bean/Item;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    return-object v0
.end method

.method static synthetic l(Lcom/aadhk/restpos/d/z;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->E:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lcom/aadhk/restpos/d/z;)Lcom/aadhk/restpos/bean/Company;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->F:Lcom/aadhk/restpos/bean/Company;

    return-object v0
.end method

.method static synthetic n(Lcom/aadhk/restpos/d/z;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->o:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic o(Lcom/aadhk/restpos/d/z;)Lcom/aadhk/restpos/b/i;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->L:Lcom/aadhk/restpos/b/i;

    return-object v0
.end method

.method static synthetic p(Lcom/aadhk/restpos/d/z;)Lcom/aadhk/restpos/MgrItemActivity;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->a:Lcom/aadhk/restpos/MgrItemActivity;

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
    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 385
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    .line 386
    if-nez v1, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 384
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 390
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

    .line 391
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

    .line 395
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->J:Landroid/content/res/Resources;

    const v1, 0x7f090233

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->p:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Item;->setModifierGroupIds(Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 106
    new-instance v3, Lcom/aadhk/restpos/b/i;

    invoke-direct {v3, v0}, Lcom/aadhk/restpos/b/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v3, p0, Lcom/aadhk/restpos/d/z;->L:Lcom/aadhk/restpos/b/i;

    .line 107
    new-instance v3, Lcom/aadhk/restpos/b/n;

    invoke-direct {v3, v0}, Lcom/aadhk/restpos/b/n;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v3, p0, Lcom/aadhk/restpos/d/z;->K:Lcom/aadhk/restpos/b/n;

    .line 109
    new-instance v3, Lcom/aadhk/restpos/b/r;

    invoke-direct {v3, v0}, Lcom/aadhk/restpos/b/r;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    invoke-virtual {v3}, Lcom/aadhk/restpos/b/r;->b()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/aadhk/restpos/d/z;->C:Ljava/util/Map;

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/aadhk/restpos/d/z;->C:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/aadhk/restpos/d/z;->D:Ljava/util/List;

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/aadhk/restpos/d/z;->C:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/aadhk/restpos/d/z;->E:Ljava/util/List;

    .line 114
    new-instance v3, Lcom/aadhk/restpos/b/k;

    invoke-direct {v3, v0}, Lcom/aadhk/restpos/b/k;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 115
    invoke-virtual {v3}, Lcom/aadhk/restpos/b/k;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->G:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->G:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->H:Ljava/util/List;

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->H:Ljava/util/List;

    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->J:Landroid/content/res/Resources;

    const v4, 0x7f090233

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->G:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->I:Ljava/util/List;

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    if-nez v0, :cond_5

    .line 121
    new-instance v0, Lcom/aadhk/restpos/bean/Item;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Item;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->h:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->P:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->N:Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->P:Ljava/lang/String;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->Q:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->O:Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->Q:Ljava/lang/String;

    .line 137
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->F:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 139
    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->F:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_2
    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->F:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 142
    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->F:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->A:[Ljava/lang/String;

    .line 145
    new-array v3, v5, [Z

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getTax1Id()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_1
    aput-boolean v0, v3, v2

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getTax2Id()I

    move-result v0

    if-ne v0, v5, :cond_4

    move v2, v1

    :cond_4
    aput-boolean v2, v3, v1

    iput-object v3, p0, Lcom/aadhk/restpos/d/z;->B:[Z

    .line 147
    invoke-direct {p0}, Lcom/aadhk/restpos/d/z;->a()V

    .line 148
    return-void

    .line 124
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getBackground()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->P:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getFontColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->Q:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 145
    goto :goto_1
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 561
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/MgrItemActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->a:Lcom/aadhk/restpos/MgrItemActivity;

    .line 562
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 563
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f090055

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 284
    new-instance v0, Lcom/aadhk/restpos/d/ab;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/ab;-><init>(Lcom/aadhk/restpos/d/z;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/MgrItemActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/z;->P:Ljava/lang/String;

    invoke-static {v2}, Lcom/aadhk/restpos/f/c;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lyuku/ambilwarna/a;->a(I)Lyuku/ambilwarna/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lyuku/ambilwarna/a;->a(Lyuku/ambilwarna/e;)V

    const-string v0, "color_picker_dialog"

    invoke-virtual {v2, v1, v0}, Lyuku/ambilwarna/a;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 286
    new-instance v0, Lcom/aadhk/restpos/d/ac;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/ac;-><init>(Lcom/aadhk/restpos/d/z;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/MgrItemActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/z;->Q:Ljava/lang/String;

    invoke-static {v2}, Lcom/aadhk/restpos/f/c;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lyuku/ambilwarna/a;->a(I)Lyuku/ambilwarna/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lyuku/ambilwarna/a;->a(Lyuku/ambilwarna/e;)V

    const-string v0, "color_picker_dialog"

    invoke-virtual {v2, v1, v0}, Lyuku/ambilwarna/a;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->N:Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->O:Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->Q:Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->N:Ljava/lang/String;

    invoke-static {v1}, Lcom/aadhk/restpos/f/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->O:Ljava/lang/String;

    invoke-static {v1}, Lcom/aadhk/restpos/f/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->N:Ljava/lang/String;

    invoke-static {v1}, Lcom/aadhk/restpos/f/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->O:Ljava/lang/String;

    invoke-static {v1}, Lcom/aadhk/restpos/f/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 290
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->l:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/aadhk/restpos/d/z;->J:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    :goto_1
    iget-object v5, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    iget-object v6, p0, Lcom/aadhk/restpos/d/z;->P:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/aadhk/restpos/bean/Item;->setBackground(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    iget-object v6, p0, Lcom/aadhk/restpos/d/z;->Q:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/aadhk/restpos/bean/Item;->setFontColor(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v5, v3}, Lcom/aadhk/restpos/bean/Item;->setName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-static {v4}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/Item;->setPrice(D)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    iget-object v4, p0, Lcom/aadhk/restpos/d/z;->q:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Item;->setQty(I)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->s:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v3, v2}, Lcom/aadhk/restpos/bean/Item;->setWarn(Z)V

    :goto_2
    iget-object v2, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->r:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/Item;->setWarnQty(I)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    iget-object v2, p0, Lcom/aadhk/restpos/d/z;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v2}, Lcom/aadhk/restpos/MgrItemActivity;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/restpos/bean/Item;->setCategoryId(J)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->L:Lcom/aadhk/restpos/b/i;

    iget-object v2, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/b/i;->a(Lcom/aadhk/restpos/bean/Item;)V

    :goto_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->c()V

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->a:Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/z;->J:Landroid/content/res/Resources;

    const v3, 0x7f09023e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    const-string v0, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->m:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/aadhk/restpos/d/z;->J:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/bean/Item;->setWarn(Z)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->L:Lcom/aadhk/restpos/b/i;

    iget-object v2, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/b/i;->b(Lcom/aadhk/restpos/bean/Item;)V

    goto :goto_3

    .line 291
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_9

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " b.rowid="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->K:Lcom/aadhk/restpos/b/n;

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/b/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->J:Landroid/content/res/Resources;

    const v2, 0x7f0900be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/aadhk/restpos/c/g;

    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v3}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->J:Landroid/content/res/Resources;

    const v4, 0x7f090298

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/aadhk/restpos/d/af;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/af;-><init>(Lcom/aadhk/restpos/d/z;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V

    goto/16 :goto_0

    .line 293
    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->l:Landroid/widget/EditText;

    if-ne p1, v0, :cond_a

    .line 294
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_0

    .line 295
    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->m:Landroid/widget/EditText;

    if-ne p1, v0, :cond_b

    .line 296
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_0

    .line 297
    :cond_b
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->t:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_c

    .line 298
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->m:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->a(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 299
    :cond_c
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->u:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_d

    .line 300
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->m:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->b(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 301
    :cond_d
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->v:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_e

    .line 302
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->q:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->a(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 303
    :cond_e
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->w:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_f

    .line 304
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->q:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->b(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 305
    :cond_f
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->x:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_10

    .line 306
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->r:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->a(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 307
    :cond_10
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->y:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_11

    .line 308
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->r:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->b(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 309
    :cond_11
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->n:Landroid/widget/EditText;

    if-ne p1, v0, :cond_12

    .line 310
    invoke-direct {p0}, Lcom/aadhk/restpos/d/z;->b()V

    goto/16 :goto_0

    .line 311
    :cond_12
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->o:Landroid/widget/EditText;

    if-ne p1, v0, :cond_13

    .line 312
    new-instance v0, Lcom/aadhk/product/library/b/h;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->a:Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/z;->A:[Ljava/lang/String;

    iget-object v3, p0, Lcom/aadhk/restpos/d/z;->B:[Z

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/b/h;-><init>(Landroid/content/Context;[Ljava/lang/String;[Z)V

    const v1, 0x7f09022f

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/h;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/d/ae;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ae;-><init>(Lcom/aadhk/restpos/d/z;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/h;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v0}, Lcom/aadhk/product/library/b/h;->show()V

    goto/16 :goto_0

    .line 313
    :cond_13
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->p:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->a:Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/MgrItemActivity;->b(Lcom/aadhk/restpos/bean/Item;)V

    goto/16 :goto_0

    :cond_14
    move v0, v2

    goto/16 :goto_1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f090264

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/MgrItemActivity;->setTitle(I)V

    .line 89
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/z;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    const-string v1, "bundleItem"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->z:Lcom/aadhk/restpos/bean/Item;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->F:Lcom/aadhk/restpos/bean/Company;

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->F:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/z;->M:I

    .line 96
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/z;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->J:Landroid/content/res/Resources;

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->J:Landroid/content/res/Resources;

    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->N:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->J:Landroid/content/res/Resources;

    const v1, 0x7f08003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->O:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 152
    const v0, 0x7f03006f

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->j:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->k:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->t:Landroid/widget/ImageButton;

    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b00d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->u:Landroid/widget/ImageButton;

    .line 158
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->u:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b0156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->v:Landroid/widget/ImageButton;

    .line 160
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->v:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b0157

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->w:Landroid/widget/ImageButton;

    .line 162
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->w:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->x:Landroid/widget/ImageButton;

    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->y:Landroid/widget/ImageButton;

    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->c:Landroid/widget/Button;

    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->d:Landroid/widget/Button;

    .line 170
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b0160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->e:Landroid/widget/Button;

    .line 172
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b0161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->f:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->g:Landroid/widget/Button;

    .line 175
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->h:Landroid/widget/Button;

    .line 177
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b00d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->l:Landroid/widget/EditText;

    .line 180
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b00d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->m:Landroid/widget/EditText;

    .line 182
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->m:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b0153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->n:Landroid/widget/EditText;

    .line 184
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->n:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b0154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->o:Landroid/widget/EditText;

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->o:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b0152

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->p:Landroid/widget/EditText;

    .line 188
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->p:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b0155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->q:Landroid/widget/EditText;

    .line 190
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b0158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->s:Landroid/widget/CheckBox;

    .line 191
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->s:Landroid/widget/CheckBox;

    new-instance v1, Lcom/aadhk/restpos/d/aa;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/aa;-><init>(Lcom/aadhk/restpos/d/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 207
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b0151

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->i:Landroid/widget/TextView;

    .line 208
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    const v1, 0x7f0b0159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/z;->r:Landroid/widget/EditText;

    .line 209
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 210
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->r:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 212
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 213
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->m:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 214
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->m:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/aadhk/restpos/f/e;

    iget v3, p0, Lcom/aadhk/restpos/d/z;->M:I

    invoke-direct {v2, v3}, Lcom/aadhk/restpos/f/e;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 215
    iget-object v0, p0, Lcom/aadhk/restpos/d/z;->b:Landroid/view/View;

    return-object v0
.end method
