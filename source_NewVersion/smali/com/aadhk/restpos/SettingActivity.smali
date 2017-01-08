.class public Lcom/aadhk/restpos/SettingActivity;
.super Lcom/aadhk/restpos/PrefActivity;
.source "ProGuard"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private A:Landroid/preference/ListPreference;

.field private B:Landroid/preference/Preference;

.field private C:Landroid/preference/Preference;

.field private D:Landroid/preference/Preference;

.field private E:Lcom/aadhk/restpos/b/c;

.field private F:Lcom/aadhk/restpos/b/r;

.field private G:Lcom/aadhk/restpos/b/i;

.field private H:Lcom/aadhk/restpos/bean/Company;

.field private I:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lcom/aadhk/restpos/f/l;

.field private K:I

.field private c:Landroid/preference/Preference;

.field private d:Landroid/preference/Preference;

.field private e:Landroid/preference/Preference;

.field private f:Landroid/preference/Preference;

.field private g:Landroid/preference/Preference;

.field private h:Landroid/preference/Preference;

.field private i:Landroid/preference/Preference;

.field private j:Landroid/preference/Preference;

.field private k:Landroid/preference/Preference;

.field private l:Landroid/preference/Preference;

.field private m:Landroid/preference/Preference;

.field private n:Landroid/preference/Preference;

.field private o:Landroid/preference/Preference;

.field private p:Landroid/preference/Preference;

.field private q:Landroid/preference/Preference;

.field private r:Landroid/preference/Preference;

.field private s:Landroid/preference/Preference;

.field private t:Landroid/preference/Preference;

.field private u:Landroid/preference/Preference;

.field private v:Landroid/preference/Preference;

.field private w:Landroid/preference/Preference;

.field private x:Landroid/preference/Preference;

.field private y:Landroid/preference/Preference;

