.class public final Lcom/aadhk/restpos/d/ii;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/RolePermissionActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/Button;

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:Landroid/widget/ListView;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/RolePermission;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/aadhk/restpos/g/y;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/aadhk/restpos/d/ii;->i:I

    .line 195
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ii;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/aadhk/restpos/d/ii;->i:I

    return v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ii;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 31
    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/aadhk/restpos/d/ii;->e:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/aadhk/restpos/d/ii;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ii;->d:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ii;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/aadhk/restpos/d/ii;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/ii;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/d/ii;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/ii;)Lcom/aadhk/restpos/g/y;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/d/ii;->h:Lcom/aadhk/restpos/g/y;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/ii;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/d/ii;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/ii;)Lcom/aadhk/restpos/RolePermissionActivity;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/d/ii;->a:Lcom/aadhk/restpos/RolePermissionActivity;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/d/ii;->a:Lcom/aadhk/restpos/RolePermissionActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/RolePermissionActivity;->a()Lcom/aadhk/restpos/g/y;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ii;->h:Lcom/aadhk/restpos/g/y;

    .line 58
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/in;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/in;-><init>(Lcom/aadhk/restpos/d/ii;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/ii;->a:Lcom/aadhk/restpos/RolePermissionActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 59
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/RolePermissionActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ii;->a:Lcom/aadhk/restpos/RolePermissionActivity;

    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 66
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/aadhk/restpos/d/ii;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 161
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/io;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/io;-><init>(Lcom/aadhk/restpos/d/ii;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/ii;->a:Lcom/aadhk/restpos/RolePermissionActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 162
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 164
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ii;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    const-string v1, "bundlePermission"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/ii;->i:I

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ii;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ii;->d:[Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ii;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ii;->e:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    const v0, 0x7f03009f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ii;->b:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/d/ii;->b:Landroid/view/View;

    const v1, 0x7f090271

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ii;->f:Landroid/widget/ListView;

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/ii;->b:Landroid/view/View;

    const v1, 0x7f090272

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ii;->c:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/d/ii;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/d/ii;->b:Landroid/view/View;

    return-object v0
.end method
