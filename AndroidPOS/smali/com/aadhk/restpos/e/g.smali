.class public final Lcom/aadhk/restpos/e/g;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private static a(Ljava/util/List;I)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ">;I)",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 165
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 169
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/aadhk/printer/i;->a(Landroid/content/Context;Lcom/aadhk/printer/PrinterSetting;)V

    .line 46
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            "Lcom/aadhk/restpos/bean/Order;",
            "Lcom/aadhk/restpos/bean/Customer;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/aadhk/restpos/e/d;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/aadhk/printer/i;->a(Landroid/content/Context;Lcom/aadhk/printer/PrinterSetting;Landroid/graphics/Bitmap;)V

    .line 179
    sget v0, Lcom/aadhk/restpos/POSApp;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/aadhk/restpos/POSApp;->a:I

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {p1, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setDeviceId(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/aadhk/product/library/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setUpdateDate(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getWaiterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setUser(Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setLocale(Ljava/lang/String;)V

    .line 186
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    const-class v2, Lcom/aadhk/restpos/StatisticService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    const-string v1, "bundlePrinter"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            "Lcom/aadhk/restpos/bean/Order;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-static {v0, p2, p3, p1}, Lcom/aadhk/restpos/e/b;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/aadhk/printer/i;->a(Landroid/content/Context;Lcom/aadhk/printer/PrinterSetting;Landroid/graphics/Bitmap;)V

    .line 203
    sget v0, Lcom/aadhk/restpos/POSApp;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/aadhk/restpos/POSApp;->a:I

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {p1, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setDeviceId(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/aadhk/product/library/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setUpdateDate(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getWaiterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setUser(Ljava/lang/String;)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setLocale(Ljava/lang/String;)V

    .line 210
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    const-class v2, Lcom/aadhk/restpos/StatisticService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    const-string v1, "bundlePrinter"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/Customer;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            "Lcom/aadhk/restpos/bean/Order;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;",
            "Lcom/aadhk/restpos/bean/Customer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/aadhk/restpos/e/d;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/aadhk/printer/i;->a(Landroid/content/Context;Lcom/aadhk/printer/PrinterSetting;Landroid/graphics/Bitmap;)V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/aadhk/restpos/util/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    const v3, 0x7f08015e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aadhk/product/library/c/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/k;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    .line 67
    sget v0, Lcom/aadhk/restpos/POSApp;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/aadhk/restpos/POSApp;->a:I

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setDeviceId(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/aadhk/product/library/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setUpdateDate(Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "test:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getWaiterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setUser(Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setLocale(Ljava/lang/String;)V

    .line 74
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    const-class v2, Lcom/aadhk/restpos/StatisticService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    const-string v1, "bundlePrinter"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_1
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-static {v0, p2, p3, p1}, Lcom/aadhk/restpos/e/a;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/Customer;Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            "Lcom/aadhk/restpos/bean/Order;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;",
            "Lcom/aadhk/restpos/bean/Customer;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 86
    if-eqz p1, :cond_1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/aadhk/restpos/e/d;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 89
    const/4 v0, 0x0

    .line 90
    if-eqz p4, :cond_0

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p4}, Lcom/aadhk/restpos/bean/Customer;->getEmail()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 93
    :cond_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/aadhk/restpos/util/f;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/aadhk/restpos/util/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    const v4, 0x7f08015e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aadhk/product/library/c/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/util/k;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v3, v1, v0, p5}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;Ljava/io/File;[Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    const v1, 0x7f08016e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 102
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Report;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/aadhk/restpos/e/e;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/aadhk/printer/i;->a(Landroid/content/Context;Lcom/aadhk/printer/PrinterSetting;Landroid/graphics/Bitmap;)V

    .line 231
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Report;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    if-eqz p2, :cond_0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/aadhk/restpos/e/e;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/aadhk/restpos/util/f;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/aadhk/restpos/util/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Lcom/aadhk/product/library/c/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/k;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-static {v2, v0, v1, p4}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;Ljava/io/File;[Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    const v1, 0x7f08016e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 247
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ">;",
            "Lcom/aadhk/restpos/bean/Order;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 111
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 112
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getPrinterId()I

    move-result v5

    .line 113
    if-eqz v5, :cond_0

    .line 114
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 115
    if-nez v1, :cond_1

    .line 116
    invoke-static {p1, v5}, Lcom/aadhk/restpos/e/g;->a(Ljava/util/List;I)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v6

    .line 117
    if-eqz v6, :cond_1

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 129
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 130
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isPrintSeparate()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 133
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 134
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-static {v0, p2, v4, v1, p4}, Lcom/aadhk/restpos/e/a;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    iget-object v6, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-static {v6, v1, v0}, Lcom/aadhk/printer/i;->a(Landroid/content/Context;Lcom/aadhk/printer/PrinterSetting;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 139
    :cond_3
    iget-object v4, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-static {v4, p2, v0, v1, p4}, Lcom/aadhk/restpos/e/a;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    iget-object v4, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-static {v4, v1, v0}, Lcom/aadhk/printer/i;->a(Landroid/content/Context;Lcom/aadhk/printer/PrinterSetting;Landroid/graphics/Bitmap;)V

    .line 144
    :cond_4
    sget v0, Lcom/aadhk/restpos/POSApp;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/aadhk/restpos/POSApp;->a:I

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "android_id"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setDeviceId(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/aadhk/product/library/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setUpdateDate(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getWaiterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setUser(Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setLocale(Ljava/lang/String;)V

    .line 151
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    const-class v5, Lcom/aadhk/restpos/StatisticService;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    const-string v4, "bundlePrinter"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 161
    :cond_5
    return-void
.end method

.method public final b(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V
    .locals 1
    .parameter

    .prologue
    .line 221
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/aadhk/restpos/e/g;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/aadhk/printer/i;->b(Landroid/content/Context;Lcom/aadhk/printer/PrinterSetting;)V

    .line 224
    :cond_0
    return-void
.end method