.field private z:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/aadhk/restpos/PrefActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/SettingActivity;)Lcom/aadhk/restpos/f/l;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->J:Lcom/aadhk/restpos/f/l;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/aadhk/restpos/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 443
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 444
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 448
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 449
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 459
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 461
    :goto_1
    return-void

    .line 452
    :cond_0
    :try_start_1
    new-instance v1, Lcom/aadhk/restpos/c/al;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/al;-><init>(Landroid/content/Context;)V

    .line 453
    const v2, 0x7f09031b

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/al;->setTitle(I)V

    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/al;->a(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/al;->show()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 487
    const v0, 0x7f0902ee

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/aadhk/restpos/SettingActivity;->J:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v2}, Lcom/aadhk/restpos/f/l;->q()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 488
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->J:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    const-string v0, ""

    .line 493
    :goto_0
    iget-object v2, p0, Lcom/aadhk/restpos/SettingActivity;->i:Landroid/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 494
    return-void

    .line 491
    :cond_0
    const v0, 0x7f0902ef

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/aadhk/restpos/SettingActivity;->J:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v3}, Lcom/aadhk/restpos/f/l;->r()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/aadhk/restpos/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/aadhk/restpos/SettingActivity;->b()V

    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/SettingActivity;)Landroid/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->k:Landroid/preference/Preference;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 520
    const-string v0, ""

    .line 521
    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->H:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->H:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->H:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->c(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->H:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->H:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->H:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->c(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->h:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 528
    return-void
.end method

.method static synthetic d(Lcom/aadhk/restpos/SettingActivity;)Lcom/aadhk/restpos/bean/Company;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->H:Lcom/aadhk/restpos/bean/Company;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->H:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const v0, 0x7f090187

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->j:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/aadhk/restpos/SettingActivity;->H:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getServiceFee()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 538
    return-void

    .line 535
    :cond_0
    const v0, 0x7f090188

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/aadhk/restpos/SettingActivity;)Lcom/aadhk/restpos/b/c;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->E:Lcom/aadhk/restpos/b/c;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/aadhk/restpos/SettingActivity;->d()V

    return-void
.end method

.method static synthetic g(Lcom/aadhk/restpos/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/aadhk/restpos/SettingActivity;->c()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/aadhk/restpos/PrefActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->setTitle(I)V

    .line 76
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->addPreferencesFromResource(I)V

    .line 78
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->a:Landroid/content/SharedPreferences;

    .line 79
    new-instance v0, Lcom/aadhk/restpos/f/l;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->J:Lcom/aadhk/restpos/f/l;

    .line 81
    const-string v0, "prefPrinterCashier"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->c:Landroid/preference/Preference;

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->c:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 83
    const-string v0, "prefPrinterKitchen"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->d:Landroid/preference/Preference;

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->d:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    const-string v0, "prefPrinterKitchen2"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->e:Landroid/preference/Preference;

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->e:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    const-string v0, "prefPrinterBar"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->f:Landroid/preference/Preference;

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->f:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 89
    const-string v0, "prefCompany"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->g:Landroid/preference/Preference;

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->g:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 92
    const-string v0, "prefTable"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->l:Landroid/preference/Preference;

    .line 93
    const-string v0, "prefCategory"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->m:Landroid/preference/Preference;

    .line 94
    const-string v0, "prefItem"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->n:Landroid/preference/Preference;

    .line 95
    const-string v0, "prefSupp"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->o:Landroid/preference/Preference;

    .line 96
    const-string v0, "prefCustomer"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->p:Landroid/preference/Preference;

    .line 97
    const-string v0, "prefPayment"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->q:Landroid/preference/Preference;

    .line 98
    const-string v0, "prefDiscount"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->r:Landroid/preference/Preference;

    .line 99
    const-string v0, "prefKitchenNote"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->s:Landroid/preference/Preference;

    .line 100
    const-string v0, "prefVoidReason"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->t:Landroid/preference/Preference;

    .line 101
    const-string v0, "prefUser"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->u:Landroid/preference/Preference;

    .line 102
    const-string v0, "prefPrice"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->v:Landroid/preference/Preference;

    .line 103
    const-string v0, "prefUserPermission"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->w:Landroid/preference/Preference;

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->l:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->m:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->n:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->o:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->p:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->q:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->r:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->s:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->t:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->u:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->v:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->w:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 122
    const-string v0, "prefLog"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->B:Landroid/preference/Preference;

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->B:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 124
    const-string v0, "prefAbout"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->C:Landroid/preference/Preference;

    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->C:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 126
    const-string v0, "prefHelp"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->D:Landroid/preference/Preference;

    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->D:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 129
    const-string v0, "prefLang"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->z:Landroid/preference/ListPreference;

    .line 130
    const-string v0, "prefDateFormat"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->A:Landroid/preference/ListPreference;

    .line 131
    const-string v0, "prefRegister"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->x:Landroid/preference/Preference;

    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->x:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 133
    const-string v0, "prefEmailUs"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->y:Landroid/preference/Preference;

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->y:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 136
    const-string v0, "prefTax"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->h:Landroid/preference/Preference;

    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->h:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 138
    const-string v0, "prefOrderNum"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->i:Landroid/preference/Preference;

    .line 139
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->i:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 140
    const-string v0, "prefTableDefaultPersonNum"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->k:Landroid/preference/Preference;

    .line 141
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->k:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 142
    const-string v0, "prefDefaultGratuity"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->j:Landroid/preference/Preference;

    .line 143
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->j:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/aadhk/restpos/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->H:Lcom/aadhk/restpos/bean/Company;

    .line 147
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 148
    new-instance v1, Lcom/aadhk/restpos/b/r;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/r;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->F:Lcom/aadhk/restpos/b/r;

    .line 149
    new-instance v1, Lcom/aadhk/restpos/b/c;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->E:Lcom/aadhk/restpos/b/c;

    .line 150
    new-instance v1, Lcom/aadhk/restpos/b/i;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->G:Lcom/aadhk/restpos/b/i;

    .line 151
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->F:Lcom/aadhk/restpos/b/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/r;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->I:Ljava/util/Map;

    .line 155
    :try_start_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/aadhk/restpos/SettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/aadhk/restpos/SettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 156
    const v1, 0x7f09024b

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aadhk/restpos/SettingActivity;->J:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v4}, Lcom/aadhk/restpos/f/l;->n()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/aadhk/restpos/SettingActivity;->k:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->B:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    :goto_0
    const-string v0, "categoryInfo"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 185
    const-string v1, "prefHelp"

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    return-void

    .line 159
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 161
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 542
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 543
    invoke-super {p0}, Lcom/aadhk/restpos/PrefActivity;->onDestroy()V

    .line 544
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 481
    invoke-super {p0}, Lcom/aadhk/restpos/PrefActivity;->onPause()V

    .line 482
    invoke-virtual {p0}, Lcom/aadhk/restpos/SettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 483
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 229
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->c:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 230
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 231
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 232
    const-string v2, "printerId"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 234
    const-class v1, Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 405
    :cond_0
    :goto_0
    return v4

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->d:Landroid/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 241
    const-string v2, "printerId"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 243
    const-class v1, Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->e:Landroid/preference/Preference;

    if-ne p1, v0, :cond_3

    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 247
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 248
    const-string v2, "printerId"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 250
    const-class v1, Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->f:Landroid/preference/Preference;

    if-ne p1, v0, :cond_4

    .line 255
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 256
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 257
    const-string v2, "printerId"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 259
    const-class v1, Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 261
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->h:Landroid/preference/Preference;

    if-ne p1, v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->G:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/i;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->G:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/i;->b()Z

    move-result v1

    new-instance v2, Lcom/aadhk/restpos/c/cd;

    iget-object v3, p0, Lcom/aadhk/restpos/SettingActivity;->H:Lcom/aadhk/restpos/bean/Company;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/aadhk/restpos/c/cd;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Company;ZZ)V

    new-instance v0, Lcom/aadhk/restpos/by;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/by;-><init>(Lcom/aadhk/restpos/SettingActivity;)V

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/c/cd;->a(Lcom/aadhk/restpos/c/cf;)V

    invoke-virtual {v2}, Lcom/aadhk/restpos/c/cd;->show()V

    goto/16 :goto_0

    .line 263
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->i:Landroid/preference/Preference;

    if-ne p1, v0, :cond_6

    .line 264
    new-instance v0, Lcom/aadhk/restpos/c/ab;

    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->J:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v1}, Lcom/aadhk/restpos/f/l;->q()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/c/ab;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    const v1, 0x7f09026f

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ab;->setTitle(I)V

    .line 266
    new-instance v1, Lcom/aadhk/restpos/bu;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/bu;-><init>(Lcom/aadhk/restpos/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ab;->a(Lcom/aadhk/product/library/b/f;)V

    .line 274
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ab;->show()V

    goto/16 :goto_0

    .line 275
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->k:Landroid/preference/Preference;

    if-ne p1, v0, :cond_7

    .line 276
    new-instance v0, Lcom/aadhk/restpos/c/ad;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/SettingActivity;->J:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v2}, Lcom/aadhk/restpos/f/l;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/c/ad;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    const v1, 0x7f090182

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ad;->setTitle(I)V

    .line 278
    new-instance v1, Lcom/aadhk/restpos/bv;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/bv;-><init>(Lcom/aadhk/restpos/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ad;->a(Lcom/aadhk/product/library/b/f;)V

    .line 286
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ad;->show()V

    goto/16 :goto_0

    .line 287
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->j:Landroid/preference/Preference;

    if-ne p1, v0, :cond_8

    .line 288
    new-instance v0, Lcom/aadhk/restpos/c/ai;

    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->H:Lcom/aadhk/restpos/bean/Company;

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/c/ai;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Company;)V

    .line 289
    const v1, 0x7f0900c1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ai;->setTitle(I)V

    .line 290
    new-instance v1, Lcom/aadhk/restpos/bw;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/bw;-><init>(Lcom/aadhk/restpos/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ai;->a(Lcom/aadhk/restpos/c/ak;)V

    .line 298
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ai;->show()V

    goto/16 :goto_0

    .line 299
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->g:Landroid/preference/Preference;

    if-ne p1, v0, :cond_9

    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    const-class v1, Lcom/aadhk/restpos/CompanyActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 303
    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->B:Landroid/preference/Preference;

    if-ne p1, v0, :cond_a

    .line 304
    new-instance v0, Lcom/aadhk/restpos/f/a;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/f/a;-><init>(Landroid/content/Context;)V

    .line 305
    invoke-virtual {v0}, Lcom/aadhk/restpos/f/a;->e()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 306
    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->C:Landroid/preference/Preference;

    if-ne p1, v0, :cond_b

    .line 307
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 308
    const-class v1, Lcom/aadhk/restpos/AboutActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 310
    :cond_b
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->D:Landroid/preference/Preference;

    if-ne p1, v0, :cond_c

    .line 311
    invoke-direct {p0}, Lcom/aadhk/restpos/SettingActivity;->a()V

    goto/16 :goto_0

    .line 312
    :cond_c
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->x:Landroid/preference/Preference;

    if-ne p1, v0, :cond_d

    .line 313
    iget v0, p0, Lcom/aadhk/restpos/SettingActivity;->K:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aadhk/restpos/SettingActivity;->K:I

    .line 314
    iget v0, p0, Lcom/aadhk/restpos/SettingActivity;->K:I

    if-lt v0, v3, :cond_0

    .line 315
    :try_start_0
    const-string v0, "com.aadhk.restpos.full"

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "com.aadhk.restpos.full"

    invoke-static {p0, v2}, Lcom/aadhk/b/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aadhk/b/a/a;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/aadhk/b/a/a;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/aadhk/b/a/a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->b:Landroid/content/res/Resources;

    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/b/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/aadhk/restpos/bx;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/bx;-><init>(Lcom/aadhk/restpos/SettingActivity;)V

    invoke-virtual {v3, v0}, Lcom/aadhk/b/a/a;->a(Lcom/aadhk/b/a/c;)V

    invoke-virtual {v3}, Lcom/aadhk/b/a/a;->show()V
    :try_end_0
    .catch Lcom/aadhk/b/a; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lcom/aadhk/b/a;->printStackTrace()V

    goto/16 :goto_0

    .line 317
    :cond_d
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->y:Landroid/preference/Preference;

    if-ne p1, v0, :cond_e

    .line 318
    invoke-static {p0}, Lcom/aadhk/product/library/c/l;->b(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 319
    :cond_e
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->l:Landroid/preference/Preference;

    if-ne p1, v0, :cond_f

    .line 320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 321
    const-class v1, Lcom/aadhk/restpos/MgrTableActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 323
    :cond_f
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->m:Landroid/preference/Preference;

    if-ne p1, v0, :cond_10

    .line 324
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 325
    const-class v1, Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 327
    :cond_10
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->n:Landroid/preference/Preference;

    if-ne p1, v0, :cond_11

    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 329
    const-class v1, Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 331
    :cond_11
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->o:Landroid/preference/Preference;

    if-ne p1, v0, :cond_12

    .line 332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 333
    const-class v1, Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 334
    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 336
    :cond_12
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->p:Landroid/preference/Preference;

    if-ne p1, v0, :cond_13

    .line 337
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 338
    const-class v1, Lcom/aadhk/restpos/CustomerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 339
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 340
    const-string v2, "bundleCustomer"

    const-string v3, "contextTable"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 343
    :cond_13
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->q:Landroid/preference/Preference;

    if-ne p1, v0, :cond_14

    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 345
    const-class v1, Lcom/aadhk/restpos/PaymentMethodActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 347
    :cond_14
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->r:Landroid/preference/Preference;

    if-ne p1, v0, :cond_15

    .line 348
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 349
    const-class v1, Lcom/aadhk/restpos/DiscountActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 351
    :cond_15
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->s:Landroid/preference/Preference;

    if-ne p1, v0, :cond_16

    .line 352
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 353
    const-class v1, Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 355
    :cond_16
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->t:Landroid/preference/Preference;

    if-ne p1, v0, :cond_17

    .line 356
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 357
    const-class v1, Lcom/aadhk/restpos/MgrVoidReasonActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 359
    :cond_17
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->u:Landroid/preference/Preference;

    if-ne p1, v0, :cond_18

    .line 360
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 361
    const-class v1, Lcom/aadhk/restpos/UserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 363
    :cond_18
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->v:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1b

    .line 364
    const-string v0, "com.aadhk.restpos.feature.price"

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "com.aadhk.restpos.full"

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 365
    :cond_19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 366
    const-class v1, Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 369
    :cond_1a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aadhk/restpos/PurchaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 373
    :cond_1b
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->w:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 374
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 375
    const-class v1, Lcom/aadhk/restpos/UserPermissionActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 499
    invoke-super {p0}, Lcom/aadhk/restpos/PrefActivity;->onResume()V

    .line 500
    invoke-virtual {p0}, Lcom/aadhk/restpos/SettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 502
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->g:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->H:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->z:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->J:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->d()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->A:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->A:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->d:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->I:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->e:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->I:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->f:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->I:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 512
    invoke-direct {p0}, Lcom/aadhk/restpos/SettingActivity;->b()V

    .line 514
    invoke-direct {p0}, Lcom/aadhk/restpos/SettingActivity;->c()V

    .line 515
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->J:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->s()I

    .line 516
    invoke-direct {p0}, Lcom/aadhk/restpos/SettingActivity;->d()V

    .line 517
    return-void

    .line 504
    :cond_0
    if-ne v0, v3, :cond_1

    const v0, 0x7f090074

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    const v0, 0x7f09006e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-ne v0, v5, :cond_3

    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    const v0, 0x7f090076

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/16 v2, 0xa

    if-ne v0, v2, :cond_5

    const v0, 0x7f090078

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x7

    if-ne v0, v2, :cond_6

    const v0, 0x7f090070

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x9

    if-ne v0, v2, :cond_7

    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x6

    if-ne v0, v2, :cond_8

    const v0, 0x7f090077

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-virtual {p0, p2}, Lcom/aadhk/restpos/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 193
    instance-of v1, v0, Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 194
    check-cast v0, Landroid/preference/ListPreference;

    .line 195
    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->z:Landroid/preference/ListPreference;

    if-ne v0, v1, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/aadhk/restpos/SettingActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->a()V

    .line 198
    invoke-virtual {p0}, Lcom/aadhk/restpos/SettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 199
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0}, Lcom/aadhk/restpos/SettingActivity;->finish()V

    .line 201
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->A:Landroid/preference/ListPreference;

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/aadhk/restpos/SettingActivity;->A:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
