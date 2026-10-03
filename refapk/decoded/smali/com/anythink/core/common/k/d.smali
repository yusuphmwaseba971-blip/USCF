.class public final Lcom/anythink/core/common/k/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/g/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;JJLcom/anythink/core/common/f/h;Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-static/range {p0 .. p8}, Lcom/anythink/core/common/k/d;->b(Ljava/lang/String;Ljava/lang/String;JJLcom/anythink/core/common/f/h;Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;JJLcom/anythink/core/common/f/h;Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 130
    :try_start_0
    invoke-virtual {p7}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 133
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    move-object v1, v0

    .line 140
    :goto_0
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "pl_id"

    .line 141
    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "req_id"

    .line 142
    invoke-virtual {p6}, Lcom/anythink/core/common/f/h;->ad()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "show_id"

    .line 143
    invoke-virtual {p6}, Lcom/anythink/core/common/f/h;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "unit_id"

    .line 144
    invoke-virtual {p6}, Lcom/anythink/core/common/f/h;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "nw_firm_id"

    .line 145
    invoke-virtual {p6}, Lcom/anythink/core/common/f/h;->M()I

    move-result v3

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "scenario_id"

    .line 1529
    iget-object v3, p6, Lcom/anythink/core/common/f/h;->B:Ljava/lang/String;

    .line 146
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "rv_start_ts"

    .line 147
    invoke-virtual {v2, p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "r_callback_ts"

    .line 148
    invoke-virtual {v2, p0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "rv_play_dur"

    sub-long/2addr p4, p2

    .line 149
    invoke-virtual {v2, p0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "tp_bid_id"

    .line 150
    invoke-virtual {p6}, Lcom/anythink/core/common/f/h;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "extra_info"

    .line 151
    invoke-virtual {v2, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "user_id"

    .line 152
    invoke-virtual {p7}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "extra_data"

    .line 153
    invoke-virtual {p7}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUserCustomData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "curr_ts"

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v2, p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "api_c"

    .line 155
    invoke-virtual {v2, p0, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ilrd"

    .line 158
    invoke-static {p6, p7}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/k;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "share_pl_id"

    .line 163
    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    return-object v0
.end method


# virtual methods
.method public final a(JJLcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/h;)V
    .locals 10

    .line 35
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v9, Lcom/anythink/core/common/k/d$1;

    move-object v1, v9

    move-object v2, p0

    move-object/from16 v3, p6

    move-wide v4, p3

    move-wide v6, p1

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/anythink/core/common/k/d$1;-><init>(Lcom/anythink/core/common/k/d;Lcom/anythink/core/common/f/h;JJLcom/anythink/core/api/ATBaseAdAdapter;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 1137
    invoke-virtual {v0, v9, v1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method
