.class final Lcom/aadhk/restpos/at;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/MgrItemPickerActivity;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/MgrItemPickerActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/aadhk/restpos/at;->a:Lcom/aadhk/restpos/MgrItemPickerActivity;

    .line 93
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 94
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/at;->a:Lcom/aadhk/restpos/MgrItemPickerActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->a(Lcom/aadhk/restpos/MgrItemPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/at;->a:Lcom/aadhk/restpos/MgrItemPickerActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->a(Lcom/aadhk/restpos/MgrItemPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v0

    .line 108
    invoke-static {v0, v1}, Lcom/aadhk/restpos/au;->a(J)Lcom/aadhk/restpos/au;

    move-result-object v0

    return-object v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/at;->a:Lcom/aadhk/restpos/MgrItemPickerActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->a(Lcom/aadhk/restpos/MgrItemPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
