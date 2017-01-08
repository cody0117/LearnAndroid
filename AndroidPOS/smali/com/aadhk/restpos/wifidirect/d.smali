.class public final Lcom/aadhk/restpos/wifidirect/d;
.super Landroid/os/AsyncTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/aadhk/restpos/wifidirect/d;->a:Landroid/content/Context;

    .line 268
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/aadhk/restpos/wifidirect/d;->b:Landroid/widget/TextView;

    .line 269
    return-void
.end method

.method private static varargs a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 274
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    const/16 v0, 0x231c

    invoke-direct {v2, v0}, Ljava/net/ServerSocket;-><init>(I)V

    .line 275
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 280
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 281
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 282
    invoke-static {v0, v3}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 286
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    .line 290
    :goto_1
    return-object v0

    .line 283
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 288
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-object v0, v1

    .line 290
    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 258
    invoke-static {}, Lcom/aadhk/restpos/wifidirect/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 258
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-string v1, "tableName"

    invoke-static {p1, v1}, Lcom/aadhk/restpos/util/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/aadhk/restpos/wifidirect/e;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/wifidirect/e;-><init>(Lcom/aadhk/restpos/wifidirect/d;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/wifidirect/e;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b()Lcom/aadhk/restpos/WiFiDirectActivity;

    move-result-object v2

    const-class v3, Lcom/aadhk/restpos/KitchenActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "kitchen"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b()Lcom/aadhk/restpos/WiFiDirectActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/WiFiDirectActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/d;->b:Landroid/widget/TextView;

    const-string v1, "Opening a server socket"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    return-void
.end method
