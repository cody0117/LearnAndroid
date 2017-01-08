.class public Lcom/aadhk/restpos/KitchenActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# static fields
.field private static t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Landroid/net/wifi/p2p/WifiP2pManager;

.field private C:Landroid/content/IntentFilter;

.field private D:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private E:Landroid/content/BroadcastReceiver;

.field private F:Landroid/app/ProgressDialog;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field a:Landroid/os/Handler;

.field private o:Lcom/aadhk/restpos/d/aq;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/FrameLayout;

.field private u:Lcom/aadhk/restpos/g/h;

.field private v:Lcom/aadhk/restpos/util/r;

.field private w:Landroid/widget/LinearLayout;

.field private x:Ljava/util/Timer;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/restpos/KitchenActivity;->A:Z

    .line 76
    iput-object v1, p0, Lcom/aadhk/restpos/KitchenActivity;->E:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object v1, p0, Lcom/aadhk/restpos/KitchenActivity;->F:Landroid/app/ProgressDialog;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->G:Ljava/util/List;

    .line 422
    new-instance v0, Lcom/aadhk/restpos/u;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/u;-><init>(Lcom/aadhk/restpos/KitchenActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->a:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/KitchenActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/aadhk/restpos/KitchenActivity;->y:I

    return p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/KitchenActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->w:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/KitchenActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/aadhk/restpos/KitchenActivity;->w:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter

    .prologue
    .line 59
    sput-object p0, Lcom/aadhk/restpos/KitchenActivity;->t:Ljava/util/List;

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    const-string v0, "serviceData"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 253
    sput-object v0, Lcom/aadhk/restpos/KitchenActivity;->t:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/KitchenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/aadhk/restpos/KitchenActivity;->k()V

    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/KitchenActivity;)Lcom/aadhk/restpos/g/h;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->u:Lcom/aadhk/restpos/g/h;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/KitchenActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->G:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j()Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/aadhk/restpos/KitchenActivity;->t:Ljava/util/List;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 244
    new-instance v0, Lcom/aadhk/restpos/d/aq;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/aq;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->o:Lcom/aadhk/restpos/d/aq;

    .line 245
    invoke-virtual {p0}, Lcom/aadhk/restpos/KitchenActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 246
    const v1, 0x7f090295

    iget-object v2, p0, Lcom/aadhk/restpos/KitchenActivity;->o:Lcom/aadhk/restpos/d/aq;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 248
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 249
    return-void
.end method


# virtual methods
.method public final a()Lcom/aadhk/restpos/g/h;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->u:Lcom/aadhk/restpos/g/h;

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput p1, p0, Lcom/aadhk/restpos/KitchenActivity;->z:I

    .line 490
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget v0, p0, Lcom/aadhk/restpos/KitchenActivity;->y:I

    mul-int/lit8 v0, v0, 0x3

    :goto_0
    iget v2, p0, Lcom/aadhk/restpos/KitchenActivity;->y:I

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_0

    .line 158
    sget-object v2, Lcom/aadhk/restpos/KitchenActivity;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 159
    sget-object v2, Lcom/aadhk/restpos/KitchenActivity;->t:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    return-object v1
.end method

