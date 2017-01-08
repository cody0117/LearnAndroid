.class public Lcom/aadhk/restpos/DeliveryActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Customer;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/aadhk/restpos/g/d;

.field private a:Landroid/widget/EditText;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/AutoCompleteTextView;

.field private t:Landroid/widget/RadioButton;

.field private u:Landroid/widget/RadioButton;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/ImageView;

.field private y:Ljava/lang/String;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 218
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/DeliveryActivity;)Lcom/aadhk/restpos/g/d;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->B:Lcom/aadhk/restpos/g/d;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/DeliveryActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/aadhk/restpos/DeliveryActivity;->A:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/DeliveryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/DeliveryActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->A:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    .line 94
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getTel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/aadhk/restpos/DeliveryActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, p0, Lcom/aadhk/restpos/DeliveryActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getAddress1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, p0, Lcom/aadhk/restpos/DeliveryActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getAddress2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, p0, Lcom/aadhk/restpos/DeliveryActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getAddress3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, p0, Lcom/aadhk/restpos/DeliveryActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->s:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->s:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080085

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/DeliveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->s:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 153
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->s:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 157
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()Lcom/aadhk/restpos/bean/Customer;
    .locals 7

    .prologue
    .line 201
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->s:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/aadhk/restpos/DeliveryActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    iget-object v2, p0, Lcom/aadhk/restpos/DeliveryActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    iget-object v3, p0, Lcom/aadhk/restpos/DeliveryActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    iget-object v4, p0, Lcom/aadhk/restpos/DeliveryActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    iget-object v5, p0, Lcom/aadhk/restpos/DeliveryActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 208
    new-instance v6, Lcom/aadhk/restpos/bean/Customer;

    invoke-direct {v6}, Lcom/aadhk/restpos/bean/Customer;-><init>()V

    .line 209
    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/Customer;->setTel(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v6, v1}, Lcom/aadhk/restpos/bean/Customer;->setName(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v6, v2}, Lcom/aadhk/restpos/bean/Customer;->setAddress1(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v6, v3}, Lcom/aadhk/restpos/bean/Customer;->setAddress2(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v6, v4}, Lcom/aadhk/restpos/bean/Customer;->setAddress3(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v6, v5}, Lcom/aadhk/restpos/bean/Customer;->setEmail(Ljava/lang/String;)V

    .line 215
    return-object v6
.end method

.method static synthetic b(Lcom/aadhk/restpos/DeliveryActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->A:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/DeliveryActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/aadhk/restpos/DeliveryActivity;->z:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/aadhk/restpos/DeliveryActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->z:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/DeliveryActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->s:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    const v8, 0x7f080085

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 110
    :sswitch_0
    invoke-direct {p0}, Lcom/aadhk/restpos/DeliveryActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->s:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :sswitch_1
    new-instance v2, Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v2}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    .line 116
    invoke-static {}, Lcom/aadhk/restpos/util/o;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/Order;->setOrderTime(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    .line 118
    iget-object v3, p0, Lcom/aadhk/restpos/DeliveryActivity;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/Order;->setWaiterName(Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lcom/aadhk/restpos/DeliveryActivity;->t:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 120
    iget-object v3, p0, Lcom/aadhk/restpos/DeliveryActivity;->s:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/DeliveryActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/DeliveryActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/aadhk/restpos/DeliveryActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/aadhk/restpos/DeliveryActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/aadhk/restpos/DeliveryActivity;->s:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v8}, Lcom/aadhk/restpos/DeliveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/DeliveryActivity;->s:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    :goto_1
    if-eqz v0, :cond_0

    .line 121
    const-wide/16 v0, -0x1

    invoke-virtual {v2, v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 122
    const v0, 0x7f0800d7

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/aadhk/restpos/DeliveryActivity;->b()Lcom/aadhk/restpos/bean/Customer;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/aadhk/restpos/util/q;->b(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;)V

    goto/16 :goto_0

    .line 120
    :cond_1
    iget-object v3, p0, Lcom/aadhk/restpos/DeliveryActivity;->s:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v9}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    const-string v3, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/aadhk/restpos/DeliveryActivity;->a:Landroid/widget/EditText;

    invoke-virtual {p0, v8}, Lcom/aadhk/restpos/DeliveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/DeliveryActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/aadhk/restpos/DeliveryActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v3, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/aadhk/restpos/DeliveryActivity;->o:Landroid/widget/EditText;

    invoke-virtual {p0, v8}, Lcom/aadhk/restpos/DeliveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/DeliveryActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/aadhk/restpos/DeliveryActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v3, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/aadhk/restpos/DeliveryActivity;->p:Landroid/widget/EditText;

    invoke-virtual {p0, v8}, Lcom/aadhk/restpos/DeliveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/DeliveryActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_1

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->u:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/aadhk/restpos/DeliveryActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-wide/16 v0, -0x2

    invoke-virtual {v2, v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 128
    const v0, 0x7f0800d8

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/aadhk/restpos/DeliveryActivity;->b()Lcom/aadhk/restpos/bean/Customer;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/aadhk/restpos/util/q;->b(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;)V

    goto/16 :goto_0

    .line 134
    :sswitch_2
    invoke-virtual {p0}, Lcom/aadhk/restpos/DeliveryActivity;->finish()V

    goto/16 :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090052 -> :sswitch_0
        0x7f09005a -> :sswitch_1
        0x7f09005b -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->setTitle(I)V

    .line 49
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->setContentView(I)V

    .line 50
    new-instance v0, Lcom/aadhk/restpos/g/d;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->B:Lcom/aadhk/restpos/g/d;

    .line 51
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->c:Lcom/aadhk/restpos/util/r;

    .line 52
    invoke-virtual {p0}, Lcom/aadhk/restpos/DeliveryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    const-string v1, "userAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->y:Ljava/lang/String;

    .line 56
    :cond_0
    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->x:Landroid/widget/ImageView;

    .line 57
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->s:Landroid/widget/AutoCompleteTextView;

    .line 58
    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->a:Landroid/widget/EditText;

    .line 59
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->o:Landroid/widget/EditText;

    .line 60
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->p:Landroid/widget/EditText;

    .line 61
    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->q:Landroid/widget/EditText;

    .line 62
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->r:Landroid/widget/EditText;

    .line 64
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->t:Landroid/widget/RadioButton;

    .line 65
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->u:Landroid/widget/RadioButton;

    .line 67
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->v:Landroid/widget/Button;

    .line 68
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->w:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->v:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->s:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/aadhk/restpos/h;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/h;-><init>(Lcom/aadhk/restpos/DeliveryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->B:Lcom/aadhk/restpos/g/d;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 250
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 251
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/aadhk/restpos/DeliveryActivity;->finish()V

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onResume()V

    .line 85
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/i;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/i;-><init>(Lcom/aadhk/restpos/DeliveryActivity;B)V

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 86
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    return-void
.end method
