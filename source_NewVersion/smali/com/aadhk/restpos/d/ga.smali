.class public final Lcom/aadhk/restpos/d/ga;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/UserPermissionActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/Button;

.field private d:Lcom/aadhk/restpos/b/t;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Landroid/widget/ListView;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/RolePermission;",
            ">;"
        }
    .end annotation
.end field

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/aadhk/restpos/d/ga;->i:I

    .line 153
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ga;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/aadhk/restpos/d/ga;->i:I

    return v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ga;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 25
    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/aadhk/restpos/d/ga;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/aadhk/restpos/d/ga;->f:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ga;->e:[Ljava/lang/String;

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

.method static synthetic b(Lcom/aadhk/restpos/d/ga;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/aadhk/restpos/d/ga;->h:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/d/ga;->a:Lcom/aadhk/restpos/UserPermissionActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/UserPermissionActivity;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/aadhk/restpos/b/t;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/t;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/ga;->d:Lcom/aadhk/restpos/b/t;

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/d/ga;->d:Lcom/aadhk/restpos/b/t;

    iget v1, p0, Lcom/aadhk/restpos/d/ga;->i:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/t;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ga;->h:Ljava/util/List;

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/d/ga;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/d/gb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/gb;-><init>(Lcom/aadhk/restpos/d/ga;B)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/UserPermissionActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ga;->a:Lcom/aadhk/restpos/UserPermissionActivity;

    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 61
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/d/ga;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/aadhk/restpos/d/ga;->d:Lcom/aadhk/restpos/b/t;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ga;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/t;->a(Ljava/util/List;)V

    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/d/ga;->a:Lcom/aadhk/restpos/UserPermissionActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/UserPermissionActivity;->b()V

    .line 151
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ga;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    const-string v1, "bundlePermission"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/ga;->i:I

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ga;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ga;->e:[Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ga;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ga;->f:[Ljava/lang/String;

    .line 46
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    const v0, 0x7f03008e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ga;->b:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/d/ga;->b:Landroid/view/View;

    const v1, 0x7f0b0229

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ga;->g:Landroid/widget/ListView;

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/d/ga;->b:Landroid/view/View;

    const v1, 0x7f0b022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ga;->c:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/d/ga;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/d/ga;->b:Landroid/view/View;

    return-object v0
.end method
