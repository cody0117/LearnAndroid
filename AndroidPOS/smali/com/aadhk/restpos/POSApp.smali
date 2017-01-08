.class public Lcom/aadhk/restpos/POSApp;
.super Landroid/app/Application;
.source "ProGuard"


# static fields
.field public static a:I

.field private static c:Lorg/apache/http/client/CookieStore;


# instance fields
.field private b:I

.field private d:Lcom/aadhk/restpos/bean/User;

.field private e:Ljava/util/Map;
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

.field private f:Lcom/aadhk/restpos/bean/Company;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ServiceFee;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 53
    return-void
.end method

.method public static a(Lorg/apache/http/client/CookieStore;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    sput-object p0, Lcom/aadhk/restpos/POSApp;->c:Lorg/apache/http/client/CookieStore;

    .line 230
    return-void
.end method

.method public static p()Lorg/apache/http/client/CookieStore;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/aadhk/restpos/POSApp;->c:Lorg/apache/http/client/CookieStore;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 105
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->e()I

    move-result v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/l;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 110
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 112
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 113
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

    .line 115
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput p1, p0, Lcom/aadhk/restpos/POSApp;->b:I

    .line 222
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/Company;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/aadhk/restpos/POSApp;->f:Lcom/aadhk/restpos/bean/Company;

    .line 126
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
    .line 212
    iput-object p1, p0, Lcom/aadhk/restpos/POSApp;->d:Lcom/aadhk/restpos/bean/User;

    .line 213
    iput-object p2, p0, Lcom/aadhk/restpos/POSApp;->e:Ljava/util/Map;

    .line 214
    return-void
.end method

.method public final b()Lcom/aadhk/restpos/bean/Company;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->f:Lcom/aadhk/restpos/bean/Company;

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->c()V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->f:Lcom/aadhk/restpos/bean/Company;

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/aadhk/restpos/g/a;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/a;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v0}, Lcom/aadhk/restpos/g/a;->a()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSApp;->f:Lcom/aadhk/restpos/bean/Company;

    .line 131
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 132
    return-void
.end method

.method public final d()Lcom/aadhk/restpos/bean/User;
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->d:Lcom/aadhk/restpos/bean/User;

    if-nez v0, :cond_0

    .line 136
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/aadhk/restpos/bean/User;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/User;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/POSApp;->d:Lcom/aadhk/restpos/bean/User;

    .line 138
    iget-object v1, p0, Lcom/aadhk/restpos/POSApp;->d:Lcom/aadhk/restpos/bean/User;

    const-string v2, "pref_user_account"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/User;->setAccount(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/aadhk/restpos/POSApp;->d:Lcom/aadhk/restpos/bean/User;

    const-string v2, "pref_user_role"

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/User;->setRole(I)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->d:Lcom/aadhk/restpos/bean/User;

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1
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
    .line 145
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->f()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/aadhk/restpos/g/y;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/y;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->d()Lcom/aadhk/restpos/bean/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/y;->b(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSApp;->e:Ljava/util/Map;

    .line 155
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 157
    :cond_0
    return-void
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ServiceFee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->h()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->h:Ljava/util/List;

    return-object v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/aadhk/restpos/g/z;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/z;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v0}, Lcom/aadhk/restpos/g/z;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSApp;->h:Ljava/util/List;

    .line 169
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 170
    return-void
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/PaymentMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->j()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->g:Ljava/util/List;

    return-object v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/aadhk/restpos/g/r;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/r;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-virtual {v0}, Lcom/aadhk/restpos/g/r;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSApp;->g:Ljava/util/List;

    .line 182
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 183
    return-void
.end method

.method public final k()Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->l()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/aadhk/restpos/g/u;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/u;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-virtual {v0}, Lcom/aadhk/restpos/g/u;->a()Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSApp;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 195
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 196
    return-void
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->n()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/POSApp;->j:Ljava/util/List;

    return-object v0
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/aadhk/restpos/g/u;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/u;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual {v0}, Lcom/aadhk/restpos/g/u;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSApp;->j:Ljava/util/List;

    .line 208
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 209
    return-void
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/aadhk/restpos/POSApp;->b:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->a()V

    .line 77
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 85
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 86
    const-string v1, "prefLang"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v3, "prefLangSys"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
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

    .line 93
    :goto_0
    const-string v1, "prefLang"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->a()V

    .line 98
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/b/f;->a(Landroid/content/Context;)V

    .line 99
    return-void

    .line 92
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
    const-string v1, "pt_BR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_11
    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_12
    const-string v1, "in_IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "in_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    const/16 v0, 0xb

    goto/16 :goto_0

    :cond_14
    const-string v1, "ru_RU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "ru_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
