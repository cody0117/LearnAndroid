.class public final Lcom/aadhk/restpos/d/bm;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/aadhk/product/library/a/c;

.field private b:Landroid/view/View;

.field private c:Lcom/aadhk/restpos/LoginActivity;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/EditText;

.field private u:Landroid/widget/ImageView;

.field private v:Ljava/lang/String;

.field private w:Lcom/aadhk/restpos/util/r;

.field private x:Lcom/aadhk/restpos/g/i;

.field private y:Lcom/aadhk/restpos/bean/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    .line 212
    new-instance v0, Lcom/aadhk/restpos/d/bo;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/bo;-><init>(Lcom/aadhk/restpos/d/bm;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->a:Lcom/aadhk/product/library/a/c;

    .line 335
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/bm;Lcom/aadhk/restpos/bean/User;)Lcom/aadhk/restpos/bean/User;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/aadhk/restpos/d/bm;->y:Lcom/aadhk/restpos/bean/User;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/bm;Lcom/aadhk/restpos/g/i;)Lcom/aadhk/restpos/g/i;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/aadhk/restpos/d/bm;->x:Lcom/aadhk/restpos/g/i;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/util/r;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->w:Lcom/aadhk/restpos/util/r;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->u:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/LoginActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/bm;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/bm;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->x:Lcom/aadhk/restpos/g/i;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/bm;)V
    .locals 4
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/LoginActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->y:Lcom/aadhk/restpos/bean/User;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bm;->x:Lcom/aadhk/restpos/g/i;

    iget-object v3, p0, Lcom/aadhk/restpos/d/bm;->y:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/g/i;->a(I)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/POSApp;->a(Lcom/aadhk/restpos/bean/User;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->w:Lcom/aadhk/restpos/util/r;

    const-string v1, "pref_user_account"

    iget-object v2, p0, Lcom/aadhk/restpos/d/bm;->y:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->w:Lcom/aadhk/restpos/util/r;

    const-string v1, "pref_user_role"

    iget-object v2, p0, Lcom/aadhk/restpos/d/bm;->y:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->w:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->w:Lcom/aadhk/restpos/util/r;

    const-string v1, "pref_user_password"

    iget-object v2, p0, Lcom/aadhk/restpos/d/bm;->y:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/User;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 313
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/LoginActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/LoginActivity;->c()Lcom/aadhk/restpos/g/i;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->x:Lcom/aadhk/restpos/g/i;

    .line 314
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 75
    check-cast p1, Lcom/aadhk/restpos/LoginActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/LoginActivity;

    .line 76
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x8

    const/4 v0, 0x0

    const/4 v3, 0x6

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 101
    :sswitch_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->t:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const-string v1, ""

    iput-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 107
    :sswitch_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bm;->a()V

    goto :goto_0

    .line 114
    :sswitch_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bm;->a()V

    goto :goto_0

    .line 121
    :sswitch_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bm;->a()V

    goto/16 :goto_0

    .line 128
    :sswitch_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bm;->a()V

    goto/16 :goto_0

    .line 135
    :sswitch_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bm;->a()V

    goto/16 :goto_0

    .line 142
    :sswitch_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bm;->a()V

    goto/16 :goto_0

    .line 149
    :sswitch_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bm;->a()V

    goto/16 :goto_0

    .line 156
    :sswitch_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bm;->a()V

    goto/16 :goto_0

    .line 163
    :sswitch_9
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bm;->a()V

    goto/16 :goto_0

    .line 170
    :sswitch_a
    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bm;->a()V

    goto/16 :goto_0

    .line 177
    :sswitch_b
    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->t:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 187
    :sswitch_c
    iget-object v2, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/LoginActivity;

    const v2, 0x7f080259

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_1
    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lcom/aadhk/product/library/a/d;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->a:Lcom/aadhk/product/library/a/c;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/LoginActivity;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;)V

    .line 189
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_1
    move v0, v1

    .line 187
    goto :goto_1

    .line 193
    :sswitch_d
    new-instance v0, Lcom/aadhk/restpos/c/dm;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/LoginActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bm;->w:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->w()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/dm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    const v1, 0x7f08025b

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/bm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/dm;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    new-instance v1, Lcom/aadhk/restpos/d/bn;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/bn;-><init>(Lcom/aadhk/restpos/d/bm;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/dm;->a(Lcom/aadhk/product/library/b/f;)V

    .line 207
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/dm;->show()V

    goto/16 :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x7f090142 -> :sswitch_1
        0x7f090143 -> :sswitch_2
        0x7f090144 -> :sswitch_3
        0x7f090145 -> :sswitch_4
        0x7f090146 -> :sswitch_5
        0x7f090147 -> :sswitch_6
        0x7f090148 -> :sswitch_7
        0x7f090149 -> :sswitch_8
        0x7f09014a -> :sswitch_9
        0x7f090192 -> :sswitch_d
        0x7f0901e2 -> :sswitch_0
        0x7f090292 -> :sswitch_b
        0x7f090293 -> :sswitch_a
        0x7f090294 -> :sswitch_c
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance v0, Lcom/aadhk/restpos/util/r;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/LoginActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->w:Lcom/aadhk/restpos/util/r;

    .line 62
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 253
    const v0, 0x7f030082

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    .line 254
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f090142

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->g:Landroid/widget/Button;

    .line 255
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f090143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->h:Landroid/widget/Button;

    .line 256
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f090144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->i:Landroid/widget/Button;

    .line 257
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f090145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->j:Landroid/widget/Button;

    .line 258
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f090146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->k:Landroid/widget/Button;

    .line 259
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f090147

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->l:Landroid/widget/Button;

    .line 260
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->m:Landroid/widget/Button;

    .line 261
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f090149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->n:Landroid/widget/Button;

    .line 262
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f09014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->o:Landroid/widget/Button;

    .line 263
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f090293

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->p:Landroid/widget/Button;

    .line 264
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f090292

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->s:Landroid/widget/ImageButton;

    .line 265
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f090294

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->q:Landroid/widget/Button;

    .line 266
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f090192

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->r:Landroid/widget/TextView;

    .line 267
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->t:Landroid/widget/EditText;

    .line 268
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f0901e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->u:Landroid/widget/ImageView;

    .line 269
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f090291

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->e:Landroid/widget/TextView;

    .line 270
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f090194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->d:Landroid/widget/TextView;

    .line 271
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    const v1, 0x7f090191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->f:Landroid/widget/TextView;

    .line 272
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->p:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->q:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->w:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->w:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->w:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_2
    const-string v0, "1.0.0"

    :try_start_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/LoginActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/LoginActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/LoginActivity;

    invoke-virtual {v2}, Lcom/aadhk/restpos/LoginActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v1, 0x7f08024e

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/bm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->b:Landroid/view/View;

    return-object v0

    .line 306
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->r:Landroid/widget/TextView;

    const v1, 0x7f08025d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 68
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/bp;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/bp;-><init>(Lcom/aadhk/restpos/d/bm;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/LoginActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 69
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    return-void
.end method
