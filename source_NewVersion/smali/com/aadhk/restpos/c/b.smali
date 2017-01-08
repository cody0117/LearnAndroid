.class final Lcom/aadhk/restpos/c/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/a;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/c/a;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    .line 100
    iput-object p3, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    .line 101
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    :pswitch_0
    return-void

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 112
    const-wide/high16 v2, 0x3ff0

    mul-double/2addr v0, v2

    .line 113
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/j;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 118
    const-wide/high16 v2, 0x4000

    mul-double/2addr v0, v2

    .line 119
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/j;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto :goto_0

    .line 123
    :pswitch_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 124
    const-wide/high16 v2, 0x4014

    mul-double/2addr v0, v2

    .line 125
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/j;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto :goto_0

    .line 129
    :pswitch_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 130
    const-wide/high16 v2, 0x4024

    mul-double/2addr v0, v2

    .line 131
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/j;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto :goto_0

    .line 135
    :pswitch_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 136
    const-wide/high16 v2, 0x4034

    mul-double/2addr v0, v2

    .line 137
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/j;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 141
    :pswitch_6
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 142
    const-wide/high16 v2, 0x4049

    mul-double/2addr v0, v2

    .line 143
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/j;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 147
    :pswitch_7
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 148
    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    .line 149
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/j;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 153
    :pswitch_8
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 154
    const-wide v2, 0x3fb999999999999aL

    mul-double/2addr v0, v2

    .line 155
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/j;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 159
    :pswitch_9
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 160
    const-wide v2, 0x3fc999999999999aL

    mul-double/2addr v0, v2

    .line 161
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/j;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 165
    :pswitch_a
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 166
    const-wide/high16 v2, 0x3fd0

    mul-double/2addr v0, v2

    .line 167
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/j;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 171
    :pswitch_b
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 172
    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    .line 173
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/j;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 177
    :pswitch_c
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 178
    const-wide v2, 0x3f847ae147ae147bL

    mul-double/2addr v0, v2

    .line 179
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/j;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 183
    :pswitch_d
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 184
    const-wide v2, 0x3f947ae147ae147bL

    mul-double/2addr v0, v2

    .line 185
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/j;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 189
    :pswitch_e
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 190
    const-wide v2, 0x3f9999999999999aL

    mul-double/2addr v0, v2

    .line 191
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/j;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 195
    :pswitch_f
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 196
    const-wide v2, 0x3fa999999999999aL

    mul-double/2addr v0, v2

    .line 197
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/j;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b008b
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method
