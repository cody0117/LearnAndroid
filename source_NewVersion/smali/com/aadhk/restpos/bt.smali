.class final Lcom/aadhk/restpos/bt;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/ReportActivity;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/ReportActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/ReportActivity;

    .line 161
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 162
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 166
    const/16 v0, 0x7d0

    return v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 182
    add-int/lit16 v0, p1, -0x3e8

    .line 183
    iget-object v1, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/ReportActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/ReportActivity;->d(Lcom/aadhk/restpos/ReportActivity;)I

    move-result v1

    if-ne v5, v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/ReportActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/ReportActivity;->e(Lcom/aadhk/restpos/ReportActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/i;->b(II)[Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 194
    aget-object v0, v0, v4

    .line 197
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 198
    const-string v3, "fromDate"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v1, "toDate"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/ReportActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ReportActivity;->h(Lcom/aadhk/restpos/ReportActivity;)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 203
    new-instance v0, Lcom/aadhk/restpos/d/fc;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/fc;-><init>()V

    .line 215
    :goto_1
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 216
    return-object v0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/ReportActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/ReportActivity;->d(Lcom/aadhk/restpos/ReportActivity;)I

    move-result v1

    if-ne v6, v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/ReportActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/ReportActivity;->f(Lcom/aadhk/restpos/ReportActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/ReportActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/ReportActivity;->g(Lcom/aadhk/restpos/ReportActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/aadhk/restpos/f/i;->a(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/ReportActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/ReportActivity;->d(Lcom/aadhk/restpos/ReportActivity;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/aadhk/restpos/f/i;->a(II)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/ReportActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ReportActivity;->h(Lcom/aadhk/restpos/ReportActivity;)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 205
    new-instance v0, Lcom/aadhk/restpos/d/eu;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/eu;-><init>()V

    goto :goto_1

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/ReportActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ReportActivity;->h(Lcom/aadhk/restpos/ReportActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 207
    new-instance v0, Lcom/aadhk/restpos/d/ez;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/ez;-><init>()V

    goto :goto_1

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/ReportActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ReportActivity;->h(Lcom/aadhk/restpos/ReportActivity;)I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 209
    new-instance v0, Lcom/aadhk/restpos/d/ea;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/ea;-><init>()V

    goto :goto_1

    .line 210
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/ReportActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ReportActivity;->h(Lcom/aadhk/restpos/ReportActivity;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 211
    new-instance v0, Lcom/aadhk/restpos/d/ef;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/ef;-><init>()V

    goto :goto_1

    .line 213
    :cond_6
    new-instance v0, Lcom/aadhk/restpos/d/dy;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/dy;-><init>()V

    goto :goto_1
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 171
    const/4 v0, -0x2

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
