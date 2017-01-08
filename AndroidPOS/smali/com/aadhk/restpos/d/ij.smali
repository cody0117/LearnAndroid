.class final Lcom/aadhk/restpos/d/ij;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ii;

.field private b:Lcom/aadhk/restpos/d/im;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/ii;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/aadhk/restpos/d/ij;->a:Lcom/aadhk/restpos/d/ii;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/ii;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/ij;-><init>(Lcom/aadhk/restpos/d/ii;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/d/ij;->a:Lcom/aadhk/restpos/d/ii;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ii;->b(Lcom/aadhk/restpos/d/ii;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/d/ij;->a:Lcom/aadhk/restpos/d/ii;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ii;->b(Lcom/aadhk/restpos/d/ii;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 139
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

    .line 93
    if-nez p2, :cond_0

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/ij;->a:Lcom/aadhk/restpos/d/ii;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ii;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 95
    new-instance v0, Lcom/aadhk/restpos/d/im;

    invoke-direct {v0, p0, v3}, Lcom/aadhk/restpos/d/im;-><init>(Lcom/aadhk/restpos/d/ij;B)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ij;->b:Lcom/aadhk/restpos/d/im;

    .line 96
    iget-object v1, p0, Lcom/aadhk/restpos/d/ij;->b:Lcom/aadhk/restpos/d/im;

    const v0, 0x7f090273

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/im;->a:Landroid/widget/TextView;

    .line 97
    iget-object v1, p0, Lcom/aadhk/restpos/d/ij;->b:Lcom/aadhk/restpos/d/im;

    const v0, 0x7f090275

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/aadhk/restpos/d/im;->b:Landroid/widget/CheckBox;

    .line 98
    iget-object v1, p0, Lcom/aadhk/restpos/d/ij;->b:Lcom/aadhk/restpos/d/im;

    const v0, 0x7f090277

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/aadhk/restpos/d/im;->c:Landroid/widget/CheckBox;

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/ij;->b:Lcom/aadhk/restpos/d/im;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ij;->a:Lcom/aadhk/restpos/d/ii;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ii;->a(Lcom/aadhk/restpos/d/ii;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/d/ij;->b:Lcom/aadhk/restpos/d/im;

    iget-object v0, v0, Lcom/aadhk/restpos/d/im;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/d/ij;->b:Lcom/aadhk/restpos/d/im;

    iget-object v0, v0, Lcom/aadhk/restpos/d/im;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 110
    :goto_1
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/ij;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    .line 111
    iget-object v1, p0, Lcom/aadhk/restpos/d/ij;->b:Lcom/aadhk/restpos/d/im;

    iget-object v1, v1, Lcom/aadhk/restpos/d/im;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ij;->a:Lcom/aadhk/restpos/d/ii;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->getFunction()I

    move-result v3

    invoke-static {v2, v3}, Lcom/aadhk/restpos/d/ii;->a(Lcom/aadhk/restpos/d/ii;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/aadhk/restpos/d/ij;->b:Lcom/aadhk/restpos/d/im;

    iget-object v1, v1, Lcom/aadhk/restpos/d/im;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    iget-object v1, p0, Lcom/aadhk/restpos/d/ij;->b:Lcom/aadhk/restpos/d/im;

    iget-object v1, v1, Lcom/aadhk/restpos/d/im;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 114
    iget-object v1, p0, Lcom/aadhk/restpos/d/ij;->b:Lcom/aadhk/restpos/d/im;

    iget-object v1, v1, Lcom/aadhk/restpos/d/im;->b:Landroid/widget/CheckBox;

    new-instance v2, Lcom/aadhk/restpos/d/ik;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/d/ik;-><init>(Lcom/aadhk/restpos/d/ij;Lcom/aadhk/restpos/bean/RolePermission;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/aadhk/restpos/d/ij;->b:Lcom/aadhk/restpos/d/im;

    iget-object v1, v1, Lcom/aadhk/restpos/d/im;->c:Landroid/widget/CheckBox;

    new-instance v2, Lcom/aadhk/restpos/d/il;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/d/il;-><init>(Lcom/aadhk/restpos/d/ij;Lcom/aadhk/restpos/bean/RolePermission;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-object p2

    .line 101
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/im;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ij;->b:Lcom/aadhk/restpos/d/im;

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ij;->b:Lcom/aadhk/restpos/d/im;

    iget-object v0, v0, Lcom/aadhk/restpos/d/im;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/ij;->b:Lcom/aadhk/restpos/d/im;

    iget-object v0, v0, Lcom/aadhk/restpos/d/im;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1
.end method