.method public final c()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 167
    sget-object v1, Lcom/aadhk/restpos/KitchenActivity;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/aadhk/restpos/KitchenActivity;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/aadhk/restpos/KitchenActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/KitchenActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 176
    sget-object v1, Lcom/aadhk/restpos/KitchenActivity;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/aadhk/restpos/KitchenActivity;->y:I

    mul-int/lit8 v2, v2, 0x3

    if-gt v1, v2, :cond_0

    .line 177
    iput v0, p0, Lcom/aadhk/restpos/KitchenActivity;->y:I

    .line 180
    :cond_0
    iget-boolean v1, p0, Lcom/aadhk/restpos/KitchenActivity;->A:Z

    if-eqz v1, :cond_3

    .line 181
    invoke-direct {p0}, Lcom/aadhk/restpos/KitchenActivity;->k()V

    .line 186
    :goto_1
    iput-boolean v0, p0, Lcom/aadhk/restpos/KitchenActivity;->A:Z

    .line 187
    sget-object v1, Lcom/aadhk/restpos/KitchenActivity;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    move v4, v0

    .line 188
    :goto_2
    sget-object v0, Lcom/aadhk/restpos/KitchenActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_8

    .line 189
    rem-int/lit8 v0, v4, 0x3

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/aadhk/restpos/KitchenActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030025

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 191
    const v0, 0x7f090068

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->r:Landroid/widget/LinearLayout;

    .line 192
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    iget v0, p0, Lcom/aadhk/restpos/KitchenActivity;->y:I

    div-int/lit8 v1, v4, 0x3

    if-ne v0, v1, :cond_4

    .line 194
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->r:Landroid/widget/LinearLayout;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 195
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->r:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->w:Landroid/widget/LinearLayout;

    .line 199
    :goto_3
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->r:Landroid/widget/LinearLayout;

    div-int/lit8 v1, v4, 0x3

    new-instance v2, Lcom/aadhk/restpos/t;

    invoke-direct {v2, p0, v1, v0}, Lcom/aadhk/restpos/t;-><init>(Lcom/aadhk/restpos/KitchenActivity;ILandroid/widget/LinearLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/aadhk/restpos/KitchenActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030024

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 202
    const v0, 0x7f090065

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 203
    const v1, 0x7f090066

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 204
    const v2, 0x7f090067

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 205
    sget-object v3, Lcom/aadhk/restpos/KitchenActivity;->t:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    sget-object v3, Lcom/aadhk/restpos/KitchenActivity;->t:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getOrderTime()Ljava/lang/String;

    move-result-object v3

    .line 207
    iget-object v6, p0, Lcom/aadhk/restpos/KitchenActivity;->v:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v6}, Lcom/aadhk/restpos/util/r;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/aadhk/restpos/util/o;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v3, p0, Lcom/aadhk/restpos/KitchenActivity;->v:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v3}, Lcom/aadhk/restpos/util/r;->I()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 209
    iget-object v1, p0, Lcom/aadhk/restpos/KitchenActivity;->v:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->I()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 210
    iget-object v1, p0, Lcom/aadhk/restpos/KitchenActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    sget-object v1, Lcom/aadhk/restpos/KitchenActivity;->t:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getOrderTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/aadhk/product/library/c/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aadhk/restpos/util/o;->f(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 212
    iget-object v3, p0, Lcom/aadhk/restpos/KitchenActivity;->v:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v3}, Lcom/aadhk/restpos/util/r;->F()I

    move-result v3

    int-to-long v5, v3

    cmp-long v3, v1, v5

    if-lez v3, :cond_5

    .line 213
    const v1, 0x7f070092

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 188
    :goto_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_2

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/KitchenActivity;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/aadhk/restpos/KitchenActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 183
    :cond_3
    iget-object v1, p0, Lcom/aadhk/restpos/KitchenActivity;->o:Lcom/aadhk/restpos/d/aq;

    invoke-virtual {p0}, Lcom/aadhk/restpos/KitchenActivity;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/d/aq;->a(Ljava/util/List;)V

    goto/16 :goto_1

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->r:Landroid/widget/LinearLayout;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 214
    :cond_5
    iget-object v3, p0, Lcom/aadhk/restpos/KitchenActivity;->v:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v3}, Lcom/aadhk/restpos/util/r;->F()I

    move-result v3

    int-to-long v5, v3

    cmp-long v3, v1, v5

    if-gez v3, :cond_6

    iget-object v3, p0, Lcom/aadhk/restpos/KitchenActivity;->v:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v3}, Lcom/aadhk/restpos/util/r;->G()I

    move-result v3

    int-to-long v5, v3

    cmp-long v3, v1, v5

    if-lez v3, :cond_6

    .line 215
    const v1, 0x7f070093

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 216
    :cond_6
    iget-object v3, p0, Lcom/aadhk/restpos/KitchenActivity;->v:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v3}, Lcom/aadhk/restpos/util/r;->G()I

    move-result v3

    int-to-long v5, v3

    cmp-long v3, v1, v5

    if-gez v3, :cond_7

    iget-object v3, p0, Lcom/aadhk/restpos/KitchenActivity;->v:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v3}, Lcom/aadhk/restpos/util/r;->H()I

    move-result v3

    int-to-long v5, v3

    cmp-long v1, v1, v5

    if-lez v1, :cond_7

    .line 217
    const v1, 0x7f070094

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 219
    :cond_7
    const v1, 0x7f070095

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 223
    :cond_8
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/aadhk/restpos/KitchenActivity;->z:I

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/restpos/KitchenActivity;->A:Z

    .line 498
    return-void
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->v:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->F()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->v:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->G()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->v:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->H()I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->v:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->I()I

    move-result v0

    return v0
