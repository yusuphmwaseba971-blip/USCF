.class public Lcom/anythink/core/common/h/l;
.super Lcom/anythink/core/common/h/a;


# static fields
.field public static final a:Ljava/lang/String; = "sdk_custom"

.field private static final d:Ljava/lang/String; = "l"


# instance fields
.field b:J

.field c:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/al;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/anythink/core/common/h/a;-><init>()V

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/h/l;->i:Ljava/lang/String;

    .line 76
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/h/l;->j:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/anythink/core/common/h/l;->h:Landroid/content/Context;

    .line 78
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/h/l;->g:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/o;->q()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/h/l;->e:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/common/h/l;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/b/o;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/h/l;->f:Ljava/lang/String;

    .line 81
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/h/l;->k:Ljava/lang/String;

    .line 82
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->e()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/h/l;->l:Ljava/util/Map;

    .line 83
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->f()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/h/l;->p:Ljava/util/Map;

    .line 84
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->g()I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/h/l;->r:I

    .line 85
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->h()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/h/l;->q:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    .line 237
    invoke-static {}, Lcom/anythink/core/c/b;->a()Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/h/l;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "value_d"

    .line 239
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 262
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    .line 263
    iget-object v0, p0, Lcom/anythink/core/common/h/l;->l:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v0, "sdk_custom"

    .line 264
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/anythink/core/common/h/l;->l:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v3, "placement"

    .line 266
    iget-object v4, p0, Lcom/anythink/core/common/h/l;->g:Ljava/lang/String;

    iget-wide v5, p0, Lcom/anythink/core/common/h/l;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v9, p0, Lcom/anythink/core/common/h/l;->c:J

    sub-long v9, v0, v9

    invoke-static/range {v3 .. v10}, Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Ljava/lang/String;JJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(ILcom/anythink/core/common/h/k;)V
    .locals 2

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/h/l;->b:J

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/h/l;->c:J

    .line 93
    invoke-super {p0, p1, p2}, Lcom/anythink/core/common/h/a;->a(ILcom/anythink/core/common/h/k;)V

    return-void
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .locals 0

    return-void
.end method

.method protected final a(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .line 103
    invoke-static {}, Lcom/anythink/core/common/h;->a()Lcom/anythink/core/common/h;

    invoke-static {}, Lcom/anythink/core/common/h;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .locals 7

    .line 284
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/anythink/core/common/h/l;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/core/common/h/l;->g:Ljava/lang/String;

    const-string v0, "placement"

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    .line 109
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=utf-8"

    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected final d()[B
    .locals 2

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/common/h/l;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 121
    :catch_0
    invoke-virtual {p0}, Lcom/anythink/core/common/h/l;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected final e()Lorg/json/JSONObject;
    .locals 5

    .line 151
    invoke-super {p0}, Lcom/anythink/core/common/h/a;->e()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "app_id"

    .line 153
    iget-object v2, p0, Lcom/anythink/core/common/h/l;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pl_id"

    .line 154
    iget-object v2, p0, Lcom/anythink/core/common/h/l;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "session_id"

    .line 155
    iget-object v2, p0, Lcom/anythink/core/common/h/l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "nw_ver"

    .line 156
    invoke-static {}, Lcom/anythink/core/common/o/e;->h()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "exclude_myofferid"

    .line 157
    invoke-static {}, Lcom/anythink/core/common/r;->a()Lcom/anythink/core/common/r;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/h/l;->h:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/r;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->k()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "ecpoffer"

    .line 161
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->k()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->y()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "sy_id"

    .line 167
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->z()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "bk_id"

    if-nez v2, :cond_2

    .line 172
    :try_start_1
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 174
    :cond_2
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/o;->k(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    :goto_0
    iget-object v1, p0, Lcom/anythink/core/common/h/l;->l:Ljava/util/Map;

    invoke-static {v1}, Lcom/anythink/core/common/h/c;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "custom"

    .line 180
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    :cond_3
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "deny"

    .line 186
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/o/e;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    :cond_4
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->v()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 191
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->w()Lcom/anythink/core/api/ATDebuggerConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/api/ATDebuggerConfig;->fillRequestParam(Lorg/json/JSONObject;)V

    :cond_5
    const-string v1, "al_it_apil"

    .line 195
    invoke-static {}, Lcom/anythink/core/common/l;->a()Lcom/anythink/core/common/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/l;->c()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    iget-object v1, p0, Lcom/anythink/core/common/h/l;->p:Ljava/util/Map;

    if-eqz v1, :cond_6

    const-string v2, "cp_placement_id"

    .line 200
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "cp_pl_id"

    .line 202
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    :cond_6
    iget-object v1, p0, Lcom/anythink/core/common/h/l;->q:Ljava/util/Map;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_7

    :try_start_2
    const-string v1, "cached"

    .line 208
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/anythink/core/common/h/l;->q:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    :catchall_0
    :cond_7
    :try_start_3
    iget v1, p0, Lcom/anythink/core/common/h/l;->r:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v2, 0x2

    const-string v3, "get_1st_rl"

    const/4 v4, 0x1

    if-ne v1, v4, :cond_8

    .line 214
    :try_start_4
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 216
    :cond_8
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1237
    :goto_1
    invoke-static {}, Lcom/anythink/core/c/b;->a()Lcom/anythink/core/c/b;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/core/common/h/l;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/anythink/core/c/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v3, "value_d"

    .line 1239
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    :cond_9
    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/core/common/h/l;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result v1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v3, "pl_type"

    if-eqz v1, :cond_a

    .line 222
    :try_start_5
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 224
    :cond_a
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :goto_2
    return-object v0
.end method

.method protected final f()Lorg/json/JSONObject;
    .locals 3

    .line 245
    invoke-super {p0}, Lcom/anythink/core/common/h/a;->f()Lorg/json/JSONObject;

    move-result-object v0

    .line 248
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "btts"

    .line 249
    invoke-static {}, Lcom/anythink/core/common/o/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/anythink/core/common/h/l;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected final i()Landroid/content/Context;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/anythink/core/common/h/l;->h:Landroid/content/Context;

    return-object v0
.end method

.method protected final j()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/anythink/core/common/h/l;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected final k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final l()I
    .locals 1

    const/16 v0, 0x3f

    return v0
.end method

.method protected final n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
