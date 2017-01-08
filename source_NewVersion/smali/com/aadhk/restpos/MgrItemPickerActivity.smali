.class public Lcom/aadhk/restpos/MgrItemPickerActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# static fields
.field private static o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Lcom/aadhk/restpos/b/i;


# instance fields
.field private a:Lcom/aadhk/restpos/aq;

.field private l:Lcom/viewpagerindicator/TabPageIndicator;

.field private m:Landroid/support/v4/view/ViewPager;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 113
    return-void
.end method

.method static synthetic a()Lcom/aadhk/restpos/b/i;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/aadhk/restpos/MgrItemPickerActivity;->p:Lcom/aadhk/restpos/b/i;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/MgrItemPickerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/aadhk/restpos/MgrItemPickerActivity;->o:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0300a8

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->setContentView(I)V

    .line 50
    const v0, 0x7f090264

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->setTitle(I)V

    .line 52
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/aadhk/restpos/b/b;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 54
    invoke-virtual {v1}, Lcom/aadhk/restpos/b/b;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->n:Ljava/util/List;

    .line 55
    new-instance v1, Lcom/aadhk/restpos/b/i;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v1, Lcom/aadhk/restpos/MgrItemPickerActivity;->p:Lcom/aadhk/restpos/b/i;

    .line 57
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    const-string v1, "bundleItemPicker"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->a([J)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/aadhk/restpos/MgrItemPickerActivity;->o:Ljava/util/List;

    .line 60
    new-instance v0, Lcom/aadhk/restpos/aq;

    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/aq;-><init>(Lcom/aadhk/restpos/MgrItemPickerActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->a:Lcom/aadhk/restpos/aq;

    const v0, 0x7f0b0141

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->m:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->m:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->a:Lcom/aadhk/restpos/aq;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v0, 0x7f0b0140

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v0, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->l:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->l:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v1, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->m:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->a(Landroid/support/v4/view/ViewPager;)V

    .line 61
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 75
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 178
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 179
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 82
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    const-string v1, "bundleItemPicker"

    sget-object v2, Lcom/aadhk/restpos/MgrItemPickerActivity;->o:Ljava/util/List;

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->a(Ljava/util/List;)[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 84
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 85
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->finish()V

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b028b
        :pswitch_0
    .end packed-switch
.end method
