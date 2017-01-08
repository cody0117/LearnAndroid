.class final Lcom/aadhk/restpos/bz;
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
    .line 167
    iput-object p1, p0, Lcom/aadhk/restpos/bz;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/aadhk/restpos/bz;->b:Landroid/widget/EditText;

    .line 169
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/aadhk/restpos/bz;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 190
    :goto_0
    return-void

    .line 180
    :sswitch_0
    iget-object v0, p0, Lcom/aadhk/restpos/bz;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->u(Lcom/aadhk/restpos/PayCloseOutActivity;)V

    .line 187
    :sswitch_1
    iget-object v0, p0, Lcom/aadhk/restpos/bz;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->v(Lcom/aadhk/restpos/PayCloseOutActivity;)V

    goto :goto_0

    .line 184
    :sswitch_2
    iget-object v0, p0, Lcom/aadhk/restpos/bz;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->v(Lcom/aadhk/restpos/PayCloseOutActivity;)V

    goto :goto_0

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09006d -> :sswitch_0
        0x7f090074 -> :sswitch_2
        0x7f090077 -> :sswitch_1
    .end sparse-switch
.end method
