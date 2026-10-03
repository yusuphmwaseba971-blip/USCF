.class public final Lcom/anythink/core/common/f/q;
.super Lcom/anythink/core/common/f/o;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/f/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/f/o;",
        "Ljava/lang/Comparable<",
        "Lcom/anythink/core/common/f/q;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:J

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:D

.field public m:Ljava/lang/String;

.field public n:I

.field public o:D

.field public p:Ljava/lang/String;

.field public q:D

.field public r:Lcom/anythink/core/b/c/a;

.field public s:Z

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/p;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lcom/anythink/core/common/f/bb;

.field private final v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Lcom/anythink/core/common/f/q$a;


# direct methods
.method public constructor <init>(ZDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v10, p0

    .line 73
    sget-object v9, Lcom/anythink/core/api/ATAdConst$CURRENCY;->USD:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    move-object v0, p0

    move v1, p1

    move-wide v2, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v0 .. v9}, Lcom/anythink/core/common/f/o;-><init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/anythink/core/common/f/q;->v:Ljava/lang/String;

    move-wide v0, p2

    .line 75
    iput-wide v0, v10, Lcom/anythink/core/common/f/q;->sortPrice:D

    return-void
.end method

.method public constructor <init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 69
    sget-object v9, Lcom/anythink/core/api/ATAdConst$CURRENCY;->USD:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/anythink/core/common/f/o;-><init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    iput-object v0, v1, Lcom/anythink/core/common/f/q;->v:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/q;)I
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 208
    :cond_0
    iget-wide v1, p0, Lcom/anythink/core/common/f/q;->sortPrice:D

    iget-wide v3, p1, Lcom/anythink/core/common/f/q;->sortPrice:D

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    return v0

    .line 212
    :cond_1
    iget-wide v0, p0, Lcom/anythink/core/common/f/q;->sortPrice:D

    iget-wide v2, p1, Lcom/anythink/core/common/f/q;->sortPrice:D

    cmpl-double p1, v0, v2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public static a(Ljava/lang/String;)Lcom/anythink/core/common/f/q;
    .locals 14

    const-string v0, "price"

    .line 131
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "is_success"

    .line 132
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string p0, "bid_id"

    .line 133
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 135
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    const-wide/16 v12, 0x0

    if-eqz p0, :cond_1

    .line 136
    invoke-virtual {v1, v0, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide v5, v12

    :goto_1
    const-string p0, "nurl"

    .line 138
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string p0, "lurl"

    .line 139
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string p0, "burl"

    .line 140
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string p0, "err_msg"

    .line 141
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 143
    new-instance p0, Lcom/anythink/core/common/f/q;

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/anythink/core/common/f/q;-><init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cur"

    .line 144
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/q;->b:Ljava/lang/String;

    const-string v0, "unit_id"

    .line 145
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/q;->c:Ljava/lang/String;

    const-string v0, "nw_firm_id"

    .line 146
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/q;->d:I

    const-string v0, "err_code"

    .line 147
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/q;->a:I

    const-string v0, "expire"

    .line 148
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/anythink/core/common/f/q;->e:J

    const-string v0, "out_data_time"

    .line 149
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/anythink/core/common/f/q;->f:J

    const-string v0, "is_send_winurl"

    .line 150
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/core/common/f/q;->w:Z

    const-string v0, "offer_data"

    .line 151
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/q;->i:Ljava/lang/String;

    const-string v0, "tp_bid_id"

    .line 152
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/q;->g:Ljava/lang/String;

    const-string v0, "burl_win"

    .line 153
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/q;->j:Ljava/lang/String;

    const-string v0, "ad_source_id"

    .line 154
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/q;->k:Ljava/lang/String;

    const-string v0, "cur_rate"

    .line 156
    invoke-virtual {v1, v0, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/anythink/core/common/f/q;->l:D

    const-string v0, "bid_response"

    .line 158
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/q;->m:Ljava/lang/String;

    const-string v0, "ctrl"

    .line 160
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "hb_preq_sw"

    .line 162
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/q;->n:I

    :cond_2
    const-string v0, "ecpm_api"

    .line 165
    invoke-virtual {v1, v0, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/anythink/core/common/f/q;->o:D

    const-string v0, "precision"

    .line 166
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/q;->p:Ljava/lang/String;

    const-string v0, "second_price"

    .line 168
    invoke-virtual {v1, v0, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/anythink/core/common/f/q;->q:D

    const-string v0, "req_url"

    const-string v3, ""

    .line 170
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/q;->h:Ljava/lang/String;

    const-string v0, "bd_type"

    .line 171
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/q;->useType:I

    const-string v0, "s_pty"

    .line 173
    iget-wide v3, p0, Lcom/anythink/core/common/f/q;->price:D

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/anythink/core/common/f/q;->sortPrice:D

    const-string v0, "origin_price"

    .line 174
    iget-wide v3, p0, Lcom/anythink/core/common/f/q;->sortPrice:D

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/anythink/core/common/f/q;->originPrice:D

    .line 177
    iget v0, p0, Lcom/anythink/core/common/f/q;->d:I

    if-ne v0, v2, :cond_3

    iget-wide v2, p0, Lcom/anythink/core/common/f/q;->o:D

    cmpl-double v0, v2, v12

    if-lez v0, :cond_3

    .line 178
    iput-wide v2, p0, Lcom/anythink/core/common/f/q;->price:D

    .line 179
    iget-wide v2, p0, Lcom/anythink/core/common/f/q;->o:D

    iput-wide v2, p0, Lcom/anythink/core/common/f/q;->sortPrice:D

    :cond_3
    const-string v0, "request_id"

    .line 182
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/q;->x:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(D)V
    .locals 0

    .line 198
    iput-wide p1, p0, Lcom/anythink/core/common/f/q;->q:D

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/bb;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/anythink/core/common/f/q;->u:Lcom/anythink/core/common/f/bb;

    return-void
.end method

.method private h()Lcom/anythink/core/common/f/bb;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/anythink/core/common/f/q;->u:Lcom/anythink/core/common/f/bb;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/anythink/core/common/f/p;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 249
    monitor-exit p0

    return-void

    .line 251
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/f/q;->t:Ljava/util/List;

    if-nez v0, :cond_1

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/q;->t:Ljava/util/List;

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/f/q;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/anythink/core/common/f/q;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()Z
    .locals 5

    .line 79
    iget-wide v0, p0, Lcom/anythink/core/common/f/q;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .line 83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "bid_id"

    .line 85
    iget-object v2, p0, Lcom/anythink/core/common/f/q;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cur"

    .line 86
    iget-object v2, p0, Lcom/anythink/core/common/f/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "origin_price"

    .line 87
    iget-wide v2, p0, Lcom/anythink/core/common/f/q;->originPrice:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "price"

    .line 88
    iget-wide v2, p0, Lcom/anythink/core/common/f/q;->price:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "nurl"

    .line 89
    iget-object v2, p0, Lcom/anythink/core/common/f/q;->winNoticeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lurl"

    .line 90
    iget-object v2, p0, Lcom/anythink/core/common/f/q;->loseNoticeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "unit_id"

    .line 91
    iget-object v2, p0, Lcom/anythink/core/common/f/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "nw_firm_id"

    .line 92
    iget v2, p0, Lcom/anythink/core/common/f/q;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "is_success"

    .line 93
    iget-boolean v2, p0, Lcom/anythink/core/common/f/q;->isSuccess:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "err_code"

    .line 94
    iget v2, p0, Lcom/anythink/core/common/f/q;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "err_msg"

    .line 95
    iget-object v2, p0, Lcom/anythink/core/common/f/q;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "expire"

    .line 96
    iget-wide v2, p0, Lcom/anythink/core/common/f/q;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "out_data_time"

    .line 97
    iget-wide v2, p0, Lcom/anythink/core/common/f/q;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "is_send_winurl"

    .line 98
    iget-boolean v2, p0, Lcom/anythink/core/common/f/q;->w:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "tp_bid_id"

    .line 100
    iget-object v2, p0, Lcom/anythink/core/common/f/q;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "burl"

    .line 101
    iget-object v2, p0, Lcom/anythink/core/common/f/q;->displayNoticeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_source_id"

    .line 102
    iget-object v2, p0, Lcom/anythink/core/common/f/q;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cur_rate"

    .line 103
    iget-wide v2, p0, Lcom/anythink/core/common/f/q;->l:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 105
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "hb_preq_sw"

    .line 106
    iget v3, p0, Lcom/anythink/core/common/f/q;->n:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ctrl"

    .line 108
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    iget-object v1, p0, Lcom/anythink/core/common/f/q;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "bid_response"

    .line 111
    iget-object v2, p0, Lcom/anythink/core/common/f/q;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "ecpm_api"

    .line 114
    iget-wide v2, p0, Lcom/anythink/core/common/f/q;->o:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "precision"

    .line 115
    iget-object v2, p0, Lcom/anythink/core/common/f/q;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "second_price"

    .line 116
    iget-wide v2, p0, Lcom/anythink/core/common/f/q;->q:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "req_url"

    .line 117
    iget-object v2, p0, Lcom/anythink/core/common/f/q;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bd_type"

    .line 118
    iget v2, p0, Lcom/anythink/core/common/f/q;->useType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "s_pty"

    .line 119
    iget-wide v2, p0, Lcom/anythink/core/common/f/q;->sortPrice:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "request_id"

    .line 120
    iget-object v2, p0, Lcom/anythink/core/common/f/q;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :catchall_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/anythink/core/common/f/q;->x:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/anythink/core/common/f/q;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    .line 23
    check-cast p1, Lcom/anythink/core/common/f/q;

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1208
    :cond_0
    iget-wide v1, p0, Lcom/anythink/core/common/f/q;->sortPrice:D

    iget-wide v3, p1, Lcom/anythink/core/common/f/q;->sortPrice:D

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    return v0

    .line 1212
    :cond_1
    iget-wide v0, p0, Lcom/anythink/core/common/f/q;->sortPrice:D

    iget-wide v2, p1, Lcom/anythink/core/common/f/q;->sortPrice:D

    cmpl-double p1, v0, v2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final declared-synchronized d()Z
    .locals 2

    monitor-enter p0

    .line 232
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/core/common/f/q;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 233
    monitor-exit p0

    return v1

    .line 236
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/anythink/core/common/f/q;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 238
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 243
    :try_start_0
    iput-object v0, p0, Lcom/anythink/core/common/f/q;->biddingNotice:Lcom/anythink/core/api/ATBiddingNotice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Lcom/anythink/core/common/f/au;
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/f/q;->t:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 275
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/p;

    .line 276
    invoke-virtual {v2}, Lcom/anythink/core/common/f/p;->a()Lcom/anythink/core/common/f/au;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 278
    invoke-static {v2}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v3

    .line 279
    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 286
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/f/q;->t:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 291
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
