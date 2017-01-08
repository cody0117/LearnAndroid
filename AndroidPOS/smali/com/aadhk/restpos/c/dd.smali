.class public final Lcom/aadhk/restpos/c/dd;
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
    .line 16
    const v0, 0x7f03005d

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 17
    const v0, 0x7f090142

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dd;->f:Landroid/widget/Button;

    .line 18
    const v0, 0x7f090143

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dd;->g:Landroid/widget/Button;

    .line 19
    const v0, 0x7f090144

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dd;->h:Landroid/widget/Button;

    .line 20
    const v0, 0x7f090145

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dd;->i:Landroid/widget/Button;

    .line 21
    const v0, 0x7f090146

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dd;->j:Landroid/widget/Button;

    .line 22
    const v0, 0x7f090147

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dd;->k:Landroid/widget/Button;

    .line 23
    const v0, 0x7f090148

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dd;->l:Landroid/widget/Button;

    .line 24
    const v0, 0x7f090149

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dd;->m:Landroid/widget/Button;

    .line 25
    const v0, 0x7f09014a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dd;->n:Landroid/widget/Button;

    .line 26
    const v0, 0x7f09014b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dd;->o:Landroid/widget/Button;

    .line 27
    const v0, 0x7f09014c

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dd;->p:Landroid/widget/Button;

    .line 28
    const v0, 0x7f09014d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dd;->q:Landroid/widget/Button;

    .line 29
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->p:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->q:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/dd;->f:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dd;->dismiss()V

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/dd;->g:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dd;->dismiss()V

    goto :goto_0

    .line 59
    :pswitch_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/dd;->h:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dd;->dismiss()V

    goto :goto_0

    .line 65
    :pswitch_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/dd;->i:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dd;->dismiss()V

    goto :goto_0

    .line 71
    :pswitch_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/dd;->j:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dd;->dismiss()V

    goto :goto_0

    .line 77
    :pswitch_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/dd;->k:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dd;->dismiss()V

    goto/16 :goto_0

    .line 83
    :pswitch_6
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/dd;->l:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dd;->dismiss()V

    goto/16 :goto_0

    .line 89
    :pswitch_7
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/dd;->m:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dd;->dismiss()V

    goto/16 :goto_0

    .line 95
    :pswitch_8
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/dd;->n:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dd;->dismiss()V

    goto/16 :goto_0

    .line 101
    :pswitch_9
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/dd;->o:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dd;->dismiss()V

    goto/16 :goto_0

    .line 107
    :pswitch_a
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/dd;->p:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dd;->dismiss()V

    goto/16 :goto_0

    .line 113
    :pswitch_b
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/c/dd;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/dd;->q:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dd;->dismiss()V

    goto/16 :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x7f090142
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
