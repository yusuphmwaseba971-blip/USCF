.class public final Lcom/anythink/core/common/l/d;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field b:I

.field c:J

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/l/e;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/l/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7530

    .line 27
    iput-wide v0, p0, Lcom/anythink/core/common/l/d;->a:J

    const/4 v2, 0x1

    .line 28
    iput v2, p0, Lcom/anythink/core/common/l/d;->b:I

    .line 29
    iput-wide v0, p0, Lcom/anythink/core/common/l/d;->c:J

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/l/d;->d:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/l/d;->e:Ljava/util/Map;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/anythink/core/common/l/d;
    .locals 9

    .line 37
    new-instance v0, Lcom/anythink/core/common/l/d;

    invoke-direct {v0}, Lcom/anythink/core/common/l/d;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "pre_load_time"

    const-wide/16 v2, 0x7530

    .line 43
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/anythink/core/common/l/d;->a:J

    const-string v1, "pre_load_num"

    const/4 v4, 0x1

    .line 44
    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/anythink/core/common/l/d;->b:I

    const-string v1, "pre_load_timeout"

    .line 45
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/core/common/l/d;->c:J

    const-string v1, "formats"

    .line 47
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 49
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 53
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 58
    :cond_1
    new-instance v5, Lcom/anythink/core/common/l/e;

    invoke-direct {v5}, Lcom/anythink/core/common/l/e;-><init>()V

    const-string v6, "format"

    .line 59
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/anythink/core/common/l/e;->a:I

    const-string v6, "pl_id"

    const-string v7, ""

    .line 60
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/anythink/core/common/l/e;->b:Ljava/lang/String;

    const-string v6, "req_pacing"

    .line 61
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/anythink/core/common/l/e;->c:I

    const-string v6, "ad_cache"

    .line 62
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/anythink/core/common/l/e;->d:I

    const-string v6, "ad_ecpm"

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 63
    invoke-virtual {v3, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/anythink/core/common/l/e;->e:D

    .line 65
    iget-object v3, v0, Lcom/anythink/core/common/l/d;->d:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v3, v0, Lcom/anythink/core/common/l/d;->e:Ljava/util/Map;

    iget-object v6, v5, Lcom/anythink/core/common/l/e;->b:Ljava/lang/String;

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/anythink/core/common/l/d;->a:J

    return-wide v0
.end method

.method public final b()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/anythink/core/common/l/d;->b:I

    return v0
.end method

.method public final c()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/anythink/core/common/l/d;->c:J

    return-wide v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/l/e;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/anythink/core/common/l/d;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/l/e;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/anythink/core/common/l/d;->d:Ljava/util/List;

    return-object v0
.end method
