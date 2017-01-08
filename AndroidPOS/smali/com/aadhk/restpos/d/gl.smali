.class final Lcom/aadhk/restpos/d/gl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/gj;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/gj;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/aadhk/restpos/d/gl;->a:Lcom/aadhk/restpos/d/gj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gl;->a:Lcom/aadhk/restpos/d/gj;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gl;->a:Lcom/aadhk/restpos/d/gj;

    invoke-static {v2}, Lcom/aadhk/restpos/d/gj;->c(Lcom/aadhk/restpos/d/gj;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/gj;->a(Lcom/aadhk/restpos/d/gj;Ljava/util/List;)Ljava/util/List;

    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/d/gl;->a:Lcom/aadhk/restpos/d/gj;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gj;->b(Lcom/aadhk/restpos/d/gj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/d/gl;->a:Lcom/aadhk/restpos/d/gj;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gl;->a:Lcom/aadhk/restpos/d/gj;

    invoke-static {v1}, Lcom/aadhk/restpos/d/gj;->b(Lcom/aadhk/restpos/d/gj;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/gj;->a(Lcom/aadhk/restpos/d/gj;[Ljava/lang/String;)[Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gl;->a:Lcom/aadhk/restpos/d/gj;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gj;->b(Lcom/aadhk/restpos/d/gj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/d/gl;->a:Lcom/aadhk/restpos/d/gj;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gj;->d(Lcom/aadhk/restpos/d/gj;)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/aadhk/restpos/d/gl;->a:Lcom/aadhk/restpos/d/gj;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gj;->b(Lcom/aadhk/restpos/d/gj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/aadhk/restpos/d/gl;->a:Lcom/aadhk/restpos/d/gj;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gj;->d(Lcom/aadhk/restpos/d/gj;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/aadhk/restpos/d/gl;->a:Lcom/aadhk/restpos/d/gj;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/gj;->a(Lcom/aadhk/restpos/d/gj;[Ljava/lang/String;)[Ljava/lang/String;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gl;->a:Lcom/aadhk/restpos/d/gj;

    new-instance v1, Lcom/aadhk/restpos/a/bn;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gl;->a:Lcom/aadhk/restpos/d/gj;

    iget-object v2, v2, Lcom/aadhk/restpos/d/gj;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/gl;->a:Lcom/aadhk/restpos/d/gj;

    invoke-static {v3}, Lcom/aadhk/restpos/d/gj;->d(Lcom/aadhk/restpos/d/gj;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/bn;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/gj;->a(Lcom/aadhk/restpos/d/gj;Lcom/aadhk/restpos/a/bn;)Lcom/aadhk/restpos/a/bn;

    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/d/gl;->a:Lcom/aadhk/restpos/d/gj;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gj;->f(Lcom/aadhk/restpos/d/gj;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/gl;->a:Lcom/aadhk/restpos/d/gj;

    invoke-static {v1}, Lcom/aadhk/restpos/d/gj;->e(Lcom/aadhk/restpos/d/gj;)Lcom/aadhk/restpos/a/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 144
    return-void
.end method
