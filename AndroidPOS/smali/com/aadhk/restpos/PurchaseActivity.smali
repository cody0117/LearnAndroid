.class public Lcom/aadhk/restpos/PurchaseActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/ImageView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field a:Lcom/aadhk/a/j;

.field o:Lcom/aadhk/a/h;

.field private p:Lcom/aadhk/a/d;

.field private q:Z

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 124
    new-instance v0, Lcom/aadhk/restpos/cv;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/cv;-><init>(Lcom/aadhk/restpos/PurchaseActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->a:Lcom/aadhk/a/j;

    .line 222
    new-instance v0, Lcom/aadhk/restpos/cw;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/cw;-><init>(Lcom/aadhk/restpos/PurchaseActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->o:Lcom/aadhk/a/h;

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 73
    invoke-static {p0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 74
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 75
    invoke-direct {p0, v3}, Lcom/aadhk/restpos/PurchaseActivity;->a(Ljava/lang/String;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/PurchaseActivity;Lcom/aadhk/a/l;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    const-string v0, "com.aadhk.restpos.report.sales"

    invoke-virtual {p1, v0}, Lcom/aadhk/a/l;->a(Ljava/lang/String;)Lcom/aadhk/a/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aadhk/restpos/PurchaseActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/a/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "com.aadhk.restpos.feature.receipt"

    invoke-virtual {p1, v0}, Lcom/aadhk/a/l;->a(Ljava/lang/String;)Lcom/aadhk/a/o;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aadhk/restpos/PurchaseActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/a/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v0, "com.aadhk.restpos.feature.kitchen"

    invoke-virtual {p1, v0}, Lcom/aadhk/a/l;->a(Ljava/lang/String;)Lcom/aadhk/a/o;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/aadhk/restpos/PurchaseActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/a/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v0, "com.aadhk.restpos.feature.kitchen2"

    invoke-virtual {p1, v0}, Lcom/aadhk/a/l;->a(Ljava/lang/String;)Lcom/aadhk/a/o;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/aadhk/restpos/PurchaseActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/a/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const-string v0, "com.aadhk.restpos.feature.bar"

    invoke-virtual {p1, v0}, Lcom/aadhk/a/l;->a(Ljava/lang/String;)Lcom/aadhk/a/o;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/aadhk/restpos/PurchaseActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/a/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const-string v0, "com.aadhk.restpos.feature.price"

    invoke-virtual {p1, v0}, Lcom/aadhk/a/l;->a(Ljava/lang/String;)Lcom/aadhk/a/o;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/aadhk/restpos/PurchaseActivity;->F:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/a/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const-string v0, "com.aadhk.restpos.feature.payinout"

    invoke-virtual {p1, v0}, Lcom/aadhk/a/l;->a(Ljava/lang/String;)Lcom/aadhk/a/o;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/aadhk/restpos/PurchaseActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/a/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/PurchaseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/PurchaseActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 239
    const-string v0, "com.aadhk.restpos.report.sales"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    const-string v0, "com.aadhk.restpos.feature.receipt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 247
    :cond_2
    const-string v0, "com.aadhk.restpos.feature.kitchen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 251
    :cond_3
    const-string v0, "com.aadhk.restpos.feature.kitchen2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 255
    :cond_4
    const-string v0, "com.aadhk.restpos.feature.bar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 259
    :cond_5
    const-string v0, "com.aadhk.restpos.feature.price"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 260
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 263
    :cond_6
    const-string v0, "com.aadhk.restpos.feature.payinout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/aadhk/restpos/PurchaseActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->q:Z

    return v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/PurchaseActivity;)Lcom/aadhk/a/d;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->p:Lcom/aadhk/a/d;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/PurchaseActivity;Lcom/aadhk/a/l;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/PurchaseActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v0, "db_initialized"

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "com.aadhk.restpos.full"

    invoke-virtual {p1, v0}, Lcom/aadhk/a/l;->b(Ljava/lang/String;)Lcom/aadhk/a/m;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/aadhk/a/m;->e()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/aadhk/a/m;

    invoke-virtual {v7}, Lcom/aadhk/a/m;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "10002"

    const-string v3, "com.aadhk.restpos.report.sales"

    invoke-virtual {v7}, Lcom/aadhk/a/m;->d()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    new-instance v0, Lcom/aadhk/a/m;

    invoke-virtual {v7}, Lcom/aadhk/a/m;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "10003"

    const-string v3, "com.aadhk.restpos.feature.receipt"

    invoke-virtual {v7}, Lcom/aadhk/a/m;->d()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    new-instance v0, Lcom/aadhk/a/m;

    invoke-virtual {v7}, Lcom/aadhk/a/m;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "10005"

    const-string v3, "com.aadhk.restpos.feature.kitchen"

    invoke-virtual {v7}, Lcom/aadhk/a/m;->d()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    new-instance v0, Lcom/aadhk/a/m;

    invoke-virtual {v7}, Lcom/aadhk/a/m;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "10004"

    const-string v3, "com.aadhk.restpos.feature.bar"

    invoke-virtual {v7}, Lcom/aadhk/a/m;->d()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    new-instance v0, Lcom/aadhk/a/m;

    invoke-virtual {v7}, Lcom/aadhk/a/m;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "10006"

    const-string v3, "com.aadhk.restpos.feature.price"

    invoke-virtual {v7}, Lcom/aadhk/a/m;->d()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "db_initialized"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "com.aadhk.restpos.report.sales"

    invoke-virtual {p1, v0}, Lcom/aadhk/a/l;->b(Ljava/lang/String;)Lcom/aadhk/a/m;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/aadhk/a/m;->e()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    :cond_3
    const-string v0, "com.aadhk.restpos.feature.receipt"

    invoke-virtual {p1, v0}, Lcom/aadhk/a/l;->b(Ljava/lang/String;)Lcom/aadhk/a/m;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/aadhk/a/m;->e()I

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    :cond_4
    const-string v0, "com.aadhk.restpos.feature.kitchen"

    invoke-virtual {p1, v0}, Lcom/aadhk/a/l;->b(Ljava/lang/String;)Lcom/aadhk/a/m;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/aadhk/a/m;->e()I

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    :cond_5
    const-string v0, "com.aadhk.restpos.feature.kitchen2"

    invoke-virtual {p1, v0}, Lcom/aadhk/a/l;->b(Ljava/lang/String;)Lcom/aadhk/a/m;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/aadhk/a/m;->e()I

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    :cond_6
    const-string v0, "com.aadhk.restpos.feature.bar"

    invoke-virtual {p1, v0}, Lcom/aadhk/a/l;->b(Ljava/lang/String;)Lcom/aadhk/a/m;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/aadhk/a/m;->e()I

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    :cond_7
    const-string v0, "com.aadhk.restpos.feature.price"

    invoke-virtual {p1, v0}, Lcom/aadhk/a/l;->b(Ljava/lang/String;)Lcom/aadhk/a/m;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/aadhk/a/m;->e()I

    move-result v1

    if-nez v1, :cond_8

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    :cond_8
    const-string v0, "com.aadhk.restpos.feature.payinout"

    invoke-virtual {p1, v0}, Lcom/aadhk/a/l;->b(Ljava/lang/String;)Lcom/aadhk/a/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aadhk/a/m;->e()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V
    :try_end_0
    .catch Lcom/aadhk/b/a; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lcom/aadhk/b/a;->printStackTrace()V

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/aadhk/restpos/PurchaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/aadhk/restpos/PurchaseActivity;->a()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->p:Lcom/aadhk/a/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aadhk/a/d;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    invoke-super {p0, p1, p2, p3}, Lcom/aadhk/restpos/POSActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 346
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->q:Z

    if-nez v0, :cond_1

    .line 273
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 274
    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 275
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->r:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->p:Lcom/aadhk/a/d;

    const-string v1, "com.aadhk.restpos.report.sales"

    iget-object v2, p0, Lcom/aadhk/restpos/PurchaseActivity;->o:Lcom/aadhk/a/h;

    const-string v3, ""

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/aadhk/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/aadhk/a/h;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 295
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 280
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->s:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->p:Lcom/aadhk/a/d;

    const-string v1, "com.aadhk.restpos.feature.receipt"

    iget-object v2, p0, Lcom/aadhk/restpos/PurchaseActivity;->o:Lcom/aadhk/a/h;

    const-string v3, ""

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/aadhk/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/aadhk/a/h;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->t:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_4

    .line 283
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->p:Lcom/aadhk/a/d;

    const-string v1, "com.aadhk.restpos.feature.kitchen"

    iget-object v2, p0, Lcom/aadhk/restpos/PurchaseActivity;->o:Lcom/aadhk/a/h;

    const-string v3, ""

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/aadhk/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/aadhk/a/h;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->u:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->p:Lcom/aadhk/a/d;

    const-string v1, "com.aadhk.restpos.feature.kitchen2"

    iget-object v2, p0, Lcom/aadhk/restpos/PurchaseActivity;->o:Lcom/aadhk/a/h;

    const-string v3, ""

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/aadhk/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/aadhk/a/h;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->v:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_6

    .line 287
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->p:Lcom/aadhk/a/d;

    const-string v1, "com.aadhk.restpos.feature.bar"

    iget-object v2, p0, Lcom/aadhk/restpos/PurchaseActivity;->o:Lcom/aadhk/a/h;

    const-string v3, ""

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/aadhk/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/aadhk/a/h;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->w:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_7

    .line 289
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->p:Lcom/aadhk/a/d;

    const-string v1, "com.aadhk.restpos.feature.price"

    iget-object v2, p0, Lcom/aadhk/restpos/PurchaseActivity;->o:Lcom/aadhk/a/h;

    const-string v3, ""

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/aadhk/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/aadhk/a/h;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->x:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->p:Lcom/aadhk/a/d;

    const-string v1, "com.aadhk.restpos.feature.payinout"

    iget-object v2, p0, Lcom/aadhk/restpos/PurchaseActivity;->o:Lcom/aadhk/a/h;

    const-string v3, ""

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/aadhk/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/aadhk/a/h;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->setTitle(I)V

    .line 40
    const v0, 0x7f0300d0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f0902c9

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->r:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902cc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->s:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902cf

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->t:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902d2

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->u:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902d5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->v:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901ba

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->w:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902da

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->x:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902d9

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->y:Landroid/widget/ImageView;

    const v0, 0x7f0902cb

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->z:Landroid/widget/ImageView;

    const v0, 0x7f0902ce

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->A:Landroid/widget/ImageView;

    const v0, 0x7f0902d1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->B:Landroid/widget/ImageView;

    const v0, 0x7f0902d4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->C:Landroid/widget/ImageView;

    const v0, 0x7f0902d7

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->D:Landroid/widget/ImageView;

    const v0, 0x7f0902dc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->E:Landroid/widget/ImageView;

    const v0, 0x7f0902d8

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->F:Landroid/widget/TextView;

    const v0, 0x7f0902ca

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->G:Landroid/widget/TextView;

    const v0, 0x7f0902cd

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->H:Landroid/widget/TextView;

    const v0, 0x7f0902d0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->I:Landroid/widget/TextView;

    const v0, 0x7f0902d3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->J:Landroid/widget/TextView;

    const v0, 0x7f0902d6

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->K:Landroid/widget/TextView;

    const v0, 0x7f0902db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->L:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/aadhk/restpos/PurchaseActivity;->a()V

    .line 43
    new-instance v0, Lcom/aadhk/a/d;

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv9jo4joaEMQ/+0IT3HFkzTfgF/tAsr7eHOVd4QUku8VQWRTCLnOUmWSHM4wPOxoqMn4/p9qPm7p11cPmp4mWRGTMlQtvYlsORAWUcuIkI302K5Ha6XMGxtriskQ0pakEkep28paWjTIJ7IWrBWEgLtGsqV4TqxUazgarW1CyxVWrcRIH9C36aLdG41Qd19+ygKMwwgu1YrHtz8UDjWbJ+jvFDLNCTKICte4ByfSMecFvpiZkv25bvrYcSz0BiTWMapSKBUrQ+63+uRTno611p/2y6qqhaM3MoW2Me7Y81ECeaebc4s/N4zhRpC7W6lXenfg9LfsNoGa5sRI4qxdgiQIDAQAB"

    invoke-direct {v0, p0, v1}, Lcom/aadhk/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->p:Lcom/aadhk/a/d;

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->p:Lcom/aadhk/a/d;

    new-instance v1, Lcom/aadhk/restpos/cu;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/cu;-><init>(Lcom/aadhk/restpos/PurchaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/a/d;->a(Lcom/aadhk/a/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->p:Lcom/aadhk/a/d;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->p:Lcom/aadhk/a/d;

    invoke-virtual {v0}, Lcom/aadhk/a/d;->a()V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aadhk/restpos/PurchaseActivity;->p:Lcom/aadhk/a/d;

    .line 357
    :cond_0
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 358
    return-void
.end method
