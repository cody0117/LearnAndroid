.class public final Lcom/google/android/gms/internal/kl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/kl;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/fh;Ljava/lang/String;)Lcom/google/android/gms/internal/fj;
    .locals 21

    :try_start_0
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ad_base_url"

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "ad_url"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "ad_size"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "ad_html"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v12, -0x1

    const-string v2, "debug_dialog"

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "interstitial_timeout"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "interstitial_timeout"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    double-to-long v7, v6

    :goto_0
    const-string v2, "orientation"

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, -0x1

    const-string v6, "portrait"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/lq;->c()I

    move-result v10

    :cond_0
    :goto_1
    const/4 v2, 0x0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    new-instance v2, Lcom/google/android/gms/internal/fj;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/fj;-><init>(I)V

    :goto_2
    return-object v2

    :cond_1
    const-wide/16 v7, -0x1

    goto :goto_0

    :cond_2
    const-string v6, "landscape"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/lq;->b()I

    move-result v10

    goto :goto_1

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/fh;->k:Lcom/google/android/gms/internal/gs;

    iget-object v2, v2, Lcom/google/android/gms/internal/gs;->b:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5, v3}, Lcom/google/android/gms/internal/kg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ku;)Lcom/google/android/gms/internal/fj;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gms/internal/fj;->b:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/internal/fj;->c:Ljava/lang/String;

    iget-wide v12, v2, Lcom/google/android/gms/internal/fj;->n:J

    move-object v15, v2

    :goto_3
    const-string v2, "click_urls"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v15, :cond_6

    const/4 v2, 0x0

    :goto_4
    if-eqz v6, :cond_13

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_4
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_7

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    new-instance v2, Lcom/google/android/gms/internal/fj;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/fj;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not parse the mediation config: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/android/gms/internal/fj;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/fj;-><init>(I)V

    goto :goto_2

    :cond_6
    :try_start_1
    iget-object v2, v15, Lcom/google/android/gms/internal/fj;->d:Ljava/util/List;

    goto :goto_4

    :cond_7
    move-object v5, v2

    :goto_6
    const-string v2, "impression_urls"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-nez v15, :cond_9

    const/4 v2, 0x0

    :goto_7
    if-eqz v9, :cond_12

    if-nez v2, :cond_8

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_8
    const/4 v6, 0x0

    :goto_8
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_a

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_9
    iget-object v2, v15, Lcom/google/android/gms/internal/fj;->f:Ljava/util/List;

    goto :goto_7

    :cond_a
    move-object v6, v2

    :goto_9
    const-string v2, "manual_impression_urls"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    if-nez v15, :cond_c

    const/4 v2, 0x0

    :goto_a
    if-eqz v16, :cond_11

    if-nez v2, :cond_b

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_b
    const/4 v9, 0x0

    :goto_b
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_d

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_c
    iget-object v2, v15, Lcom/google/android/gms/internal/fj;->j:Ljava/util/List;

    goto :goto_a

    :cond_d
    move-object v9, v2

    :goto_c
    if-eqz v15, :cond_f

    iget v2, v15, Lcom/google/android/gms/internal/fj;->l:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v2, v0, :cond_e

    iget v10, v15, Lcom/google/android/gms/internal/fj;->l:I

    :cond_e
    iget-wide v0, v15, Lcom/google/android/gms/internal/fj;->g:J

    move-wide/from16 v16, v0

    const-wide/16 v19, 0x0

    cmp-long v2, v16, v19

    if-lez v2, :cond_f

    iget-wide v7, v15, Lcom/google/android/gms/internal/fj;->g:J

    :cond_f
    const-string v2, "active_view"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v16, 0x0

    const-string v2, "ad_is_javascript"

    const/4 v15, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_10

    const-string v2, "ad_passback_url"

    const/16 v16, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_10
    new-instance v2, Lcom/google/android/gms/internal/fj;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/fh;->p:Z

    move/from16 v18, v0

    invoke-direct/range {v2 .. v18}, Lcom/google/android/gms/internal/fj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLjava/util/List;ILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_11
    move-object v9, v2

    goto :goto_c

    :cond_12
    move-object v6, v2

    goto :goto_9

    :cond_13
    move-object v5, v2

    goto/16 :goto_6

    :cond_14
    move-object v15, v2

    goto/16 :goto_3
.end method

