.class public final Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/appcontent/AppContentSection;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/appcontent/e;


# instance fields
.field private final a:I

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentActionEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/net/Uri;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentCardEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Landroid/os/Bundle;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/appcontent/e;

    invoke-direct {v0}, Lcom/google/android/gms/games/appcontent/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->CREATOR:Lcom/google/android/gms/games/appcontent/e;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;Landroid/net/Uri;Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentActionEntity;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentCardEntity;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->a:I

    iput-object p2, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->c:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->f:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/appcontent/AppContentSection;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->a:I

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->c()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->c:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->e:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->f()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->f:Landroid/os/Bundle;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->g:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->h:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->i:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->h_()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->b:Ljava/util/ArrayList;

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v5, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->b:Ljava/util/ArrayList;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentAction;

    invoke-interface {v0}, Lcom/google/android/gms/games/appcontent/AppContentAction;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->d:Ljava/util/ArrayList;

    :goto_1
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->d:Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentCard;

    invoke-interface {v0}, Lcom/google/android/gms/games/appcontent/AppContentCard;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method static a(Lcom/google/android/gms/games/appcontent/AppContentSection;)I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->h_()Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->c()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->d()Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->f()Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->h()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->i()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static a(Lcom/google/android/gms/games/appcontent/AppContentSection;Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/appcontent/AppContentSection;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/games/appcontent/AppContentSection;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->h_()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->h_()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->c()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->d()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->f()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->f()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static b(Lcom/google/android/gms/games/appcontent/AppContentSection;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/pt;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    const-string v1, "Actions"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->h_()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    const-string v1, "BackgroundImageUri"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    const-string v1, "Cards"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    const-string v1, "ContentDescription"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    const-string v1, "ExtraData"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->f()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    const-string v1, "Subtitle"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    const-string v1, "Title"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    const-string v1, "Type"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pu;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final c()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentCard;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->a(Lcom/google/android/gms/games/appcontent/AppContentSection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final f()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final h_()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->a(Lcom/google/android/gms/games/appcontent/AppContentSection;)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->b(Lcom/google/android/gms/games/appcontent/AppContentSection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/appcontent/e;->a(Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;Landroid/os/Parcel;I)V

    return-void
.end method
