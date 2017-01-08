.class public final Lcom/aadhk/restpos/d/y;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/Button;

.field private c:Lcom/aadhk/restpos/PrinterActivity;

.field private d:I

.field private e:Lcom/aadhk/restpos/b/r;

.field private f:Lcom/aadhk/restpos/bean/POSPrinterSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/aadhk/restpos/d/y;->f:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getLogoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/d/y;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/aadhk/restpos/d/y;->a:Landroid/widget/ImageView;

    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/aadhk/restpos/f/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/y;->f:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getLogoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/aadhk/restpos/d/y;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/aadhk/restpos/d/y;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/d/y;->c:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->e()Lcom/aadhk/restpos/b/r;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/y;->e:Lcom/aadhk/restpos/b/r;

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/d/y;->c:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->f()Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/y;->f:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/y;->f:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPaperWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/aadhk/restpos/d/y;->d:I

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/y;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/y;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-direct {p0}, Lcom/aadhk/restpos/d/y;->a()V

    .line 61
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 100
    const/16 v0, 0x23ca

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/y;->c:Lcom/aadhk/restpos/PrinterActivity;

    if-ne p2, v1, :cond_1

    .line 101
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/aadhk/restpos/f/d;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/soundcloud/android/crop/a;

    invoke-direct {v2, v0}, Lcom/soundcloud/android/crop/a;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v1}, Lcom/soundcloud/android/crop/a;->a(Landroid/net/Uri;)Lcom/soundcloud/android/crop/a;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/d/y;->d:I

    iget v2, p0, Lcom/aadhk/restpos/d/y;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/soundcloud/android/crop/a;->a(II)Lcom/soundcloud/android/crop/a;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/y;->c:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0, v1}, Lcom/soundcloud/android/crop/a;->a(Landroid/app/Activity;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const/16 v0, 0x1a35

    if-ne p1, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/d/y;->c:Lcom/aadhk/restpos/PrinterActivity;

    if-ne p2, v1, :cond_2

    sget-object v0, Lcom/aadhk/restpos/f/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/y;->f:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    const-string v1, "logo.png"

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setLogoName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/y;->e:Lcom/aadhk/restpos/b/r;

    iget-object v1, p0, Lcom/aadhk/restpos/d/y;->f:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/y;->f:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getLogoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/r;->a(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/aadhk/restpos/d/y;->a()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x194

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/y;->c:Lcom/aadhk/restpos/PrinterActivity;

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
    .line 65
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/PrinterActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/y;->c:Lcom/aadhk/restpos/PrinterActivity;

    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/y;->f:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setLogoName(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/d/y;->e:Lcom/aadhk/restpos/b/r;

    iget-object v1, p0, Lcom/aadhk/restpos/d/y;->f:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/y;->f:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getLogoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/r;->a(ILjava/lang/String;)V

    .line 83
    sget-object v0, Lcom/aadhk/restpos/f/d;->f:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/aadhk/restpos/d/y;->a()V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/y;->c:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/a;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x7f0b014f
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
    .line 71
    const v0, 0x7f03006e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 72
    const v0, 0x7f0b0150

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/y;->b:Landroid/widget/Button;

    .line 73
    const v0, 0x7f0b014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/y;->a:Landroid/widget/ImageView;

    .line 74
    return-object v1
.end method
