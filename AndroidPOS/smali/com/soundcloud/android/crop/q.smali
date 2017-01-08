.class final Lcom/soundcloud/android/crop/q;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/soundcloud/android/crop/ImageViewTouchBase;

.field private final synthetic b:Lcom/soundcloud/android/crop/ac;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/ImageViewTouchBase;Lcom/soundcloud/android/crop/ac;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/soundcloud/android/crop/q;->a:Lcom/soundcloud/android/crop/ImageViewTouchBase;

    iput-object p2, p0, Lcom/soundcloud/android/crop/q;->b:Lcom/soundcloud/android/crop/ac;

    iput-boolean p3, p0, Lcom/soundcloud/android/crop/q;->c:Z

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->a:Lcom/soundcloud/android/crop/ImageViewTouchBase;

    iget-object v1, p0, Lcom/soundcloud/android/crop/q;->b:Lcom/soundcloud/android/crop/ac;

    iget-boolean v2, p0, Lcom/soundcloud/android/crop/q;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->a(Lcom/soundcloud/android/crop/ac;Z)V

    .line 175
    return-void
.end method
