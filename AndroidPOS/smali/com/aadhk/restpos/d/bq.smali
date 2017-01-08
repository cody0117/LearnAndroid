.class public final Lcom/aadhk/restpos/d/bq;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/Button;

.field private c:Lcom/aadhk/restpos/PrinterActivity;

.field private d:I

.field private e:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private f:Lcom/aadhk/restpos/g/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 194
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/bq;)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->e:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->e:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getLogoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->a:Landroid/widget/ImageView;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/bt;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/bt;-><init>(Lcom/aadhk/restpos/d/bq;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/bq;->c:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 133
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/bq;)Lcom/aadhk/restpos/g/u;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->f:Lcom/aadhk/restpos/g/u;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/bq;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/bq;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/bq;)Lcom/aadhk/restpos/PrinterActivity;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->c:Lcom/aadhk/restpos/PrinterActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/bq;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bq;->a()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->c:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->k()Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bq;->e:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->c:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->e()Lcom/aadhk/restpos/g/u;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bq;->f:Lcom/aadhk/restpos/g/u;

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->e:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPaperWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/aadhk/restpos/d/bq;->d:I

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bq;->a()V

    .line 60
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 96
    const/16 v0, 0x23ca

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->c:Lcom/aadhk/restpos/PrinterActivity;

    if-ne p2, v1, :cond_1

    .line 97
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/aadhk/restpos/util/f;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/soundcloud/android/crop/a;

    invoke-direct {v2, v0}, Lcom/soundcloud/android/crop/a;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v1}, Lcom/soundcloud/android/crop/a;->a(Landroid/net/Uri;)Lcom/soundcloud/android/crop/a;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/d/bq;->d:I

    iget v2, p0, Lcom/aadhk/restpos/d/bq;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/soundcloud/android/crop/a;->a(II)Lcom/soundcloud/android/crop/a;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/bq;->c:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0, v1}, Lcom/soundcloud/android/crop/a;->a(Landroid/app/Activity;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const/16 v0, 0x1a35

    if-ne p1, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->c:Lcom/aadhk/restpos/PrinterActivity;

    if-ne p2, v1, :cond_2

    sget-object v0, Lcom/aadhk/restpos/util/f;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/br;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/br;-><init>(Lcom/aadhk/restpos/d/bq;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/bq;->c:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    const/16 v0, 0x194

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->c:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {p3}, Lcom/soundcloud/android/crop/a;->a(Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/PrinterActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bq;->c:Lcom/aadhk/restpos/PrinterActivity;

    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 66
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 80
    :pswitch_0
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/bs;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/bs;-><init>(Lcom/aadhk/restpos/d/bq;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/bq;->c:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 81
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->c:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/a;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x7f090198
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    const v0, 0x7f030084

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 71
    const v0, 0x7f090199

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bq;->b:Landroid/widget/Button;

    .line 72
    const v0, 0x7f090198

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bq;->a:Landroid/widget/ImageView;

    .line 73
    return-object v1
.end method
