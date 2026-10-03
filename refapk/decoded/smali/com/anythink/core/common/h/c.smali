.class public final Lcom/anythink/core/common/h/c;
.super Ljava/lang/Object;


# static fields
.field public static final A:Ljava/lang/String; = "it_src"

.field public static final B:Ljava/lang/String; = "lat"

.field public static final C:Ljava/lang/String; = "lon"

.field public static final D:Ljava/lang/String; = "inst_wx"

.field public static final E:Ljava/lang/String; = "mini_sdk"

.field public static final F:Ljava/lang/String; = "ms_type"

.field public static final G:Ljava/lang/String; = "device_set"

.field public static final H:Ljava/lang/String; = "gdpr_cs"

.field public static final I:Ljava/lang/String; = "abtest_id"

.field public static final J:Ljava/lang/String; = "first_init_time"

.field public static final K:Ljava/lang/String; = "days_from_first_init"

.field public static final L:Ljava/lang/String; = "cs_cl"

.field public static final M:Ljava/lang/String; = "is_ofm"

.field public static final N:Ljava/lang/String; = "app_id"

.field public static final O:Ljava/lang/String; = "api_ver"

.field public static final P:Ljava/lang/String; = "custom"

.field public static final Q:Ljava/lang/String; = "rdid"

.field public static final R:Ljava/lang/String; = "rc"

.field public static final S:Ljava/lang/String; = "data"

.field public static final T:Ljava/lang/String; = "tcp_tk_da_type"

.field public static final U:Ljava/lang/String; = "ofl"

.field public static final V:Ljava/lang/String; = "tcp_rate"

.field public static final W:Ljava/lang/String; = "p"

.field public static final X:Ljava/lang/String; = "p2"

.field public static final Y:Ljava/lang/String; = "sign"

.field public static final Z:Ljava/lang/String; = "common"

.field public static final a:Ljava/lang/String; = "platform"

.field public static final aA:Ljava/lang/String; = "c_num"

.field public static final aB:Ljava/lang/String; = "t_store"

.field public static final aa:I = 0x1

.field public static final ab:I = 0x2

.field public static final ac:I = 0x3

.field public static final ad:Ljava/lang/String; = "area_type"

.field public static final ae:Ljava/lang/String; = "sp_http"

.field public static final af:Ljava/lang/String; = "os_fw"

.field public static final ag:Ljava/lang/String; = "is_test"

.field public static final ah:Ljava/lang/String; = "mdna_oid"

.field public static final ai:Ljava/lang/String; = "mdna_appkey"

.field public static final aj:Ljava/lang/String; = "mdna_r"

.field public static final ak:Ljava/lang/String; = "user_num"

.field public static final al:Ljava/lang/String; = "cp_device_id"

.field public static final am:Ljava/lang/String; = "cp_pl_id"

.field public static an:I = -0x1

.field public static ao:I = -0x1

.field public static final ap:Ljava/lang/String; = "al_it_apil"

.field public static final aq:Ljava/lang/String; = "wx_data"

.field public static final ar:Ljava/lang/String; = "cached"

.field public static final as:Ljava/lang/String; = "cached"

.field public static final at:Ljava/lang/String; = "n_cache"

.field public static final au:Ljava/lang/String; = "get_1st_rl"

.field public static final av:Ljava/lang/String; = "value_d"

.field public static final aw:Ljava/lang/String; = "pl_type"

.field public static final ax:Ljava/lang/String; = "amazon_id"

.field public static final ay:Ljava/lang/String; = "amazon_lat"

.field public static final az:Ljava/lang/String; = "t_mem"

.field public static final b:Ljava/lang/String; = "os_vn"

.field public static final c:Ljava/lang/String; = "os_vc"

.field public static final d:Ljava/lang/String; = "package_name"

.field public static final e:Ljava/lang/String; = "app_vn"

.field public static final f:Ljava/lang/String; = "app_vc"

.field public static final g:Ljava/lang/String; = "brand"

.field public static final h:Ljava/lang/String; = "model"

.field public static final i:Ljava/lang/String; = "screen"

.field public static final j:Ljava/lang/String; = "network_type"

.field public static final k:Ljava/lang/String; = "mnc"

.field public static final l:Ljava/lang/String; = "mcc"

.field public static final m:Ljava/lang/String; = "language"

.field public static final n:Ljava/lang/String; = "timezone"

.field public static final o:Ljava/lang/String; = "sdk_ver"

.field public static final p:Ljava/lang/String; = "gp_ver"

.field public static final q:Ljava/lang/String; = "nw_ver"

.field public static final r:Ljava/lang/String; = "ua"

.field public static final s:Ljava/lang/String; = "orient"

.field public static final t:Ljava/lang/String; = "system"

