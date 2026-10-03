.class public Lcom/anythink/core/common/f/p;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String; = "reqId"

.field static final b:Ljava/lang/String; = "hasShow"

.field static final c:Ljava/lang/String; = "hasClick"

.field static final d:Ljava/lang/String; = "price"

.field static final e:Ljava/lang/String; = "networkFirmId"

.field static final f:Ljava/lang/String; = "isHB"

.field static final g:Ljava/lang/String; = "adsListType"

.field static final h:Ljava/lang/String; = "tpBidId"

.field private static i:Ljava/lang/String; = "p"


# instance fields
.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Lcom/anythink/core/common/f/au;

.field private o:I

.field private p:D

.field private q:Z

.field private r:I

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/anythink/core/common/f/p;->k:Ljava/lang/String;

    return-void
.end method

.method private static a(I)I
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_2

    const/4 v3, 0x5

    if-eq p0, v3, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :cond_2
    :goto_0
    return v0
.end method

.method public static a(Ljava/lang/String;)Lcom/anythink/core/common/f/p;
    .locals 4

    .line 164
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 166
    new-instance p0, Lcom/anythink/core/common/f/p;

    const-string v1, "reqId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/anythink/core/common/f/p;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 167
    iput-boolean v1, p0, Lcom/anythink/core/common/f/p;->j:Z

    const-string v1, "hasShow"

    .line 168
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/anythink/core/common/f/p;->l:Z

    const-string v1, "hasClick"

    .line 169
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/anythink/core/common/f/p;->m:Z

    const-string v1, "price"

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 172
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/core/common/f/p;->p:D

    const-string v1, "networkFirmId"

    .line 173
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/anythink/core/common/f/p;->o:I

    const-string v1, "isHB"

    .line 174
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/anythink/core/common/f/p;->q:Z

    const-string v1, "adsListType"

    .line 175
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/anythink/core/common/f/p;->r:I

    const-string v1, "tpBidId"

    .line 176
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/p;->s:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 181
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private k()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/anythink/core/common/f/p;->j:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/anythink/core/common/f/au;
    .locals 1

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/f/p;->n:Lcom/anythink/core/common/f/au;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/anythink/core/common/f/au;)V
    .locals 2

    monitor-enter p0

    .line 49
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "refresh: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    iput-object p1, p0, Lcom/anythink/core/common/f/p;->n:Lcom/anythink/core/common/f/au;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/anythink/core/common/f/p;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/anythink/core/common/f/p;->l:Z

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/anythink/core/common/f/p;->m:Z

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/anythink/core/common/f/p;->l:Z

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 11

    const-string v0, ""

    .line 99
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 106
    :try_start_0
    iget-boolean v2, p0, Lcom/anythink/core/common/f/p;->l:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 107
    :goto_0
    iget-boolean v5, p0, Lcom/anythink/core/common/f/p;->m:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1221
    :goto_1
    iget-boolean v4, p0, Lcom/anythink/core/common/f/p;->j:Z

    if-eqz v4, :cond_2

    .line 111
    iget-wide v4, p0, Lcom/anythink/core/common/f/p;->p:D

    .line 112
    iget v6, p0, Lcom/anythink/core/common/f/p;->o:I

    .line 113
    iget v7, p0, Lcom/anythink/core/common/f/p;->r:I

    invoke-static {v7}, Lcom/anythink/core/common/f/p;->a(I)I

    move-result v7

    .line 114
    iget-object v8, p0, Lcom/anythink/core/common/f/p;->s:Ljava/lang/String;

    goto :goto_2

    .line 116
    :cond_2
    iget-object v4, p0, Lcom/anythink/core/common/f/p;->n:Lcom/anythink/core/common/f/au;

    invoke-static {v4}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v4

    .line 117
    iget-object v6, p0, Lcom/anythink/core/common/f/p;->n:Lcom/anythink/core/common/f/au;

    invoke-virtual {v6}, Lcom/anythink/core/common/f/au;->d()I

    move-result v6

    .line 118
    iget-object v7, p0, Lcom/anythink/core/common/f/p;->n:Lcom/anythink/core/common/f/au;

    invoke-virtual {v7}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v7

    .line 119
    iget-object v8, p0, Lcom/anythink/core/common/f/p;->n:Lcom/anythink/core/common/f/au;

    invoke-virtual {v8}, Lcom/anythink/core/common/f/au;->a()I

    move-result v8

    invoke-static {v8}, Lcom/anythink/core/common/f/p;->a(I)I

    move-result v8

    if-eqz v7, :cond_3

    .line 120
    iget-object v9, v7, Lcom/anythink/core/common/f/q;->g:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 121
    iget-object v7, v7, Lcom/anythink/core/common/f/q;->g:Ljava/lang/String;

    move v10, v8

    move-object v8, v7

    move v7, v10

    goto :goto_2

    :cond_3
    move v7, v8

    move-object v8, v0

    :goto_2
    const-string v9, "price"

    .line 126
    invoke-virtual {v1, v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "networkFirmId"

    .line 127
    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "demandType"

    .line 128
    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "tp_bid_id"

    .line 130
    invoke-virtual {v1, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v4, "imp"

    .line 133
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "click"

    .line 134
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :catchall_0
    return-object v0
.end method

.method public final declared-synchronized g()Lorg/json/JSONObject;
    .locals 5

    monitor-enter p0

    .line 194
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "reqId"

    .line 196
    iget-object v2, p0, Lcom/anythink/core/common/f/p;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hasShow"

    .line 197
    iget-boolean v2, p0, Lcom/anythink/core/common/f/p;->l:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "hasClick"

    .line 198
    iget-boolean v2, p0, Lcom/anythink/core/common/f/p;->m:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 200
    iget-object v1, p0, Lcom/anythink/core/common/f/p;->n:Lcom/anythink/core/common/f/au;

    if-eqz v1, :cond_0

    const-string v2, "price"

    .line 201
    invoke-static {v1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "networkFirmId"

    .line 202
    iget-object v2, p0, Lcom/anythink/core/common/f/p;->n:Lcom/anythink/core/common/f/au;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "isHB"

    .line 203
    iget-object v2, p0, Lcom/anythink/core/common/f/p;->n:Lcom/anythink/core/common/f/au;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->k()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "adsListType"

    .line 205
    iget-object v2, p0, Lcom/anythink/core/common/f/p;->n:Lcom/anythink/core/common/f/au;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 207
    iget-object v1, p0, Lcom/anythink/core/common/f/p;->n:Lcom/anythink/core/common/f/au;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v2, v1, Lcom/anythink/core/common/f/q;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tpBidId"

    .line 209
    iget-object v1, v1, Lcom/anythink/core/common/f/q;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 214
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 217
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h()D
    .locals 2

    .line 225
    iget-boolean v0, p0, Lcom/anythink/core/common/f/p;->j:Z

    if-eqz v0, :cond_0

    .line 226
    iget-wide v0, p0, Lcom/anythink/core/common/f/p;->p:D

    return-wide v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f/p;->n:Lcom/anythink/core/common/f/au;

    if-eqz v0, :cond_1

    .line 230
    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public final i()I
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/anythink/core/common/f/p;->j:Z

    if-eqz v0, :cond_0

    .line 238
    iget v0, p0, Lcom/anythink/core/common/f/p;->o:I

    return v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f/p;->n:Lcom/anythink/core/common/f/au;

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->d()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/anythink/core/common/f/p;->j:Z

    if-eqz v0, :cond_0

    .line 250
    iget-boolean v0, p0, Lcom/anythink/core/common/f/p;->q:Z

    return v0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f/p;->n:Lcom/anythink/core/common/f/au;

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->k()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    iget-boolean v0, p0, Lcom/anythink/core/common/f/p;->j:Z

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", priceInDisk="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/anythink/core/common/f/p;->p:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", networkFirmIdInDisk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/f/p;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", winnerIsHBInDisk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/anythink/core/common/f/p;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", adsListTypeInDisk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/f/p;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tpBidIdInDisk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/f/p;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BiddingRecorder{fromLocalDisk="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/anythink/core/common/f/p;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 90
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", requestId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/core/common/f/p;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hasShow="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/anythink/core/common/f/p;->l:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasClick="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/anythink/core/common/f/p;->m:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", loadedMaxPriceUgInMemory="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/core/common/f/p;->n:Lcom/anythink/core/common/f/au;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
