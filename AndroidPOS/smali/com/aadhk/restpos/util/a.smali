.class public final Lcom/aadhk/restpos/util/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/SharedPreferences;

.field private e:Lcom/aadhk/restpos/util/b;

.field private f:Ljava/lang/StringBuffer;

.field private g:Ljava/lang/StringBuffer;

.field private h:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/aadhk/restpos/util/b;->a:Lcom/aadhk/restpos/util/b;

    iput-object v0, p0, Lcom/aadhk/restpos/util/a;->e:Lcom/aadhk/restpos/util/b;

    .line 42
    iput-object p1, p0, Lcom/aadhk/restpos/util/a;->a:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/util/a;->d:Landroid/content/SharedPreferences;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/util/a;->h:Landroid/content/res/Resources;

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/util/a;->d:Landroid/content/SharedPreferences;

    const-string v1, "PREFS_VERSION_KEY"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/util/a;->b:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/util/a;->c:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 52
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/aadhk/restpos/util/b;)V
    .locals 2
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/aadhk/restpos/util/a;->e:Lcom/aadhk/restpos/util/b;

    if-eq v0, p1, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/aadhk/restpos/util/a;->g()V

    .line 220
    sget-object v0, Lcom/aadhk/restpos/util/b;->b:Lcom/aadhk/restpos/util/b;

    if-ne p1, v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/aadhk/restpos/util/a;->f:Ljava/lang/StringBuffer;

    const-string v1, "<div class=\'list\'><ol>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/aadhk/restpos/util/a;->e:Lcom/aadhk/restpos/util/b;

    .line 227
    :cond_1
    return-void

    .line 222
    :cond_2
    sget-object v0, Lcom/aadhk/restpos/util/b;->c:Lcom/aadhk/restpos/util/b;

    if-ne p1, v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/aadhk/restpos/util/a;->f:Ljava/lang/StringBuffer;

    const-string v1, "<div class=\'list\'><ul>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/util/a;->f:Ljava/lang/StringBuffer;

    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/util/a;->g:Ljava/lang/StringBuffer;

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/util/a;->h:Landroid/content/res/Resources;

    const v3, 0x7f060001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 147
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v0, v2

    .line 151
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 152
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 153
    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    invoke-direct {p0}, Lcom/aadhk/restpos/util/a;->g()V

    .line 156
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 158
    iget-object v5, p0, Lcom/aadhk/restpos/util/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 160
    goto :goto_0

    .line 161
    :cond_1
    const-string v5, "END_OF_CHANGE_LOG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    .line 162
    goto :goto_0

    .line 165
    :cond_2
    if-nez v0, :cond_0

    .line 166
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 168
    invoke-direct {p0}, Lcom/aadhk/restpos/util/a;->g()V

    .line 169
    iget-object v5, p0, Lcom/aadhk/restpos/util/a;->f:Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<div class=\'title\'>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "</div>\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 211
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 214
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/util/a;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 170
    :cond_3
    :try_start_1
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 172
    invoke-direct {p0}, Lcom/aadhk/restpos/util/a;->g()V

    .line 173
    iget-object v5, p0, Lcom/aadhk/restpos/util/a;->f:Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<div class=\'subtitle\'>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "</div>\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 174
    :cond_4
    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 176
    invoke-direct {p0}, Lcom/aadhk/restpos/util/a;->g()V

    .line 177
    iget-object v5, p0, Lcom/aadhk/restpos/util/a;->f:Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<div class=\'freetext\'>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "</div>\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 178
    :cond_5
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 180
    sget-object v5, Lcom/aadhk/restpos/util/b;->b:Lcom/aadhk/restpos/util/b;

    invoke-direct {p0, v5}, Lcom/aadhk/restpos/util/a;->a(Lcom/aadhk/restpos/util/b;)V

    .line 181
    iget-object v5, p0, Lcom/aadhk/restpos/util/a;->f:Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<li>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "</li>\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 182
    :cond_6
    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 184
    sget-object v5, Lcom/aadhk/restpos/util/b;->c:Lcom/aadhk/restpos/util/b;

    invoke-direct {p0, v5}, Lcom/aadhk/restpos/util/a;->a(Lcom/aadhk/restpos/util/b;)V

    .line 185
    iget-object v5, p0, Lcom/aadhk/restpos/util/a;->f:Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<li>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "</li>\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 188
    :cond_7
    invoke-direct {p0}, Lcom/aadhk/restpos/util/a;->g()V

    .line 189
    iget-object v5, p0, Lcom/aadhk/restpos/util/a;->f:Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 193
    :cond_8
    invoke-direct {p0}, Lcom/aadhk/restpos/util/a;->g()V

    .line 194
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/util/a;->h:Landroid/content/res/Resources;

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 200
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 202
    const-string v2, "CHANGE_LOG_CONTENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_9

    .line 203
    iget-object v0, p0, Lcom/aadhk/restpos/util/a;->g:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/aadhk/restpos/util/a;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 205
    :cond_9
    iget-object v2, p0, Lcom/aadhk/restpos/util/a;->g:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 208
    :cond_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private g()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/aadhk/restpos/util/a;->e:Lcom/aadhk/restpos/util/b;

    sget-object v1, Lcom/aadhk/restpos/util/b;->b:Lcom/aadhk/restpos/util/b;

    if-ne v0, v1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/aadhk/restpos/util/a;->f:Ljava/lang/StringBuffer;

    const-string v1, "</ol></div>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    :cond_0
    :goto_0
    sget-object v0, Lcom/aadhk/restpos/util/b;->a:Lcom/aadhk/restpos/util/b;

    iput-object v0, p0, Lcom/aadhk/restpos/util/a;->e:Lcom/aadhk/restpos/util/b;

    .line 236
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/util/a;->e:Lcom/aadhk/restpos/util/b;

    sget-object v1, Lcom/aadhk/restpos/util/b;->c:Lcom/aadhk/restpos/util/b;

    if-ne v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/aadhk/restpos/util/a;->f:Ljava/lang/StringBuffer;

    const-string v1, "</ul></div>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/util/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 59
    const-string v1, "PREFS_VERSION_KEY"

    iget-object v2, p0, Lcom/aadhk/restpos/util/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/util/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/util/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/util/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 79
    const-string v0, ""

    iget-object v1, p0, Lcom/aadhk/restpos/util/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final e()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/aadhk/restpos/c/c;

    iget-object v1, p0, Lcom/aadhk/restpos/util/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/c;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/c;->setTitle(I)V

    invoke-direct {p0}, Lcom/aadhk/restpos/util/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/c;->a(Ljava/lang/String;)V

    return-object v0
.end method
