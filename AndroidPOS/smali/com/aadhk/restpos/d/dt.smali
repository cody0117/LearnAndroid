.class final Lcom/aadhk/restpos/d/dt;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/dr;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/dr;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/aadhk/restpos/d/dt;->a:Lcom/aadhk/restpos/d/dr;

    .line 132
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 133
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x2

    return v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/aadhk/restpos/d/dt;->a:Lcom/aadhk/restpos/d/dr;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dr;->a(Lcom/aadhk/restpos/d/dr;)Lcom/aadhk/restpos/d/en;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/dt;->a:Lcom/aadhk/restpos/d/dr;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dr;->b(Lcom/aadhk/restpos/d/dr;)Lcom/aadhk/restpos/d/du;

    move-result-object v0

    goto :goto_0
.end method
