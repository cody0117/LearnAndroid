.class public final Lcom/aadhk/restpos/d/it;
.super Landroid/preference/PreferenceFragment;
.source "ProGuard"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private A:Landroid/preference/ListPreference;

.field private B:Landroid/preference/Preference;

.field private C:Landroid/preference/Preference;

.field private D:Landroid/preference/Preference;

.field private E:Lcom/aadhk/restpos/SettingActivity;

.field private F:Landroid/preference/Preference;

.field private G:Landroid/preference/Preference;

.field private H:Landroid/preference/Preference;

.field private I:Lcom/aadhk/restpos/bean/Company;

.field private J:Ljava/util/Map;
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

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ServiceFee;",
            ">;"
        }
    .end annotation
.end field

.field private L:Lcom/aadhk/restpos/util/r;

.field private M:Lcom/aadhk/restpos/g/aa;

.field private N:Lcom/aadhk/restpos/g/z;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private a:Landroid/preference/Preference;

.field private b:Landroid/preference/Preference;

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
    .line 81
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 901
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/g/aa;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->M:Lcom/aadhk/restpos/g/aa;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/it;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/aadhk/restpos/d/it;->O:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/it;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/aadhk/restpos/d/it;->K:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/it;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 598
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 599
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 603
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 604
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 614
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 616
    :goto_1
    return-void

    .line 607
    :cond_0
    :try_start_1
    new-instance v1, Lcom/aadhk/restpos/c/ax;

    iget-object v2, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 608
    const v2, 0x7f08037b

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ax;->setTitle(I)V

    .line 609
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 310
    new-instance v0, Lcom/aadhk/restpos/c/at;

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    iget-object v3, p0, Lcom/aadhk/restpos/d/it;->K:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/aadhk/restpos/c/at;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Company;ILjava/util/List;)V

    .line 311
    const v1, 0x7f0800ef

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/at;->setTitle(I)V

    .line 312
    new-instance v1, Lcom/aadhk/restpos/d/iu;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/d/iu;-><init>(Lcom/aadhk/restpos/d/it;I)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/at;->a(Lcom/aadhk/restpos/c/au;)V

    .line 319
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/at;->show()V

    .line 320
    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/it;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/aadhk/restpos/d/it;->P:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 743
    const-string v0, ""

    .line 744
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

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

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

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

    .line 750
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax3()D

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

    .line 753
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->f:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 754
    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/util/r;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->L:Lcom/aadhk/restpos/util/r;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/it;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/aadhk/restpos/d/it;->Q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/it;)Landroid/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->i:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/it;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/aadhk/restpos/d/it;->R:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/it;)Landroid/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->j:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/it;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 81
    const-string v0, ""

    const v1, 0x7f08034e

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/it;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/it;->P:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/it;->Q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/it;->R:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/it;->O:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const v0, 0x7f08034f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/it;->P:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/it;->O:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/it;->R:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/aadhk/restpos/d/it;->g:Landroid/preference/Preference;

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

    return-void
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/g/z;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->N:Lcom/aadhk/restpos/g/z;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/it;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->K:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/d/it;)V
    .locals 8
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeDineIn()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0801be

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdDineIn()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->B:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0801bf

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ServiceFee;

    iget-object v3, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdDineIn()I

    move-result v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getId()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->isPercentage()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/aadhk/restpos/d/it;->B:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/aadhk/restpos/d/it;->B:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v5

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

    move-result-wide v6

    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v7, v0}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic j(Lcom/aadhk/restpos/d/it;)V
    .locals 8
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeTakeOut()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0801be

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdTakeOut()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->C:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0801bf

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ServiceFee;

    iget-object v3, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdTakeOut()I

    move-result v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getId()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->isPercentage()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/aadhk/restpos/d/it;->C:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/aadhk/restpos/d/it;->C:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v5

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

    move-result-wide v6

    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v7, v0}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic k(Lcom/aadhk/restpos/d/it;)V
    .locals 8
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeDelivery()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0801be

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdDelivery()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->D:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0801bf

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ServiceFee;

    iget-object v3, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdDelivery()I

    move-result v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getId()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->isPercentage()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/aadhk/restpos/d/it;->D:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/aadhk/restpos/d/it;->D:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v5

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

    move-result-wide v6

    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v7, v0}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic l(Lcom/aadhk/restpos/d/it;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->P:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/aadhk/restpos/d/it;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->Q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/aadhk/restpos/d/it;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->R:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/bean/Company;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    return-object v0
.end method

.method static synthetic p(Lcom/aadhk/restpos/d/it;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/aadhk/restpos/d/it;->b()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 195
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SettingActivity;->a()Lcom/aadhk/restpos/g/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->M:Lcom/aadhk/restpos/g/aa;

    .line 196
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SettingActivity;->b()Lcom/aadhk/restpos/g/z;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->N:Lcom/aadhk/restpos/g/z;

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->M:Lcom/aadhk/restpos/g/aa;

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/aa;->c()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->J:Ljava/util/Map;

    .line 201
    const v0, 0x7f080064

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    invoke-virtual {v3}, Lcom/aadhk/restpos/SettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    invoke-virtual {v4}, Lcom/aadhk/restpos/SettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    const v1, 0x7f0802a7

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/it;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aadhk/restpos/d/it;->L:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v4}, Lcom/aadhk/restpos/util/r;->n()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 203
    const v2, 0x7f080291

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/it;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/aadhk/restpos/d/it;->L:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v5}, Lcom/aadhk/restpos/util/r;->o()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 204
    iget-object v3, p0, Lcom/aadhk/restpos/d/it;->i:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->F:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->j:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    :goto_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/it;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->k:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    const-string v0, "categoryInfo"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 239
    const-string v1, "prefHelp"

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    return-void

    .line 207
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 209
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 245
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/SettingActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    .line 246
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 247
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->addPreferencesFromResource(I)V

    .line 105
    new-instance v0, Lcom/aadhk/restpos/util/r;

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->L:Lcom/aadhk/restpos/util/r;

    .line 113
    const-string v0, "prefDineInServiceFree"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->B:Landroid/preference/Preference;

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->B:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 115
    const-string v0, "prefTakeOutServiceFree"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->C:Landroid/preference/Preference;

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->C:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 117
    const-string v0, "prefDeliveryServiceFree"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->D:Landroid/preference/Preference;

    .line 118
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->D:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 120
    const-string v0, "prefPrinterCashier"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->a:Landroid/preference/Preference;

    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->a:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 122
    const-string v0, "prefPrinterKitchen"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->b:Landroid/preference/Preference;

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->b:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 124
    const-string v0, "prefPrinterKitchen2"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->c:Landroid/preference/Preference;

    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->c:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 126
    const-string v0, "prefPrinterBar"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->d:Landroid/preference/Preference;

    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->d:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 128
    const-string v0, "prefCompany"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->e:Landroid/preference/Preference;

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->e:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 131
    const-string v0, "prefTable"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->l:Landroid/preference/Preference;

    .line 132
    const-string v0, "prefTableGroup"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->k:Landroid/preference/Preference;

    .line 133
    const-string v0, "prefCategory"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->m:Landroid/preference/Preference;

    .line 134
    const-string v0, "prefItem"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->n:Landroid/preference/Preference;

    .line 135
    const-string v0, "prefSupp"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->o:Landroid/preference/Preference;

    .line 136
    const-string v0, "prefCustomer"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->p:Landroid/preference/Preference;

    .line 137
    const-string v0, "prefPayment"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->q:Landroid/preference/Preference;

    .line 138
    const-string v0, "prefDiscount"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->r:Landroid/preference/Preference;

    .line 139
    const-string v0, "prefKitchenNote"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->s:Landroid/preference/Preference;

    .line 140
    const-string v0, "prefVoidReason"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->t:Landroid/preference/Preference;

    .line 141
    const-string v0, "prefUser"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->u:Landroid/preference/Preference;

    .line 142
    const-string v0, "prefPrice"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->v:Landroid/preference/Preference;

    .line 143
    const-string v0, "prefUserPermission"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->w:Landroid/preference/Preference;

    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->l:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->k:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->m:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->n:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->o:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->p:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->q:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->r:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->s:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->t:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->u:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->v:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->w:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 163
    const-string v0, "prefLog"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->F:Landroid/preference/Preference;

    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->F:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 165
    const-string v0, "prefAbout"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->G:Landroid/preference/Preference;

    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->G:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 167
    const-string v0, "prefHelp"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->H:Landroid/preference/Preference;

    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->H:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 170
    const-string v0, "prefLang"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->z:Landroid/preference/ListPreference;

    .line 171
    const-string v0, "prefDateFormat"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->A:Landroid/preference/ListPreference;

    .line 172
    const-string v0, "prefRegister"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->x:Landroid/preference/Preference;

    .line 173
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->x:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 174
    const-string v0, "prefEmailUs"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->y:Landroid/preference/Preference;

    .line 175
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->y:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 177
    const-string v0, "prefTax"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->f:Landroid/preference/Preference;

    .line 178
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->f:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 179
    const-string v0, "prefOrderNum"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->g:Landroid/preference/Preference;

    .line 180
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->g:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 181
    const-string v0, "prefTableDefaultPersonNum"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->i:Landroid/preference/Preference;

    .line 182
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->i:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 183
    const-string v0, "prefItemFontSize"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->j:Landroid/preference/Preference;

    .line 184
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->j:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 185
    const-string v0, "prefServiceFee"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->h:Landroid/preference/Preference;

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->h:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    .line 189
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 637
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 638
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/it;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 639
    return-void