.end method

.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 360
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->F:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->F:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->F:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 363
    :cond_0
    sput-object p1, Lcom/aadhk/restpos/KitchenActivity;->n:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 364
    invoke-static {p1}, Lcom/aadhk/restpos/KitchenActivity;->a(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    .line 368
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v0, :cond_2

    .line 369
    new-instance v0, Lcom/aadhk/restpos/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/x;-><init>(Lcom/aadhk/restpos/KitchenActivity;B)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/x;->start()V

    .line 386
    :cond_1
    :goto_0
    return-void

    .line 370
    :cond_2
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_1

    .line 373
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-static {v0}, Lcom/aadhk/restpos/KitchenActivity;->a(Z)V

    .line 377
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aadhk/restpos/DataTransferService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    const-string v1, "com.android.wifidirect.SEND_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 380
    const-string v2, "kitchen"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v2, "go_host"

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v2, "go_port"

    const/16 v3, 0x231c

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 383
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/KitchenActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string v0, "9fa2b19a"

    invoke-static {p0, v0}, Lcom/bugsense/trace/BugSenseHandler;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/aadhk/restpos/KitchenActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 85
    const v0, 0x7f08039d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/KitchenActivity;->setTitle(I)V

    .line 86
    const v0, 0x7f0300b1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/KitchenActivity;->setContentView(I)V

    .line 87
    const v0, 0x7f090296

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/KitchenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->p:Landroid/widget/LinearLayout;

    .line 88
    const v0, 0x7f090295

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/KitchenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->s:Landroid/widget/FrameLayout;

    .line 89
    const v0, 0x7f090297

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/KitchenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->q:Landroid/widget/LinearLayout;

    .line 90
    new-instance v0, Lcom/aadhk/restpos/g/h;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->u:Lcom/aadhk/restpos/g/h;

    .line 91
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->v:Lcom/aadhk/restpos/util/r;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->C:Landroid/content/IntentFilter;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/KitchenActivity;->t:Ljava/util/List;

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->C:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->C:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->C:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->C:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/KitchenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->B:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->B:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/aadhk/restpos/KitchenActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->D:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 102
    new-instance v0, Lcom/aadhk/restpos/wifidirect/KitchenWiFiDirectBroadcastReceiver;

    iget-object v1, p0, Lcom/aadhk/restpos/KitchenActivity;->B:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/aadhk/restpos/KitchenActivity;->D:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {v0, v1, v2, p0}, Lcom/aadhk/restpos/wifidirect/KitchenWiFiDirectBroadcastReceiver;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/aadhk/restpos/KitchenActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->E:Landroid/content/BroadcastReceiver;

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->E:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/aadhk/restpos/KitchenActivity;->C:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/aadhk/restpos/KitchenActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0}, Lcom/aadhk/restpos/KitchenActivity;->c()V

    .line 105
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/aadhk/restpos/KitchenActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 273
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->u:Lcom/aadhk/restpos/g/h;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 475
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/KitchenActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 476
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 477
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 278
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    .line 279
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/aadhk/restpos/TableListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 298
    :goto_0
    return v0

    .line 281
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f09030f

    if-ne v2, v3, :cond_2

    .line 282
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/aadhk/restpos/WiFiDirectActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/KitchenActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    move v0, v1

    .line 298
    goto :goto_0

    .line 284
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f090311

    if-ne v2, v3, :cond_3

    .line 285
    invoke-static {p0}, Lcom/aadhk/restpos/util/q;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 287
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f090310

    if-ne v2, v3, :cond_4

    .line 288
    iput-boolean v0, p0, Lcom/aadhk/restpos/KitchenActivity;->A:Z

    .line 289
    iput v1, p0, Lcom/aadhk/restpos/KitchenActivity;->z:I

    .line 290
    new-instance v2, Lcom/aadhk/product/library/a/d;

    new-instance v3, Lcom/aadhk/restpos/w;

    invoke-direct {v3, p0, v1}, Lcom/aadhk/restpos/w;-><init>(Lcom/aadhk/restpos/KitchenActivity;B)V

    invoke-direct {v2, v3, p0, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 291
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 293
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f090312

    if-ne v2, v3, :cond_1

    .line 294
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/aadhk/restpos/KitchenSettingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/KitchenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onPause()V

    .line 353
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->x:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenActivity;->x:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 356
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onResume()V

    .line 144
    return-void
.end method
