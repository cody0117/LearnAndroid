.class final Lcom/aadhk/restpos/be;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/PayCloseOutActivity;

.field private b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/PayCloseOutActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/aadhk/restpos/be;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/aadhk/restpos/be;->b:Landroid/widget/EditText;

    .line 145
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/be;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 156
    :sswitch_0
    iget-object v0, p0, Lcom/aadhk/restpos/be;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->a(Lcom/aadhk/restpos/PayCloseOutActivity;)V

    .line 163
    :sswitch_1
    iget-object v0, p0, Lcom/aadhk/restpos/be;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->b(Lcom/aadhk/restpos/PayCloseOutActivity;)V

    goto :goto_0

    .line 160
    :sswitch_2
    iget-object v0, p0, Lcom/aadhk/restpos/be;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->b(Lcom/aadhk/restpos/PayCloseOutActivity;)V

    goto :goto_0

    .line 154
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0061 -> :sswitch_0
        0x7f0b0068 -> :sswitch_2
        0x7f0b006b -> :sswitch_1
    .end sparse-switch
.end method