.method private static a(Z)Ljava/lang/Integer;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/fh;Lcom/google/android/gms/internal/kw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "eid"

    const-string v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    const-string v0, "ad_pos"

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->b:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->c:Lcom/google/android/gms/internal/av;

    invoke-static {}, Lcom/google/android/gms/internal/lj;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v3, "abf"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-wide v3, v1, Lcom/google/android/gms/internal/av;->b:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_6

    const-string v0, "cust_age"

    sget-object v3, Lcom/google/android/gms/internal/kl;->a:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v1, Lcom/google/android/gms/internal/av;->b:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/internal/av;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    const-string v0, "extras"

    iget-object v3, v1, Lcom/google/android/gms/internal/av;->c:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget v0, v1, Lcom/google/android/gms/internal/av;->d:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_8

    const-string v0, "cust_gender"

    iget v3, v1, Lcom/google/android/gms/internal/av;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, v1, Lcom/google/android/gms/internal/av;->e:Ljava/util/List;

    if-eqz v0, :cond_9

    const-string v0, "kw"

    iget-object v3, v1, Lcom/google/android/gms/internal/av;->e:Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget v0, v1, Lcom/google/android/gms/internal/av;->g:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_a

    const-string v0, "tag_for_child_directed_treatment"

    iget v3, v1, Lcom/google/android/gms/internal/av;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-boolean v0, v1, Lcom/google/android/gms/internal/av;->f:Z

    if-eqz v0, :cond_b

    const-string v0, "adtest"

    const-string v3, "on"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget v0, v1, Lcom/google/android/gms/internal/av;->a:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_18

    iget-boolean v0, v1, Lcom/google/android/gms/internal/av;->h:Z

    if-eqz v0, :cond_c

    const-string v0, "d_imp_hdr"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/internal/av;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "ppid"

    iget-object v3, v1, Lcom/google/android/gms/internal/av;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v0, v1, Lcom/google/android/gms/internal/av;->j:Lcom/google/android/gms/internal/bj;

    if-eqz v0, :cond_18

    iget-object v3, v1, Lcom/google/android/gms/internal/av;->j:Lcom/google/android/gms/internal/bj;

    iget v0, v3, Lcom/google/android/gms/internal/bj;->b:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "acolor"

    iget v4, v3, Lcom/google/android/gms/internal/bj;->b:I

    invoke-static {v4}, Lcom/google/android/gms/internal/kl;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget v0, v3, Lcom/google/android/gms/internal/bj;->c:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "bgcolor"

    iget v4, v3, Lcom/google/android/gms/internal/bj;->c:I

    invoke-static {v4}, Lcom/google/android/gms/internal/kl;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget v0, v3, Lcom/google/android/gms/internal/bj;->d:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_10

    iget v0, v3, Lcom/google/android/gms/internal/bj;->e:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "gradientto"

    iget v4, v3, Lcom/google/android/gms/internal/bj;->d:I

    invoke-static {v4}, Lcom/google/android/gms/internal/kl;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gradientfrom"

    iget v4, v3, Lcom/google/android/gms/internal/bj;->e:I

    invoke-static {v4}, Lcom/google/android/gms/internal/kl;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget v0, v3, Lcom/google/android/gms/internal/bj;->f:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "bcolor"

    iget v4, v3, Lcom/google/android/gms/internal/bj;->f:I

    invoke-static {v4}, Lcom/google/android/gms/internal/kl;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    const-string v0, "bthick"

    iget v4, v3, Lcom/google/android/gms/internal/bj;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v3, Lcom/google/android/gms/internal/bj;->h:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_12

    const-string v4, "btype"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iget v0, v3, Lcom/google/android/gms/internal/bj;->i:I

    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_13

    const-string v4, "callbuttoncolor"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iget-object v0, v3, Lcom/google/android/gms/internal/bj;->j:Ljava/lang/String;

    if-eqz v0, :cond_14

    const-string v0, "channel"

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    iget v0, v3, Lcom/google/android/gms/internal/bj;->k:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "dcolor"

    iget v4, v3, Lcom/google/android/gms/internal/bj;->k:I

    invoke-static {v4}, Lcom/google/android/gms/internal/kl;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    iget-object v0, v3, Lcom/google/android/gms/internal/bj;->l:Ljava/lang/String;

    if-eqz v0, :cond_16

    const-string v0, "font"

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->l:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget v0, v3, Lcom/google/android/gms/internal/bj;->m:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "hcolor"

    iget v4, v3, Lcom/google/android/gms/internal/bj;->m:I

    invoke-static {v4}, Lcom/google/android/gms/internal/kl;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const-string v0, "headersize"

    iget v4, v3, Lcom/google/android/gms/internal/bj;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/google/android/gms/internal/bj;->o:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-string v0, "q"

    iget-object v3, v3, Lcom/google/android/gms/internal/bj;->o:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget v0, v1, Lcom/google/android/gms/internal/av;->a:I

    const/4 v3, 0x3

    if-lt v0, v3, :cond_19

    iget-object v0, v1, Lcom/google/android/gms/internal/av;->l:Ljava/lang/String;

    if-eqz v0, :cond_19

    const-string v0, "url"

    iget-object v1, v1, Lcom/google/android/gms/internal/av;->l:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const-string v0, "format"

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/internal/ay;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/ay;

    iget v0, v0, Lcom/google/android/gms/internal/ay;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    const-string v0, "smart_w"

    const-string v1, "full"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/ay;

    iget v0, v0, Lcom/google/android/gms/internal/ay;->c:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1b

    const-string v0, "smart_h"

    const-string v1, "auto"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/internal/ay;->h:[Lcom/google/android/gms/internal/ay;

    if-eqz v0, :cond_20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/ay;

    iget-object v4, v0, Lcom/google/android/gms/internal/ay;->h:[Lcom/google/android/gms/internal/ay;

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v5, :cond_1f

    aget-object v6, v4, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    iget v0, v6, Lcom/google/android/gms/internal/ay;->f:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_1d

    iget v0, v6, Lcom/google/android/gms/internal/ay;->g:I

    int-to-float v0, v0

    iget v7, p1, Lcom/google/android/gms/internal/kw;->q:F

    div-float/2addr v0, v7

    float-to-int v0, v0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/google/android/gms/internal/ay;->c:I

    const/4 v7, -0x2

    if-ne v0, v7, :cond_1e

    iget v0, v6, Lcom/google/android/gms/internal/ay;->d:I

    int-to-float v0, v0

    iget v6, p1, Lcom/google/android/gms/internal/kw;->q:F

    div-float/2addr v0, v6

    float-to-int v0, v0

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_0
    const-string v0, "none"

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "dashed"

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "dotted"

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "solid"

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "dark"

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "light"

    goto/16 :goto_1

    :pswitch_6
    const-string v0, "medium"

    goto/16 :goto_1

    :cond_1d
    iget v0, v6, Lcom/google/android/gms/internal/ay;->f:I

    goto :goto_3

    :cond_1e
    iget v0, v6, Lcom/google/android/gms/internal/ay;->c:I

    goto :goto_4

    :cond_1f
    const-string v0, "sz"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    iget v0, p0, Lcom/google/android/gms/internal/fh;->m:I

    if-eqz v0, :cond_21

    const-string v0, "native_version"

    iget v1, p0, Lcom/google/android/gms/internal/fh;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "native_templates"

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->n:Ljava/util/List;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    const-string v0, "slotname"

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pn"

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->f:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->g:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_22

    const-string v0, "vc"

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->g:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    const-string v0, "ms"

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "seq_num"

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "session_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "js"

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->k:Lcom/google/android/gms/internal/gs;

    iget-object v1, v1, Lcom/google/android/gms/internal/gs;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "am"

    iget v1, p1, Lcom/google/android/gms/internal/kw;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cog"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/kw;->b:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/kl;->a(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coh"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/kw;->c:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/kl;->a(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/kw;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "carrier"

    iget-object v1, p1, Lcom/google/android/gms/internal/kw;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    const-string v0, "gl"

    iget-object v1, p1, Lcom/google/android/gms/internal/kw;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/kw;->f:Z

    if-eqz v0, :cond_24

    const-string v0, "simulator"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    const-string v0, "ma"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/kw;->g:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/kl;->a(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sp"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/kw;->h:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/kl;->a(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hl"

    iget-object v1, p1, Lcom/google/android/gms/internal/kw;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/kw;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "mv"

    iget-object v1, p1, Lcom/google/android/gms/internal/kw;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    const-string v0, "muv"

    iget v1, p1, Lcom/google/android/gms/internal/kw;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/internal/kw;->l:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_26

    const-string v0, "cnt"

    iget v1, p1, Lcom/google/android/gms/internal/kw;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    const-string v0, "gnt"

    iget v1, p1, Lcom/google/android/gms/internal/kw;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pt"

    iget v1, p1, Lcom/google/android/gms/internal/kw;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rm"

    iget v1, p1, Lcom/google/android/gms/internal/kw;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "riv"

    iget v1, p1, Lcom/google/android/gms/internal/kw;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "u_sd"

    iget v1, p1, Lcom/google/android/gms/internal/kw;->q:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sh"

    iget v1, p1, Lcom/google/android/gms/internal/kw;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sw"

    iget v1, p1, Lcom/google/android/gms/internal/kw;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "active_network_state"

    iget v3, p1, Lcom/google/android/gms/internal/kw;->w:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "active_network_metered"

    iget-boolean v3, p1, Lcom/google/android/gms/internal/kw;->v:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "connectivity"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "is_charging"

    iget-boolean v3, p1, Lcom/google/android/gms/internal/kw;->u:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "battery_level"

    iget-wide v3, p1, Lcom/google/android/gms/internal/kw;->t:D

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "battery"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->c:Lcom/google/android/gms/internal/av;

    iget v0, v0, Lcom/google/android/gms/internal/av;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->c:Lcom/google/android/gms/internal/av;

    iget-object v0, v0, Lcom/google/android/gms/internal/av;->k:Landroid/location/Location;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->c:Lcom/google/android/gms/internal/av;

    iget-object v0, v0, Lcom/google/android/gms/internal/av;->k:Landroid/location/Location;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    const/high16 v4, 0x447a

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    const-wide v7, 0x416312d000000000L

    mul-double/2addr v5, v7

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const-wide v8, 0x416312d000000000L

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v6, "radius"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lat"

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "long"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "time"

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uule"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    iget v0, p0, Lcom/google/android/gms/internal/fh;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_28

    const-string v0, "quality_signals"

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->l:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    iget v0, p0, Lcom/google/android/gms/internal/fh;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fh;->p:Z

    if-eqz v0, :cond_29

    const-string v0, "forceHttps"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fh;->p:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    iget v0, p0, Lcom/google/android/gms/internal/fh;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->o:Landroid/os/Bundle;

    if-eqz v0, :cond_2a

    const-string v0, "content_info"

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->o:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    invoke-static {v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_5
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problem serializing ad request to JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
