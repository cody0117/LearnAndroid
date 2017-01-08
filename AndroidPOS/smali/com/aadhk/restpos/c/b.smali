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
    .line 95
    iput-object p1, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    .line 97
    iput-object p3, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    .line 98
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    :pswitch_0
    return-void

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 109
    const-wide/high16 v2, 0x3ff0

    mul-double/2addr v0, v2

    .line 110
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/p;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 115
    const-wide/high16 v2, 0x4000

    mul-double/2addr v0, v2

    .line 116
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/p;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 121
    const-wide/high16 v2, 0x4014

    mul-double/2addr v0, v2

    .line 122
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/p;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto :goto_0

    .line 126
    :pswitch_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 127
    const-wide/high16 v2, 0x4024

    mul-double/2addr v0, v2

    .line 128
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/p;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto :goto_0

    .line 132
    :pswitch_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 133
    const-wide/high16 v2, 0x4034

    mul-double/2addr v0, v2

    .line 134
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/p;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 138
    :pswitch_6
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 139
    const-wide/high16 v2, 0x4049

    mul-double/2addr v0, v2

    .line 140
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/p;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 144
    :pswitch_7
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 145
    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    .line 146
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/p;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 150
    :pswitch_8
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 151
    const-wide v2, 0x3fb999999999999aL

    mul-double/2addr v0, v2

    .line 152
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/p;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 156
    :pswitch_9
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 157
    const-wide v2, 0x3fc999999999999aL

    mul-double/2addr v0, v2

    .line 158
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/p;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 162
    :pswitch_a
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 163
    const-wide/high16 v2, 0x3fd0

    mul-double/2addr v0, v2

    .line 164
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/p;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 168
    :pswitch_b
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 169
    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    .line 170
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/p;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 174
    :pswitch_c
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 175
    const-wide v2, 0x3f847ae147ae147bL

    mul-double/2addr v0, v2

    .line 176
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/p;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 180
    :pswitch_d
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 181
    const-wide v2, 0x3f947ae147ae147bL

    mul-double/2addr v0, v2

    .line 182
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/p;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 186
    :pswitch_e
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 187
    const-wide v2, 0x3f9999999999999aL

    mul-double/2addr v0, v2

    .line 188
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/p;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 192
    :pswitch_f
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 193
    const-wide v2, 0x3fa999999999999aL

    mul-double/2addr v0, v2

    .line 194
    iget-object v2, p0, Lcom/aadhk/restpos/c/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/p;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/aadhk/restpos/c/b;->a:Lcom/aadhk/restpos/c/a;

    invoke-static {v0}, Lcom/aadhk/restpos/c/a;->a(Lcom/aadhk/restpos/c/a;)V

    goto/16 :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x7f0900a9
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
