.class public Lcom/aadhk/restpos/POSApp;
.super Landroid/app/Application;
.source "ProGuard"


# static fields
.field public static a:I


# instance fields
.field private b:Lcom/aadhk/restpos/bean/User;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/aadhk/restpos/bean/RolePermission;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/aadhk/restpos/bean/Company;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 67
    new-instance v0, Lcom/aadhk/restpos/f/l;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->d()I

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "zh_TW"

    .line 69
    :goto_0
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    aget-object v0, v0, v3

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 72
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 74
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 75
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 77
    :cond_0
    return-void

    .line 68
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "es_ES"

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const-string v0, "it_IT"

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const-string v0, "de_DE"

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    const-string v0, "el_GR"

    goto :goto_0

    :cond_5
    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    const-string v0, "hu_HU"

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const-string v0, "fr_FR"

    goto :goto_0

    :cond_7
    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const-string v0, "nl_NL"

    goto :goto_0

    :cond_8
    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    const-string v0, "zh_CN"

    goto :goto_0

    :cond_9
    const-string v0, "en_US"

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput p1, p0, Lcom/aadhk/restpos/POSApp;->e:I

    .line 132
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/Company;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/aadhk/restpos/POSApp;->d:Lcom/aadhk/restpos/bean/Company;

    .line 99
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/User;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/User;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/aadhk/restpos/bean/RolePermission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    iput-object p1, p0, Lcom/aadhk/restpos/POSApp;->b:Lcom/aadhk/restpos/bean/User;

    .line 123
    iput-object p2, p0, Lcom/aadhk/restpos/POSApp;->c:Ljava/util/Map;

    .line 124
    return-void
.end method

.method public final b()Lcom/aadhk/restpos/bean/Company;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->d:Lcom/aadhk/restpos/bean/Company;

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/aadhk/restpos/b/c;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 83
    invoke-virtual {v1}, Lcom/aadhk/restpos/b/c;->a()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSApp;->d:Lcom/aadhk/restpos/bean/Company;

    .line 84
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->d:Lcom/aadhk/restpos/bean/Company;

    return-object v0
.end method

.method public final c()Lcom/aadhk/restpos/bean/User;
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->b:Lcom/aadhk/restpos/bean/User;

    if-nez v0, :cond_0

    .line 103
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/aadhk/restpos/bean/User;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/User;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/POSApp;->b:Lcom/aadhk/restpos/bean/User;

    .line 105
    iget-object v1, p0, Lcom/aadhk/restpos/POSApp;->b:Lcom/aadhk/restpos/bean/User;

    const-string v2, "pref_user_account"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/User;->setAccount(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/aadhk/restpos/POSApp;->b:Lcom/aadhk/restpos/bean/User;

    const-string v2, "pref_user_role"

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/User;->setRole(I)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->b:Lcom/aadhk/restpos/bean/User;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/aadhk/restpos/bean/RolePermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/aadhk/restpos/b/t;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/t;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 115
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->c()Lcom/aadhk/restpos/bean/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/b/t;->b(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSApp;->c:Ljava/util/Map;

    .line 116
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/aadhk/restpos/POSApp;->e:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->a()V

    .line 39
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 47
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    const-string v1, "prefLang"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v3, "prefLangSys"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 55
    :goto_0
    const-string v1, "prefLang"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->a()V

    .line 60
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/b/f;->a(Landroid/content/Context;)V

    .line 61
    return-void

    .line 54
    :cond_2
    const-string v1, "es_ES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "es_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const-string v1, "it_IT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "it_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :cond_6
    const-string v1, "de_DE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "de_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v0, 0x4

    goto :goto_0

    :cond_8
    const-string v1, "el_GR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "el_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const/4 v0, 0x5

    goto :goto_0

    :cond_a
    const-string v1, "nl_NL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "nl_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const/16 v0, 0x9

    goto :goto_0

    :cond_c
    const-string v1, "hu_HU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "hu_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    const/16 v0, 0xa

    goto/16 :goto_0

    :cond_e
    const-string v1, "fr_FR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "fr_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    const/4 v0, 0x7

    goto/16 :goto_0

    :cond_10
    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
