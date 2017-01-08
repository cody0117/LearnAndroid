.class public final Lcom/aadhk/restpos/d/w;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Lcom/aadhk/restpos/f/l;

.field private B:Ljava/lang/String;

.field private a:Landroid/view/View;

.field private b:Lcom/aadhk/restpos/LoginActivity;

.field private c:Landroid/widget/LinearLayout;

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

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/EditText;

.field private u:Landroid/widget/ImageView;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/User;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/aadhk/restpos/bean/User;

.field private x:Ljava/lang/String;

.field private y:Landroid/database/sqlite/SQLiteDatabase;

.field private z:Lcom/aadhk/restpos/b/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/w;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->r:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/w;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/aadhk/restpos/d/w;->r:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/w;Lcom/aadhk/restpos/bean/User;)Lcom/aadhk/restpos/bean/User;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/aadhk/restpos/d/w;->w:Lcom/aadhk/restpos/bean/User;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/w;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/aadhk/restpos/d/w;->B:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->u:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 165
    check-cast p1, Lcom/aadhk/restpos/LoginActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/w;->b:Lcom/aadhk/restpos/LoginActivity;

    .line 166
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x6

    const/4 v1, 0x0

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 207
    :sswitch_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->t:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 213
    :sswitch_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-direct {p0}, Lcom/aadhk/restpos/d/w;->a()V

    goto :goto_0

    .line 220
    :sswitch_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-direct {p0}, Lcom/aadhk/restpos/d/w;->a()V

    goto :goto_0

    .line 227
    :sswitch_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-direct {p0}, Lcom/aadhk/restpos/d/w;->a()V

    goto/16 :goto_0

    .line 234
    :sswitch_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-direct {p0}, Lcom/aadhk/restpos/d/w;->a()V

    goto/16 :goto_0

    .line 241
    :sswitch_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-direct {p0}, Lcom/aadhk/restpos/d/w;->a()V

    goto/16 :goto_0

    .line 248
    :sswitch_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-direct {p0}, Lcom/aadhk/restpos/d/w;->a()V

    goto/16 :goto_0

    .line 255
    :sswitch_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-direct {p0}, Lcom/aadhk/restpos/d/w;->a()V

    goto/16 :goto_0

    .line 262
    :sswitch_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-direct {p0}, Lcom/aadhk/restpos/d/w;->a()V

    goto/16 :goto_0

    .line 269
    :sswitch_9
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-direct {p0}, Lcom/aadhk/restpos/d/w;->a()V

    goto/16 :goto_0

    .line 276
    :sswitch_a
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-direct {p0}, Lcom/aadhk/restpos/d/w;->a()V

    goto/16 :goto_0

    .line 283
    :sswitch_b
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->t:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 293
    :sswitch_c
    iget-object v2, p0, Lcom/aadhk/restpos/d/w;->w:Lcom/aadhk/restpos/bean/User;

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->b:Lcom/aadhk/restpos/LoginActivity;

    const v2, 0x7f090210

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Lcom/aadhk/restpos/b/t;

    iget-object v2, p0, Lcom/aadhk/restpos/d/w;->y:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v2}, Lcom/aadhk/restpos/b/t;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/w;->w:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/b/t;->b(I)Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->b:Lcom/aadhk/restpos/LoginActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    iget-object v3, p0, Lcom/aadhk/restpos/d/w;->w:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0, v3, v2}, Lcom/aadhk/restpos/POSApp;->a(Lcom/aadhk/restpos/bean/User;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->A:Lcom/aadhk/restpos/f/l;

    const-string v2, "pref_user_account"

    iget-object v3, p0, Lcom/aadhk/restpos/d/w;->w:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->A:Lcom/aadhk/restpos/f/l;

    const-string v2, "pref_user_role"

    iget-object v3, p0, Lcom/aadhk/restpos/d/w;->w:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->A:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->A:Lcom/aadhk/restpos/f/l;

    iget-object v2, p0, Lcom/aadhk/restpos/d/w;->w:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/w;->w:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/User;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 297
    iget-object v2, p0, Lcom/aadhk/restpos/d/w;->b:Lcom/aadhk/restpos/LoginActivity;

    const-class v3, Lcom/aadhk/restpos/ListTableActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 298
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 299
    invoke-virtual {p0, v0, v1}, Lcom/aadhk/restpos/d/w;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 293
    :cond_2
    iget-object v2, p0, Lcom/aadhk/restpos/d/w;->t:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->b:Lcom/aadhk/restpos/LoginActivity;

    const v2, 0x7f090213

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto/16 :goto_1

    :cond_3
    iget-object v3, p0, Lcom/aadhk/restpos/d/w;->w:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/User;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->b:Lcom/aadhk/restpos/LoginActivity;

    const v2, 0x7f090211

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto/16 :goto_1

    .line 294
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->A:Lcom/aadhk/restpos/f/l;

    iget-object v2, p0, Lcom/aadhk/restpos/d/w;->w:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 205
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b00fd -> :sswitch_1
        0x7f0b00fe -> :sswitch_2
        0x7f0b00ff -> :sswitch_3
        0x7f0b0100 -> :sswitch_4
        0x7f0b0101 -> :sswitch_5
        0x7f0b0102 -> :sswitch_6
        0x7f0b0103 -> :sswitch_7
        0x7f0b0104 -> :sswitch_8
        0x7f0b0105 -> :sswitch_9
        0x7f0b0194 -> :sswitch_0
        0x7f0b0233 -> :sswitch_b
        0x7f0b0234 -> :sswitch_a
        0x7f0b0235 -> :sswitch_c
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->y:Landroid/database/sqlite/SQLiteDatabase;

    .line 68
    new-instance v0, Lcom/aadhk/restpos/b/x;

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->y:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/x;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->z:Lcom/aadhk/restpos/b/x;

    .line 69
    new-instance v0, Lcom/aadhk/restpos/f/l;

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->b:Lcom/aadhk/restpos/LoginActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->A:Lcom/aadhk/restpos/f/l;

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->A:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->B:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 314
    const v0, 0x7f03006c

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    .line 315
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b0148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->c:Landroid/widget/LinearLayout;

    .line 317
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b00fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->g:Landroid/widget/Button;

    .line 318
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b00fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->h:Landroid/widget/Button;

    .line 319
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b00ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->i:Landroid/widget/Button;

    .line 320
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b0100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->j:Landroid/widget/Button;

    .line 321
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b0101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->k:Landroid/widget/Button;

    .line 322
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b0102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->l:Landroid/widget/Button;

    .line 323
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b0103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->m:Landroid/widget/Button;

    .line 324
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b0104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->n:Landroid/widget/Button;

    .line 325
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b0105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->o:Landroid/widget/Button;

    .line 326
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b0234

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->p:Landroid/widget/Button;

    .line 327
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b0233

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->s:Landroid/widget/ImageButton;

    .line 328
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->q:Landroid/widget/Button;

    .line 329
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b00f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->t:Landroid/widget/EditText;

    .line 330
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b0194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->u:Landroid/widget/ImageView;

    .line 331
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b0232

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->e:Landroid/widget/TextView;

    .line 332
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->d:Landroid/widget/TextView;

    .line 333
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    const v1, 0x7f0b0149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->f:Landroid/widget/TextView;

    .line 335
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->p:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->q:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->A:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    :cond_0
    const-string v0, "1.0.0"

    :try_start_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->b:Lcom/aadhk/restpos/LoginActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/LoginActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/w;->b:Lcom/aadhk/restpos/LoginActivity;

    invoke-virtual {v2}, Lcom/aadhk/restpos/LoginActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v1, 0x7f090208

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/w;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->a:Landroid/view/View;

    return-object v0

    .line 352
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 376
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 377
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 378
    return-void
.end method

.method public final onResume()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 75
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->z:Lcom/aadhk/restpos/b/x;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/x;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->v:Ljava/util/List;

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->v:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->B:Ljava/lang/String;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->v:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/User;

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->b:Lcom/aadhk/restpos/LoginActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/LoginActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f03006d

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v1, 0x7f0b014c

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v5, p0, Lcom/aadhk/restpos/d/w;->v:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_1

    const v5, 0x7f0b014d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/aadhk/restpos/d/w;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-nez v2, :cond_2

    iput-object v1, p0, Lcom/aadhk/restpos/d/w;->r:Landroid/widget/Button;

    :cond_2
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/w;->B:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->w:Lcom/aadhk/restpos/bean/User;

    iget-object v4, p0, Lcom/aadhk/restpos/d/w;->r:Landroid/widget/Button;

    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v4, p0, Lcom/aadhk/restpos/d/w;->r:Landroid/widget/Button;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lcom/aadhk/restpos/d/w;->r:Landroid/widget/Button;

    const/high16 v5, 0x4190

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/w;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v4, 0x41b0

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextSize(F)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/w;->r:Landroid/widget/Button;

    :cond_3
    new-instance v4, Lcom/aadhk/restpos/d/x;

    invoke-direct {v4, p0, v0, v1}, Lcom/aadhk/restpos/d/x;-><init>(Lcom/aadhk/restpos/d/w;Lcom/aadhk/restpos/bean/User;Landroid/widget/Button;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->w:Lcom/aadhk/restpos/bean/User;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->r:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->w:Lcom/aadhk/restpos/bean/User;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->w:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->A:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->p()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->A:Lcom/aadhk/restpos/f/l;

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->w:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/f/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->t:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    .line 84
    :goto_2
    return-void

    .line 83
    :cond_6
    const-string v0, ""

    iput-object v0, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/w;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