.end method

.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 323
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->B:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/it;->a(I)V

    .line 503
    :cond_0
    :goto_0
    return v6

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->C:Landroid/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 326
    invoke-direct {p0, v6}, Lcom/aadhk/restpos/d/it;->a(I)V

    goto :goto_0

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->D:Landroid/preference/Preference;

    if-ne p1, v0, :cond_3

    .line 328
    invoke-direct {p0, v4}, Lcom/aadhk/restpos/d/it;->a(I)V

    goto :goto_0

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->a:Landroid/preference/Preference;

    if-ne p1, v0, :cond_4

    .line 330
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 331
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 332
    const-string v2, "printerId"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 333
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 334
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 335
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 338
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->b:Landroid/preference/Preference;

    if-ne p1, v0, :cond_5

    .line 339
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 340
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 341
    const-string v2, "printerId"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 343
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 345
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->c:Landroid/preference/Preference;

    if-ne p1, v0, :cond_6

    .line 346
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 347
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 348
    const-string v2, "printerId"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 350
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 351
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 354
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->d:Landroid/preference/Preference;

    if-ne p1, v0, :cond_7

    .line 355
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 356
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 357
    const-string v2, "printerId"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 359
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 361
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->f:Landroid/preference/Preference;

    if-ne p1, v0, :cond_8

    .line 362
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->M:Lcom/aadhk/restpos/g/aa;

    invoke-virtual {v0, v6}, Lcom/aadhk/restpos/g/aa;->a(I)Z

    move-result v3

    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->M:Lcom/aadhk/restpos/g/aa;

    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/g/aa;->a(I)Z

    move-result v4

    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->M:Lcom/aadhk/restpos/g/aa;

    invoke-virtual {v0, v5}, Lcom/aadhk/restpos/g/aa;->a(I)Z

    move-result v5

    new-instance v0, Lcom/aadhk/restpos/c/am;

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/restpos/c/am;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Company;ZZZ)V

    new-instance v1, Lcom/aadhk/restpos/d/iz;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/iz;-><init>(Lcom/aadhk/restpos/d/it;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/am;->a(Lcom/aadhk/restpos/c/ao;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/am;->show()V

    goto/16 :goto_0

    .line 363
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->g:Landroid/preference/Preference;

    if-ne p1, v0, :cond_9

    .line 364
    new-instance v0, Lcom/aadhk/restpos/c/ab;

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/it;->P:Ljava/lang/String;

    iget-object v3, p0, Lcom/aadhk/restpos/d/it;->Q:Ljava/lang/String;

    iget-object v4, p0, Lcom/aadhk/restpos/d/it;->R:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/c/ab;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const v1, 0x7f0802ca

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ab;->setTitle(I)V

    .line 366
    new-instance v1, Lcom/aadhk/restpos/d/iv;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/iv;-><init>(Lcom/aadhk/restpos/d/it;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ab;->a(Lcom/aadhk/restpos/c/af;)V

    .line 377
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ab;->show()V

    goto/16 :goto_0

    .line 378
    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->i:Landroid/preference/Preference;

    if-ne p1, v0, :cond_a

    .line 379
    new-instance v0, Lcom/aadhk/restpos/c/ak;

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/it;->L:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v3}, Lcom/aadhk/restpos/util/r;->n()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/ak;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 380
    const v1, 0x7f0801ba

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ak;->setTitle(I)V

    .line 381
    new-instance v1, Lcom/aadhk/restpos/d/iw;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/iw;-><init>(Lcom/aadhk/restpos/d/it;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ak;->a(Lcom/aadhk/product/library/b/f;)V

    .line 389
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ak;->show()V

    goto/16 :goto_0

    .line 390
    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->j:Landroid/preference/Preference;

    if-ne p1, v0, :cond_b

    .line 391
    new-instance v0, Lcom/aadhk/restpos/c/cw;

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/it;->L:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->o()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/cw;-><init>(Landroid/content/Context;I)V

    .line 392
    new-instance v1, Lcom/aadhk/restpos/d/ix;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ix;-><init>(Lcom/aadhk/restpos/d/it;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/cw;->a(Lcom/aadhk/product/library/b/f;)V

    .line 400
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/cw;->show()V

    goto/16 :goto_0

    .line 401
    :cond_b
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->h:Landroid/preference/Preference;

    if-ne p1, v0, :cond_c

    .line 402
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/ServiceFeeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 404
    :cond_c
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->e:Landroid/preference/Preference;

    if-ne p1, v0, :cond_d

    .line 405
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 406
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/CompanyActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 407
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 408
    :cond_d
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->F:Landroid/preference/Preference;

    if-ne p1, v0, :cond_e

    .line 409
    new-instance v0, Lcom/aadhk/restpos/util/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/util/a;-><init>(Landroid/content/Context;)V

    .line 410
    invoke-virtual {v0}, Lcom/aadhk/restpos/util/a;->e()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 411
    :cond_e
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->G:Landroid/preference/Preference;

    if-ne p1, v0, :cond_f

    .line 412
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 413
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/AboutActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 414
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 415
    :cond_f
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->H:Landroid/preference/Preference;

    if-ne p1, v0, :cond_10

    .line 416
    invoke-direct {p0}, Lcom/aadhk/restpos/d/it;->a()V

    goto/16 :goto_0

    .line 417
    :cond_10
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->x:Landroid/preference/Preference;

    if-ne p1, v0, :cond_11

    .line 422
    new-instance v0, Lcom/aadhk/restpos/c/cp;

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/it;->L:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->y()Lcom/aadhk/restpos/bean/License;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/cp;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/License;)V

    new-instance v1, Lcom/aadhk/restpos/d/iy;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/iy;-><init>(Lcom/aadhk/restpos/d/it;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/cp;->a(Lcom/aadhk/restpos/c/cr;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/cp;->show()V

    goto/16 :goto_0

    .line 423
    :cond_11
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->y:Landroid/preference/Preference;

    if-ne p1, v0, :cond_12

    .line 424
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    invoke-static {v0}, Lcom/aadhk/product/library/c/l;->a(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 425
    :cond_12
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->l:Landroid/preference/Preference;

    if-ne p1, v0, :cond_13

    .line 426
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 427
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/MgrTableActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 428
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 429
    :cond_13
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->k:Landroid/preference/Preference;

    if-ne p1, v0, :cond_14

    .line 430
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 431
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 433
    :cond_14
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->m:Landroid/preference/Preference;

    if-ne p1, v0, :cond_15

    .line 434
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 435
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 436
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 437
    :cond_15
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->n:Landroid/preference/Preference;

    if-ne p1, v0, :cond_16

    .line 438
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 439
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 440
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 441
    :cond_16
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->o:Landroid/preference/Preference;

    if-ne p1, v0, :cond_17

    .line 442
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 443
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 444
    const-string v1, "type"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 446
    :cond_17
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->p:Landroid/preference/Preference;

    if-ne p1, v0, :cond_18

    .line 447
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 448
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/CustomerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 449
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 450
    const-string v2, "bundleCustomer"

    const-string v3, "contextTable"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 452
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 453
    :cond_18
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->q:Landroid/preference/Preference;

    if-ne p1, v0, :cond_19

    .line 454
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 455
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/PaymentMethodActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 456
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 457
    :cond_19
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->r:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1a

    .line 458
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 459
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/DiscountActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 460
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 461
    :cond_1a
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->s:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1b

    .line 462
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 463
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 464
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 465
    :cond_1b
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->t:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1c

    .line 466
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 467
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/VoidReasonActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 468
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 469
    :cond_1c
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->u:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1d

    .line 470
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 471
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/UserActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 473
    :cond_1d
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->v:Landroid/preference/Preference;

    if-ne p1, v0, :cond_20

    .line 474
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-string v1, "com.aadhk.restpos.feature.price"

    invoke-static {v0, v1}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-string v1, "com.aadhk.restpos.full"

    invoke-static {v0, v1}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 475
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 476
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 477
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 479
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/PurchaseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 480
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 483
    :cond_20
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->w:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 484
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 485
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    const-class v2, Lcom/aadhk/restpos/RolePermissionActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 486
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/it;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public final onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 719
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 720
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/it;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 721
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->e:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->I:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->z:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/it;->L:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->e()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const v2, 0x7f08009e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->A:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->A:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->b:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->J:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->c:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->J:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->d:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/aadhk/restpos/d/it;->J:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 730
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/ja;

    invoke-direct {v1, p0, v4}, Lcom/aadhk/restpos/d/ja;-><init>(Lcom/aadhk/restpos/d/it;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    invoke-direct {v0, v1, v2, v4}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v8}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 732
    invoke-direct {p0}, Lcom/aadhk/restpos/d/it;->b()V

    .line 734
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/jb;

    invoke-direct {v1, p0, v4}, Lcom/aadhk/restpos/d/jb;-><init>(Lcom/aadhk/restpos/d/it;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    invoke-direct {v0, v1, v2, v4}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v8}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 735
    return-void

    .line 722
    :cond_0
    if-ne v2, v5, :cond_1

    const v2, 0x7f0800a6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne v2, v6, :cond_2

    const v2, 0x7f0800a0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-ne v2, v7, :cond_3

    const v2, 0x7f08009f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    const v2, 0x7f0800a8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    const v2, 0x7f0800ab

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    const v2, 0x7f0800a2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x9

    if-ne v2, v3, :cond_7

    const v2, 0x7f0800a5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x6

    if-ne v2, v3, :cond_8

    const v2, 0x7f0800a9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    const v2, 0x7f0800a1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    const v2, 0x7f0800ac

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    const v2, 0x7f0800aa

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const v2, 0x7f08009d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-virtual {p0, p2}, Lcom/aadhk/restpos/d/it;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 251
    instance-of v1, v0, Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 252
    check-cast v0, Landroid/preference/ListPreference;

    .line 253
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->z:Landroid/preference/ListPreference;

    if-ne v0, v1, :cond_1

    .line 254
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/je;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/je;-><init>(Lcom/aadhk/restpos/d/it;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/it;->E:Lcom/aadhk/restpos/SettingActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 255
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->A:Landroid/preference/ListPreference;

    if-ne v0, v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/aadhk/restpos/d/it;->A:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
