.class public abstract Lcom/aadhk/restpos/a/ag;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Landroid/content/res/Resources;

.field public d:Ljava/lang/String;

.field public e:Landroid/content/SharedPreferences;

.field public f:Lcom/aadhk/restpos/bean/Company;

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/aadhk/restpos/a/ag;->a:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/ag;->b:Landroid/view/LayoutInflater;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/ag;->c:Landroid/content/res/Resources;

    .line 27
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/ag;->e:Landroid/content/SharedPreferences;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/ag;->f:Lcom/aadhk/restpos/bean/Company;

    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/a/ag;->f:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/ag;->d:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/a/ag;->f:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/a/ag;->g:I

    .line 32
    return-void
.end method
