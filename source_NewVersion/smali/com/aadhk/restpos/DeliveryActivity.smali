.class public Lcom/aadhk/restpos/DeliveryActivity;
.super Landroid/app/Activity;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/AutoCompleteTextView;

.field private g:Landroid/widget/RadioButton;

.field private h:Landroid/widget/RadioButton;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/aadhk/restpos/b/e;

.field private m:Landroid/database/sqlite/SQLiteDatabase;

.field private n:Lcom/aadhk/restpos/f/l;

.field private o:Ljava/lang/String;

.field private p:Ljava/util/List;
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
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
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
    .locals 3
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->l:Lcom/aadhk/restpos/b/e;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/b/e;->b(Ljava/lang/String;)Lcom/aadhk/restpos/bean/Customer;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/aadhk/restpos/DeliveryActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lcom/aadhk/restpos/DeliveryActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/aadhk/restpos/DeliveryActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getAddress2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcom/aadhk/restpos/DeliveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getAddress3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/aadhk/restpos/DeliveryActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->f:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->f:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/aadhk/restpos/DeliveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->f:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 182
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->f:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 186
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 113
    :sswitch_0
    invoke-direct {p0}, Lcom/aadhk/restpos/DeliveryActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->f:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :sswitch_1
    new-instance v1, Lcom/aadhk/restpos/bean/Customer;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/Customer;-><init>()V

    .line 119
    new-instance v2, Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v2}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    .line 120
    invoke-static {}, Lcom/aadhk/restpos/f/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Order;->setStartTime(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Order;->setWaiterName(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->n:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->n:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    .line 129
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->f:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 133
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->g:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->f:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v9, p0, Lcom/aadhk/restpos/DeliveryActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/aadhk/restpos/DeliveryActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/aadhk/restpos/DeliveryActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/aadhk/restpos/DeliveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->f:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/aadhk/restpos/DeliveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090055

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->f:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v1, v3}, Lcom/aadhk/restpos/bean/Customer;->setTel(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, v5}, Lcom/aadhk/restpos/bean/Customer;->setEmail(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1, v4}, Lcom/aadhk/restpos/bean/Customer;->setName(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1, v6}, Lcom/aadhk/restpos/bean/Customer;->setAddress1(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, v7}, Lcom/aadhk/restpos/bean/Customer;->setAddress2(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1, v8}, Lcom/aadhk/restpos/bean/Customer;->setAddress3(Ljava/lang/String;)V

    .line 144
    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 145
    const v0, 0x7f0900ca

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 146
    invoke-static {p0, v2, v1}, Lcom/aadhk/restpos/f/k;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;)V

    goto/16 :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->n:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/f/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->f:Landroid/widget/AutoCompleteTextView;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/DeliveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090055

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->a:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/DeliveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090055

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->b:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/DeliveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090055

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->c:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v0, ""

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/DeliveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090055

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->d:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto/16 :goto_2

    .line 148
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/aadhk/restpos/DeliveryActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v1, v3}, Lcom/aadhk/restpos/bean/Customer;->setTel(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1, v5}, Lcom/aadhk/restpos/bean/Customer;->setEmail(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, v4}, Lcom/aadhk/restpos/bean/Customer;->setName(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1, v6}, Lcom/aadhk/restpos/bean/Customer;->setAddress1(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, v7}, Lcom/aadhk/restpos/bean/Customer;->setAddress2(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1, v8}, Lcom/aadhk/restpos/bean/Customer;->setAddress3(Ljava/lang/String;)V

    .line 156
    const-wide/16 v3, -0x2

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 157
    const v0, 0x7f0900cb

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 158
    invoke-static {p0, v2, v1}, Lcom/aadhk/restpos/f/k;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;)V

    goto/16 :goto_0

    .line 163
    :sswitch_2
    invoke-virtual {p0}, Lcom/aadhk/restpos/DeliveryActivity;->finish()V

    goto/16 :goto_0

    .line 111
    :sswitch_data_0
    .sparse-switch
        0x7f0b004e -> :sswitch_0
        0x7f0b0056 -> :sswitch_1
        0x7f0b0057 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/aadhk/restpos/DeliveryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->setTitle(I)V

    .line 50
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->setContentView(I)V

    .line 51
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    new-instance v0, Lcom/aadhk/restpos/b/e;

    iget-object v1, p0, Lcom/aadhk/restpos/DeliveryActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/e;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->l:Lcom/aadhk/restpos/b/e;

    .line 53
    new-instance v0, Lcom/aadhk/restpos/f/l;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->n:Lcom/aadhk/restpos/f/l;

    .line 54
    invoke-virtual {p0}, Lcom/aadhk/restpos/DeliveryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    const-string v1, "userAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->o:Ljava/lang/String;

    .line 58
    :cond_0
    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->k:Landroid/widget/ImageView;

    .line 59
    const v0, 0x7f0b004d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->f:Landroid/widget/AutoCompleteTextView;

    .line 60
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->a:Landroid/widget/EditText;

    .line 61
    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->b:Landroid/widget/EditText;

    .line 62
    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->c:Landroid/widget/EditText;

    .line 63
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->d:Landroid/widget/EditText;

    .line 64
    const v0, 0x7f0b0053

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->e:Landroid/widget/EditText;

    .line 66
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->g:Landroid/widget/RadioButton;

    .line 67
    const v0, 0x7f0b0055

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->h:Landroid/widget/RadioButton;

    .line 69
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->i:Landroid/widget/Button;

    .line 70
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DeliveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->j:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->f:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/aadhk/restpos/r;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/r;-><init>(Lcom/aadhk/restpos/DeliveryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 238
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/aadhk/restpos/DeliveryActivity;->finish()V

    .line 172
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/DeliveryActivity;->l:Lcom/aadhk/restpos/b/e;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/e;->a()Ljava/util/List;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/DeliveryActivity;->p:Ljava/util/List;

    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    .line 90
    iget-object v2, p0, Lcom/aadhk/restpos/DeliveryActivity;->p:Ljava/util/List;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getTel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/aadhk/restpos/DeliveryActivity;->p:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 94
    iget-object v1, p0, Lcom/aadhk/restpos/DeliveryActivity;->f:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    return-void
.end method
