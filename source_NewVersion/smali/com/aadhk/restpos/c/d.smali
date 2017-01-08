.class public final Lcom/aadhk/restpos/c/d;
.super Lcom/aadhk/restpos/c/br;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Spinner;

.field private h:Lcom/aadhk/restpos/c/f;

.field private i:Lcom/aadhk/restpos/a/aq;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    const v0, 0x7f03002c

    invoke-direct {p0, p1, v0}, Lcom/aadhk/restpos/c/br;-><init>(Landroid/content/Context;I)V

    .line 31
    const v0, 0x7f090216

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/d;->setTitle(I)V

    .line 32
    iput-object p2, p0, Lcom/aadhk/restpos/c/d;->l:Ljava/util/List;

    .line 33
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/d;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/d;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/d;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/d;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00b1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/aadhk/restpos/c/d;->g:Landroid/widget/Spinner;

    new-instance v0, Lcom/aadhk/restpos/a/aq;

    iget-object v1, p0, Lcom/aadhk/restpos/c/d;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/aadhk/restpos/c/d;->l:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/a/aq;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/aadhk/restpos/c/d;->i:Lcom/aadhk/restpos/a/aq;

    iget-object v0, p0, Lcom/aadhk/restpos/c/d;->g:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/aadhk/restpos/c/d;->i:Lcom/aadhk/restpos/a/aq;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/d;->g:Landroid/widget/Spinner;

    new-instance v1, Lcom/aadhk/restpos/c/e;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/e;-><init>(Lcom/aadhk/restpos/c/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/d;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/aadhk/restpos/c/d;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/aadhk/restpos/c/d;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/d;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/aadhk/restpos/c/d;->l:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/f;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/aadhk/restpos/c/d;->h:Lcom/aadhk/restpos/c/f;

    .line 88
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 39
    iget-object v1, p0, Lcom/aadhk/restpos/c/d;->e:Landroid/widget/Button;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/aadhk/restpos/c/d;->j:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aadhk/restpos/c/d;->j:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/c/d;->c:Landroid/content/Context;

    const v2, 0x7f090055

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/aadhk/restpos/c/d;->g:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->requestFocus()Z

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_3

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/c/d;->h:Lcom/aadhk/restpos/c/f;

    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/c/d;->h:Lcom/aadhk/restpos/c/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/d;->j:Ljava/lang/String;

    iget-wide v1, p0, Lcom/aadhk/restpos/c/d;->k:J

    invoke-interface {v0, v1, v2}, Lcom/aadhk/restpos/c/f;->a(J)V

    .line 42
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/d;->dismiss()V

    .line 47
    :cond_2
    :goto_0
    return-void

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/d;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 45
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/d;->dismiss()V

    goto :goto_0
.end method
