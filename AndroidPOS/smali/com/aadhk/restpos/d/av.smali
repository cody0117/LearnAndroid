.class public final Lcom/aadhk/restpos/d/av;
.super Landroid/preference/PreferenceFragment;
.source "ProGuard"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/KitchenSettingActivity;

.field private b:Landroid/preference/Preference;

.field private c:Landroid/preference/Preference;

.field private d:Landroid/preference/Preference;

.field private e:Lcom/aadhk/restpos/util/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/av;)Landroid/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/aadhk/restpos/d/av;->b:Landroid/preference/Preference;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 92
    new-instance v0, Lcom/aadhk/restpos/c/ar;

    iget-object v1, p0, Lcom/aadhk/restpos/d/av;->a:Lcom/aadhk/restpos/KitchenSettingActivity;

    invoke-direct {v0, v1, p1}, Lcom/aadhk/restpos/c/ar;-><init>(Landroid/content/Context;I)V

    .line 93
    const v1, 0x7f0803af

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/av;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ar;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 95
    const v1, 0x7f0803b0

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/av;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ar;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    new-instance v1, Lcom/aadhk/restpos/d/ay;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/d/ay;-><init>(Lcom/aadhk/restpos/d/av;I)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ar;->a(Lcom/aadhk/product/library/b/f;)V

    .line 113
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ar;->show()V

    .line 114
    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/av;)Lcom/aadhk/restpos/util/r;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/aadhk/restpos/d/av;->e:Lcom/aadhk/restpos/util/r;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/av;)Landroid/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/aadhk/restpos/d/av;->c:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/av;)Landroid/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/aadhk/restpos/d/av;->d:Landroid/preference/Preference;

    return-object v0
.end method


# virtual methods
.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/KitchenSettingActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/av;->a:Lcom/aadhk/restpos/KitchenSettingActivity;

    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 42
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/av;->addPreferencesFromResource(I)V

    .line 29
    new-instance v0, Lcom/aadhk/restpos/util/r;

    iget-object v1, p0, Lcom/aadhk/restpos/d/av;->a:Lcom/aadhk/restpos/KitchenSettingActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/av;->e:Lcom/aadhk/restpos/util/r;

    .line 30
    const-string v0, "prefMinutes"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/av;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/av;->b:Landroid/preference/Preference;

    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/d/av;->b:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 32
    const-string v0, "prefFontSize"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/av;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/av;->c:Landroid/preference/Preference;

    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/av;->c:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 34
    const-string v0, "prefRefresh"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/av;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/av;->d:Landroid/preference/Preference;

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/d/av;->d:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 36
    return-void
.end method

.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/av;->b:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 57
    new-instance v0, Lcom/aadhk/restpos/c/t;

    iget-object v1, p0, Lcom/aadhk/restpos/d/av;->a:Lcom/aadhk/restpos/KitchenSettingActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/t;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/aadhk/restpos/d/aw;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/aw;-><init>(Lcom/aadhk/restpos/d/av;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/t;->a(Lcom/aadhk/product/library/b/f;)V

    new-instance v1, Lcom/aadhk/restpos/d/ax;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ax;-><init>(Lcom/aadhk/restpos/d/av;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/t;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/t;->show()V

    .line 63
    :cond_0
    :goto_0
    return v2

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/av;->c:Landroid/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 59
    invoke-direct {p0, v2}, Lcom/aadhk/restpos/d/av;->a(I)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/av;->d:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 61
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/av;->a(I)V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 47
    const v0, 0x7f0803a9

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/av;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/aadhk/restpos/d/av;->e:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->F()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/aadhk/restpos/d/av;->e:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->G()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/aadhk/restpos/d/av;->e:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v3}, Lcom/aadhk/restpos/util/r;->H()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/aadhk/restpos/d/av;->b:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    const v0, 0x7f0803ab

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/av;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/aadhk/restpos/d/av;->e:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->I()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/aadhk/restpos/d/av;->c:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 51
    const v0, 0x7f0803ad

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/av;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/aadhk/restpos/d/av;->e:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->J()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/aadhk/restpos/d/av;->d:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method
