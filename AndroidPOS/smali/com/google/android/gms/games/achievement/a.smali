.class public final Lcom/google/android/gms/games/achievement/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/achievement/AchievementEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/games/achievement/AchievementEntity;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->c_()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->c()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->f()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->h()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->j()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->l()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->m()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V

    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->n()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V

    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->p()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->q()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->r()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 23

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v21

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    move/from16 v0, v21

    if-ge v1, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v22, 0xffff

    and-int v22, v22, v1

    sparse-switch v22, :sswitch_data_0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :sswitch_4
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    move-object v7, v1

    goto :goto_0

    :sswitch_5
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :sswitch_6
    sget-object v9, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    move-object v9, v1

    goto :goto_0

    :sswitch_7
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :sswitch_8
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v11

    goto :goto_0

    :sswitch_9
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :sswitch_a
    sget-object v13, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v13}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/PlayerEntity;

    move-object v13, v1

    goto :goto_0

    :sswitch_b
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v14

    goto :goto_0

    :sswitch_c
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v15

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v17

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v19

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v2

    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    move/from16 v0, v21

    if-eq v1, v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Overread allowed size end="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/games/achievement/AchievementEntity;

    invoke-direct/range {v1 .. v20}, Lcom/google/android/gms/games/achievement/AchievementEntity;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/games/PlayerEntity;IILjava/lang/String;JJ)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x3e8 -> :sswitch_10
    .end sparse-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/games/achievement/AchievementEntity;

    return-object v0
.end method
