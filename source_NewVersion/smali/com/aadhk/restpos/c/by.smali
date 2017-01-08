.class public final Lcom/aadhk/restpos/c/by;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/Button;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    const v0, 0x7f03004d

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 18
    const v0, 0x7f0b00fd

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/by;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/by;->f:Landroid/widget/Button;

    .line 19
    const v0, 0x7f0b00fe

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/by;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/by;->g:Landroid/widget/Button;

    .line 20
    const v0, 0x7f0b00ff

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/by;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/by;->h:Landroid/widget/Button;

    .line 21
    const v0, 0x7f0b0100

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/by;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/by;->i:Landroid/widget/Button;

    .line 22
    const v0, 0x7f0b0101

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/by;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/by;->j:Landroid/widget/Button;

    .line 23
    const v0, 0x7f0b0102

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/by;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/by;->k:Landroid/widget/Button;

    .line 24
    const v0, 0x7f0b0103

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/by;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/by;->l:Landroid/widget/Button;

    .line 25
    const v0, 0x7f0b0104

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/by;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/by;->m:Landroid/widget/Button;

    .line 26
    const v0, 0x7f0b0105

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/by;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/by;->n:Landroid/widget/Button;

    .line 27
    const v0, 0x7f0b0106

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/by;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/by;->o:Landroid/widget/Button;

    .line 28
    const v0, 0x7f0b0107

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/by;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/by;->p:Landroid/widget/Button;

    .line 29
    const v0, 0x7f0b0108

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/by;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/by;->q:Landroid/widget/Button;

    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->p:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->q:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/by;->f:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/by;->dismiss()V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/by;->g:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/by;->dismiss()V

    goto :goto_0

    .line 60
    :pswitch_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/by;->h:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/by;->dismiss()V

    goto :goto_0

    .line 66
    :pswitch_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/by;->i:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/by;->dismiss()V

    goto :goto_0

    .line 72
    :pswitch_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/by;->j:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/by;->dismiss()V

    goto :goto_0

    .line 78
    :pswitch_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/by;->k:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/by;->dismiss()V

    goto/16 :goto_0

    .line 84
    :pswitch_6
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/by;->l:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/by;->dismiss()V

    goto/16 :goto_0

    .line 90
    :pswitch_7
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/by;->m:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/by;->dismiss()V

    goto/16 :goto_0

    .line 96
    :pswitch_8
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/by;->n:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/by;->dismiss()V

    goto/16 :goto_0

    .line 102
    :pswitch_9
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/by;->o:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/by;->dismiss()V

    goto/16 :goto_0

    .line 108
    :pswitch_a
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/by;->p:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/by;->dismiss()V

    goto/16 :goto_0

    .line 114
    :pswitch_b
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/c/by;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/by;->q:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/by;->dismiss()V

    goto/16 :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00fd
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
