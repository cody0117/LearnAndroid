.class public final Lcom/soundcloud/android/crop/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/a;->a:Landroid/content/Intent;

    .line 42
    iget-object v0, p0, Lcom/soundcloud/android/crop/a;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/Throwable;
    .locals 1
    .parameter

    .prologue
    .line 130
    const-string v0, "error"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    const/16 v1, 0x23ca

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    sget v0, Lcom/soundcloud/android/crop/aa;->a:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public final a(II)Lcom/soundcloud/android/crop/a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/soundcloud/android/crop/a;->a:Landroid/content/Intent;

    const-string v1, "max_x"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lcom/soundcloud/android/crop/a;->a:Landroid/content/Intent;

    const-string v1, "max_y"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    return-object p0
.end method

.method public final a(Landroid/net/Uri;)Lcom/soundcloud/android/crop/a;
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/soundcloud/android/crop/a;->a:Landroid/content/Intent;

    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    return-object p0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/soundcloud/android/crop/a;->a:Landroid/content/Intent;

    const-class v1, Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/soundcloud/android/crop/a;->a:Landroid/content/Intent;

    const/16 v1, 0x1a35

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 95
    return-void
.end method
