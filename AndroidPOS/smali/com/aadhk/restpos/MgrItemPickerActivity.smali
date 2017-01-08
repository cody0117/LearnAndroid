.class public Lcom/aadhk/restpos/MgrItemPickerActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# static fields
.field private static r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation
.end field

.field private static t:Lcom/aadhk/restpos/g/f;


# instance fields
.field private a:Lcom/aadhk/restpos/at;

.field private o:Lcom/viewpagerindicator/TabPageIndicator;

.field private p:Landroid/support/v4/view/ViewPager;

.field private q:Ljava/util/List;
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
    .line 33
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 112
    return-void
.end method

.method static synthetic a()Lcom/aadhk/restpos/g/f;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/aadhk/restpos/MgrItemPickerActivity;->t:Lcom/aadhk/restpos/g/f;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/MgrItemPickerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/aadhk/restpos/MgrItemPickerActivity;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/aadhk/restpos/MgrItemPickerActivity;->s:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f0300c6

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->setContentView(I)V

    .line 49
    const v0, 0x7f0802bf

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->setTitle(I)V

    .line 51
    new-instance v0, Lcom/aadhk/restpos/g/f;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aadhk/restpos/MgrItemPickerActivity;->t:Lcom/aadhk/restpos/g/f;

    .line 52
    sget-object v0, Lcom/aadhk/restpos/MgrItemPickerActivity;->t:Lcom/aadhk/restpos/g/f;

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/f;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->q:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/MgrItemPickerActivity;->s:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    const-string v1, "bundleItemPicker"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->a([J)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/aadhk/restpos/MgrItemPickerActivity;->r:Ljava/util/List;

    .line 58
    new-instance v0, Lcom/aadhk/restpos/at;

    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/at;-><init>(Lcom/aadhk/restpos/MgrItemPickerActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->a:Lcom/aadhk/restpos/at;

    const v0, 0x7f090186

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->p:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->p:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->a:Lcom/aadhk/restpos/at;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v0, 0x7f090185

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v0, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->o:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->o:Lcom/viewpagerindicator/TabPageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->o:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v1, p0, Lcom/aadhk/restpos/MgrItemPickerActivity;->p:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->a(Landroid/support/v4/view/ViewPager;)V

    .line 59
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 73
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/aadhk/restpos/MgrItemPickerActivity;->t:Lcom/aadhk/restpos/g/f;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 177
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 178
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 80
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 82
    const-string v2, "bundleItemPicker"

    sget-object v3, Lcom/aadhk/restpos/MgrItemPickerActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 84
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 85
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrItemPickerActivity;->finish()V

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x7f09030c
        :pswitch_0
    .end packed-switch
.end method
