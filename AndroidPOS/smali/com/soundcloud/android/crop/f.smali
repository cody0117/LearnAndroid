.class final Lcom/soundcloud/android/crop/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/soundcloud/android/crop/e;

.field private final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/e;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/soundcloud/android/crop/f;->a:Lcom/soundcloud/android/crop/e;

    iput-object p2, p0, Lcom/soundcloud/android/crop/f;->b:Ljava/util/concurrent/CountDownLatch;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/soundcloud/android/crop/f;->a:Lcom/soundcloud/android/crop/e;

    iget-object v0, v0, Lcom/soundcloud/android/crop/e;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->d()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/soundcloud/android/crop/f;->a:Lcom/soundcloud/android/crop/e;

    iget-object v0, v0, Lcom/soundcloud/android/crop/e;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->c()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/f;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 184
    return-void
.end method
