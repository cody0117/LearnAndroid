.class final Lcom/aadhk/restpos/d/gb;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ga;

.field private b:Lcom/aadhk/restpos/d/ge;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/ga;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/aadhk/restpos/d/gb;->a:Lcom/aadhk/restpos/d/ga;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/ga;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/gb;-><init>(Lcom/aadhk/restpos/d/ga;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->a:Lcom/aadhk/restpos/d/ga;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ga;->b(Lcom/aadhk/restpos/d/ga;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->a:Lcom/aadhk/restpos/d/ga;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ga;->b(Lcom/aadhk/restpos/d/ga;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 126
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    if-nez p2, :cond_0

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->a:Lcom/aadhk/restpos/d/ga;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ga;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 90
    new-instance v0, Lcom/aadhk/restpos/d/ge;

    invoke-direct {v0, p0, v3}, Lcom/aadhk/restpos/d/ge;-><init>(Lcom/aadhk/restpos/d/gb;B)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/gb;->b:Lcom/aadhk/restpos/d/ge;

    .line 91
    iget-object v1, p0, Lcom/aadhk/restpos/d/gb;->b:Lcom/aadhk/restpos/d/ge;

    const v0, 0x7f0b022b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ge;->a:Landroid/widget/TextView;

    .line 92
    iget-object v1, p0, Lcom/aadhk/restpos/d/gb;->b:Lcom/aadhk/restpos/d/ge;

    const v0, 0x7f0b022d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ge;->b:Landroid/widget/CheckBox;

    .line 93
    iget-object v1, p0, Lcom/aadhk/restpos/d/gb;->b:Lcom/aadhk/restpos/d/ge;

    const v0, 0x7f0b022e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ge;->c:Landroid/widget/CheckBox;

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->b:Lcom/aadhk/restpos/d/ge;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->a:Lcom/aadhk/restpos/d/ga;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ga;->a(Lcom/aadhk/restpos/d/ga;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->b:Lcom/aadhk/restpos/d/ge;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ge;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->b:Lcom/aadhk/restpos/d/ge;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ge;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 105
    :goto_1
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/gb;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    .line 106
    iget-object v1, p0, Lcom/aadhk/restpos/d/gb;->b:Lcom/aadhk/restpos/d/ge;

    iget-object v1, v1, Lcom/aadhk/restpos/d/ge;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gb;->a:Lcom/aadhk/restpos/d/ga;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->getFunction()I

    move-result v3

    invoke-static {v2, v3}, Lcom/aadhk/restpos/d/ga;->a(Lcom/aadhk/restpos/d/ga;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/aadhk/restpos/d/gb;->b:Lcom/aadhk/restpos/d/ge;

    iget-object v1, v1, Lcom/aadhk/restpos/d/ge;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 108
    iget-object v1, p0, Lcom/aadhk/restpos/d/gb;->b:Lcom/aadhk/restpos/d/ge;

    iget-object v1, v1, Lcom/aadhk/restpos/d/ge;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    iget-object v1, p0, Lcom/aadhk/restpos/d/gb;->b:Lcom/aadhk/restpos/d/ge;

    iget-object v1, v1, Lcom/aadhk/restpos/d/ge;->b:Landroid/widget/CheckBox;

    new-instance v2, Lcom/aadhk/restpos/d/gc;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/d/gc;-><init>(Lcom/aadhk/restpos/d/gb;Lcom/aadhk/restpos/bean/RolePermission;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v1, p0, Lcom/aadhk/restpos/d/gb;->b:Lcom/aadhk/restpos/d/ge;

    iget-object v1, v1, Lcom/aadhk/restpos/d/ge;->c:Landroid/widget/CheckBox;

    new-instance v2, Lcom/aadhk/restpos/d/gd;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/d/gd;-><init>(Lcom/aadhk/restpos/d/gb;Lcom/aadhk/restpos/bean/RolePermission;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-object p2

    .line 96
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/ge;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gb;->b:Lcom/aadhk/restpos/d/ge;

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->b:Lcom/aadhk/restpos/d/ge;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ge;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->b:Lcom/aadhk/restpos/d/ge;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ge;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1
.end method
