.class public Lcom/aadhk/restpos/c/cs;
.super Landroid/app/Dialog;
.source "ProGuard"


# instance fields
.field public a:Landroid/content/res/Resources;

.field public b:Landroid/content/SharedPreferences;

.field public c:Landroid/content/Context;

.field public d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cs;->requestWindowFeature(I)Z

    .line 29
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cs;->setCancelable(Z)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/aadhk/restpos/c/cs;->setContentView(I)V

    .line 31
    iput-object p1, p0, Lcom/aadhk/restpos/c/cs;->c:Landroid/content/Context;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/cs;->a:Landroid/content/res/Resources;

    .line 34
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/cs;->b:Landroid/content/SharedPreferences;

    .line 44
    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cs;->d:Landroid/widget/TextView;

    .line 45
    return-void
.end method


# virtual methods
.method public setTitle(I)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/c/cs;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/c/cs;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method
