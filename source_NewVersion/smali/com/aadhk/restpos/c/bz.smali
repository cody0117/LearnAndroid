.class public final Lcom/aadhk/restpos/c/bz;
.super Lcom/aadhk/restpos/c/br;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/ListView;

.field private h:Lcom/aadhk/restpos/c/ca;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Note;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    const v0, 0x7f030058

    invoke-direct {p0, p1, v0}, Lcom/aadhk/restpos/c/br;-><init>(Landroid/content/Context;I)V

    .line 36
    iput-object p3, p0, Lcom/aadhk/restpos/c/bz;->i:Ljava/util/List;

    .line 38
    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bz;->e:Landroid/widget/Button;

    .line 39
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bz;->f:Landroid/widget/Button;

    .line 40
    const v0, 0x7f0b00d7

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bz;->j:Landroid/widget/EditText;

    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/c/bz;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/c/bz;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/c/bz;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v0, 0x7f0b0121

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bz;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/aadhk/restpos/c/bz;->g:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bz;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/a/ao;

    iget-object v2, p0, Lcom/aadhk/restpos/c/bz;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/aadhk/restpos/c/bz;->i:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/ao;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/ca;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/aadhk/restpos/c/bz;->h:Lcom/aadhk/restpos/c/ca;

    .line 59
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/c/bz;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/c/bz;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/c/bz;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bz;->a:Landroid/content/res/Resources;

    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/c/bz;->h:Lcom/aadhk/restpos/c/ca;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/aadhk/restpos/c/bz;->h:Lcom/aadhk/restpos/c/ca;

    invoke-interface {v1, v0}, Lcom/aadhk/restpos/c/ca;->a(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bz;->dismiss()V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/bz;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bz;->dismiss()V

    goto :goto_0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 67
    iget-object v1, p0, Lcom/aadhk/restpos/c/bz;->j:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/aadhk/restpos/c/bz;->i:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Note;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Note;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method
