.class public Lcom/aadhk/restpos/ServerActivity;
.super Lcom/aadhk/restpos/PrefActivity;
.source "ProGuard"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field c:Lcom/aadhk/product/library/a/c;

.field private d:Landroid/preference/Preference;

.field private e:Landroid/preference/Preference;

.field private f:Landroid/preference/Preference;

.field private g:Landroid/preference/Preference;

.field private h:Lcom/aadhk/restpos/util/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/aadhk/restpos/PrefActivity;-><init>()V

    .line 102
    new-instance v0, Lcom/aadhk/restpos/da;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/da;-><init>(Lcom/aadhk/restpos/ServerActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/ServerActivity;->c:Lcom/aadhk/product/library/a/c;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/aadhk/restpos/PrefActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0803c5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ServerActivity;->setTitle(I)V

    .line 43
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ServerActivity;->addPreferencesFromResource(I)V

    .line 45
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ServerActivity;->a:Landroid/content/SharedPreferences;

    .line 46
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/ServerActivity;->h:Lcom/aadhk/restpos/util/r;

    .line 53
    const-string v0, "prefServerInfo"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ServerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ServerActivity;->e:Landroid/preference/Preference;

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/ServerActivity;->e:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 55
    const-string v0, "prefServerPurchase"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ServerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ServerActivity;->g:Landroid/preference/Preference;

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/ServerActivity;->g:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/aadhk/restpos/PrefActivity;->onDestroy()V

    .line 93
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/ServerActivity;->d:Landroid/preference/Preference;

    if-eq p1, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/ServerActivity;->e:Landroid/preference/Preference;

    if-eq p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/ServerActivity;->g:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 66
    invoke-static {p0}, Lcom/aadhk/product/library/c/l;->a(Landroid/app/Activity;)V

    .line 87
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/ServerActivity;->f:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 68
    new-instance v0, Lcom/aadhk/restpos/c/dn;

    iget-object v1, p0, Lcom/aadhk/restpos/ServerActivity;->h:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->w()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/c/dn;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    const v1, 0x7f0803c1

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/ServerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/dn;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v1, Lcom/aadhk/restpos/cz;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/cz;-><init>(Lcom/aadhk/restpos/ServerActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/dn;->a(Lcom/aadhk/restpos/c/do;)V

    .line 85
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/dn;->show()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    return-void
.end method