.field public static final u:Ljava/lang/String; = "android_id"

.field public static final v:Ljava/lang/String; = "gaid"

.field public static final w:Ljava/lang/String; = "channel"

.field public static final x:Ljava/lang/String; = "sub_channel"

.field public static final y:Ljava/lang/String; = "upid"

.field public static final z:Ljava/lang/String; = "ps_id"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/json/JSONObject;
    .locals 1

    .line 509
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->l()Ljava/util/Map;

    move-result-object v0

    .line 510
    invoke-static {v0}, Lcom/anythink/core/common/h/c;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Lorg/json/JSONObject;
    .locals 8

    .line 204
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/e;->r(Landroid/content/Context;)V

    .line 206
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 207
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    const-string v2, "platform"

    const/4 v3, 0x1

    .line 209
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "os_vn"

    .line 210
    invoke-static {}, Lcom/anythink/core/common/o/e;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os_vc"

    .line 211
    invoke-static {}, Lcom/anythink/core/common/o/e;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "package_name"

    .line 212
    invoke-static {v1}, Lcom/anythink/core/common/o/e;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_vn"

    .line 213
    invoke-static {v1}, Lcom/anythink/core/common/o/e;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_vc"

    .line 214
    invoke-static {v1}, Lcom/anythink/core/common/o/e;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "brand"

    .line 215
    invoke-static {}, Lcom/anythink/core/common/o/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "model"

    .line 216
    invoke-static {}, Lcom/anythink/core/common/o/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "screen"

    .line 217
    invoke-static {v1}, Lcom/anythink/core/common/o/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "network_type"

    .line 218
    invoke-static {v1}, Lcom/anythink/core/common/o/e;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mnc"

    .line 219
    invoke-static {v1}, Lcom/anythink/core/common/o/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mcc"

    .line 220
    invoke-static {v1}, Lcom/anythink/core/common/o/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "language"

    .line 221
    invoke-static {v1}, Lcom/anythink/core/common/o/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "timezone"

    .line 222
    invoke-static {}, Lcom/anythink/core/common/o/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdk_ver"

    .line 223
    invoke-static {}, Lcom/anythink/core/common/o/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "gp_ver"

    .line 224
    invoke-static {v1}, Lcom/anythink/core/common/o/e;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ua"

    .line 225
    invoke-static {}, Lcom/anythink/core/common/o/e;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "orient"

    .line 226
    invoke-static {v1}, Lcom/anythink/core/common/o/e;->g(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "system"

    .line 227
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 228
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "channel"

    .line 229
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/o;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "sub_channel"

    .line 232
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/o;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v2, "upid"

    .line 234
    invoke-static {v1}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/r;->b()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, ""

    if-eqz v4, :cond_2

    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/o;->x()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v5

    :goto_0
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ps_id"

    .line 236
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/o;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    invoke-static {v1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v2

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v4, "abtest_id"

    .line 241
    invoke-virtual {v2}, Lcom/anythink/core/d/a;->I()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/anythink/core/d/a;->I()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v4, "first_init_time"

    .line 244
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/core/common/b/o;->g()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "days_from_first_init"

    .line 245
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/core/common/b/o;->h()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "gdpr_cs"

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/common/b/o;->d()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/r;->a()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->i()I

    move-result v1

    if-ne v1, v3, :cond_5

    const-string v1, "is_ofm"

    .line 254
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 258
    :cond_5
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->H()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/anythink/core/common/b/j;->a()Lcom/anythink/core/common/b/j;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/d/a;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 259
    invoke-static {}, Lcom/anythink/core/common/b/j;->a()Lcom/anythink/core/common/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/j;->b()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {}, Lcom/anythink/core/common/b/j;->a()Lcom/anythink/core/common/b/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/j;->c()Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-static {}, Lcom/anythink/core/common/b/j;->a()Lcom/anythink/core/common/b/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/j;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mdna_oid"

    .line 263
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, v5

    :goto_2
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mdna_appkey"

    .line 264
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    move-object v2, v5

    :goto_3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rdid"

    .line 265
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object v5, v3

    :cond_8
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mdna_r"

    .line 266
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->K()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 273
    :cond_9
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->C()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 274
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->D()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "1"

    goto :goto_4

    :cond_a
    const-string v1, "3"

    goto :goto_4

    .line 280
    :cond_b
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->D()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "2"

    goto :goto_4

    :cond_c
    const-string v1, "4"

    :goto_4
    const-string v2, "sp_http"

    .line 286
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 294
    invoke-interface {v1, v0, p0}, Lcom/anythink/core/api/IExHandler;->fillRequestDeviceData(Lorg/json/JSONObject;I)V

    .line 297
    :cond_d
    invoke-static {}, Lcom/anythink/core/common/o/e;->j()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "os_fw"

    .line 299
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_e
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_f

    .line 304
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1420
    :try_start_2
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1422
    invoke-virtual {v1}, Lcom/anythink/core/d/a;->aw()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v2, "a_c"

    .line 1424
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    nop

    :cond_f
    :goto_5
    const/16 v1, 0x10

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_11

    .line 309
    :try_start_3
    invoke-static {}, Lcom/anythink/core/common/o/e;->n()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 310
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x0

    .line 311
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 312
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/s;

    if-eqz v2, :cond_10

    .line 313
    invoke-virtual {v2}, Lcom/anythink/core/common/f/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 314
    invoke-virtual {v2}, Lcom/anythink/core/common/f/s;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/anythink/core/common/f/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :catch_1
    :cond_11
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 514
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/o;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 515
    invoke-static {p0}, Lcom/anythink/core/common/h/c;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 522
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 523
    :try_start_1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 524
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    .line 527
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_1
    :cond_1
    move-object v0, v1

    :catchall_2
    :cond_2
    return-object v0
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    .line 434
    sget v0, Lcom/anythink/core/common/h/c;->an:I

    const-string v1, "ms_type"

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-lez v0, :cond_4

    .line 436
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 439
    :cond_0
    invoke-static {p0}, Lcom/anythink/core/common/o/h;->c(Landroid/content/Context;)Z

    move-result v0

    .line 440
    invoke-static {p0}, Lcom/anythink/core/common/o/h;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    const/4 v3, 0x3

    :cond_2
    if-lez v3, :cond_3

    .line 451
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 452
    :cond_3
    sput v3, Lcom/anythink/core/common/h/c;->an:I

    .line 455
    :cond_4
    :goto_1
    sget p0, Lcom/anythink/core/common/h/c;->ao:I

    const-string v0, "mini_sdk"

    const/4 v1, 0x1

    if-eq p0, v2, :cond_5

    if-ne p0, v1, :cond_7

    .line 457
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void

    .line 459
    :cond_5
    invoke-static {}, Lcom/anythink/core/common/o/h;->c()Z

    move-result p0

    if-ne p0, v1, :cond_6

    .line 463
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 465
    :cond_6
    sput p0, Lcom/anythink/core/common/h/c;->ao:I

    :cond_7
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 5

    .line 496
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->L()Lcom/anythink/core/common/f/ax;

    move-result-object v0

    .line 497
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "has_sdk"

    .line 498
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ax;->b()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "sdk_ver"

    .line 499
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ax;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdk_api_ver"

    .line 500
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ax;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "open_app_id"

    .line 501
    invoke-static {}, Lcom/anythink/core/common/o/e;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "wx_data"

    .line 502
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static b(I)Lorg/json/JSONObject;
    .locals 10

    const-string v0, "a"

    .line 334
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    .line 335
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 336
    invoke-static {v1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v3

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_0

    .line 339
    :try_start_0
    invoke-virtual {v3}, Lcom/anythink/core/d/a;->N()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 340
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x1

    if-nez v6, :cond_2

    .line 342
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 344
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v0, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    :try_start_2
    const-string v5, "android_id"

    if-eqz v0, :cond_3

    .line 350
    invoke-static {v1}, Lcom/anythink/core/common/o/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v4

    :goto_3
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "gaid"

    .line 351
    invoke-static {}, Lcom/anythink/core/common/o/e;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v5, "is_cn_sdk"

    if-eqz v0, :cond_4

    .line 354
    :try_start_3
    invoke-interface {v0, v2, v3}, Lcom/anythink/core/api/IExHandler;->fillRequestData(Lorg/json/JSONObject;Lcom/anythink/core/d/a;)V

    const-string v0, "1"

    .line 355
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_4
    const-string v0, "0"

    .line 357
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    :goto_4
    invoke-static {v1}, Lcom/anythink/core/common/o/e;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/o;->r()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v5, "lat"

    .line 363
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v2, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "lon"

    .line 364
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v2, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 367
    :cond_5
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/o;->s()Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "inst_wx"

    .line 369
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6
    const-string v3, "it_src"

    .line 372
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object v4, v0

    :cond_7
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "area_type"

    .line 374
    sget v3, Lcom/anythink/core/common/b/h$e;->a:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1434
    sget v0, Lcom/anythink/core/common/h/c;->an:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v3, "ms_type"

    const/4 v4, -0x1

    if-eq v0, v4, :cond_8

    if-lez v0, :cond_c

    .line 1436
    :try_start_4
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_6

    .line 1439
    :cond_8
    invoke-static {v1}, Lcom/anythink/core/common/o/h;->c(Landroid/content/Context;)Z

    move-result v0

    .line 1440
    invoke-static {v1}, Lcom/anythink/core/common/o/h;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v5, 0x2

    goto :goto_5

    :cond_9
    move v5, v0

    :goto_5
    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    const/4 v5, 0x3

    :cond_a
    if-lez v5, :cond_b

    .line 1451
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1452
    :cond_b
    sput v5, Lcom/anythink/core/common/h/c;->an:I

    .line 1455
    :cond_c
    :goto_6
    sget v0, Lcom/anythink/core/common/h/c;->ao:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v1, "mini_sdk"

    if-eq v0, v4, :cond_d

    if-ne v0, v7, :cond_f

    .line 1457
    :try_start_5
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_7

    .line 1459
    :cond_d
    invoke-static {}, Lcom/anythink/core/common/o/h;->c()Z

    move-result v0

    if-ne v0, v7, :cond_e

    .line 1463
    invoke-virtual {v2, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1465
    :cond_e
    sput v0, Lcom/anythink/core/common/h/c;->ao:I

    .line 1470
    :cond_f
    :goto_7
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->J()Lcom/anythink/core/api/ATPrivacyConfig;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1472
    invoke-interface {v0}, Lcom/anythink/core/api/ATPrivacyConfig;->getDevGaid()Ljava/lang/String;

    move-result-object v1

    .line 1473
    invoke-interface {v0}, Lcom/anythink/core/api/ATPrivacyConfig;->getDevImei()Ljava/lang/String;

    move-result-object v3

    .line 1474
    invoke-interface {v0}, Lcom/anythink/core/api/ATPrivacyConfig;->getDevOaid()Ljava/lang/String;

    move-result-object v0

    .line 1476
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1478
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "set_gaid"

    .line 1479
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1481
    :cond_10
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "set_imei"

    .line 1482
    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1484
    :cond_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "set_oaid"

    .line 1485
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    const-string v0, "device_set"

    .line 1488
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    :cond_13
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->l()Ljava/util/Map;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    const-string v1, "user_number"

    .line 383
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    const-string v3, "user_num"

    .line 385
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    :cond_14
    :try_start_7
    const-string v1, "user_device_id"

    .line 393
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v1, "cp_device_id"

    .line 395
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 400
    :catchall_1
    :cond_15
    :try_start_8
    invoke-static {}, Lcom/anythink/core/common/o/e;->o()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "amazon_id"

    .line 402
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    :cond_16
    invoke-static {}, Lcom/anythink/core/common/o/e;->p()I

    move-result v0

    if-lez v0, :cond_17

    const-string v1, "amazon_lat"

    .line 406
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_17
    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1a

    .line 411
    invoke-static {}, Lcom/anythink/core/common/i/e;->a()Lcom/anythink/core/common/i/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/i/e;->f()I

    move-result p0

    if-lez p0, :cond_18

    const-string p0, "t_mem"

    .line 413
    invoke-static {}, Lcom/anythink/core/common/i/e;->a()Lcom/anythink/core/common/i/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/i/e;->f()I

    move-result v0

    .line 412
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 415
    :cond_18
    invoke-static {}, Lcom/anythink/core/common/i/e;->a()Lcom/anythink/core/common/i/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/i/e;->g()I

    move-result p0

    if-lez p0, :cond_19

    const-string p0, "c_num"

    .line 417
    invoke-static {}, Lcom/anythink/core/common/i/e;->a()Lcom/anythink/core/common/i/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/i/e;->g()I

    move-result v0

    .line 416
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 419
    :cond_19
    invoke-static {}, Lcom/anythink/core/common/i/e;->a()Lcom/anythink/core/common/i/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/i/e;->h()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p0, v0, v3

    if-lez p0, :cond_1a

    const-string p0, "t_store"

    .line 421
    invoke-static {}, Lcom/anythink/core/common/i/e;->a()Lcom/anythink/core/common/i/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/i/e;->h()J

    move-result-wide v0

    .line 420
    invoke-virtual {v2, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    :cond_1a
    return-object v2
.end method

.method private static b(Lorg/json/JSONObject;)V
    .locals 5

    .line 470
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->J()Lcom/anythink/core/api/ATPrivacyConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 472
    invoke-interface {v0}, Lcom/anythink/core/api/ATPrivacyConfig;->getDevGaid()Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-interface {v0}, Lcom/anythink/core/api/ATPrivacyConfig;->getDevImei()Ljava/lang/String;

    move-result-object v2

    .line 474
    invoke-interface {v0}, Lcom/anythink/core/api/ATPrivacyConfig;->getDevOaid()Ljava/lang/String;

    move-result-object v0

    .line 476
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 478
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "set_gaid"

    .line 479
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "set_imei"

    .line 482
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "set_oaid"

    .line 485
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v0, "device_set"

    .line 488
    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    return-void
.end method
