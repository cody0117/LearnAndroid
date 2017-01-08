.class final Lcom/soundcloud/android/crop/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/soundcloud/android/crop/s;


# instance fields
.field final synthetic a:Lcom/soundcloud/android/crop/CropImageActivity;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/CropImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/soundcloud/android/crop/b;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 95
    return-void
.end method
