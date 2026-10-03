.class public final Lcom/anythink/core/c/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/c/b/a;


# static fields
.field private static final a:Ljava/lang/String; = "PlacementStatisticRecord"


# instance fields
.field private final b:Lcom/anythink/core/d/f;

.field private final c:Lcom/anythink/core/c/b/d;

.field private final d:Lcom/anythink/core/c/b/e;

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/f;->a(Landroid/content/Context;)Lcom/anythink/core/d/f;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/c/b/c;->b:Lcom/anythink/core/d/f;

    .line 53
    invoke-static {}, Lcom/anythink/core/c/b/d;->c()Lcom/anythink/core/c/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/c/b/c;->c:Lcom/anythink/core/c/b/d;

    .line 54
    new-instance v1, Lcom/anythink/core/c/b/e;

    invoke-direct {v1, v0}, Lcom/anythink/core/c/b/e;-><init>(Lcom/anythink/core/c/b/d;)V

    iput-object v1, p0, Lcom/anythink/core/c/b/c;->d:Lcom/anythink/core/c/b/e;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/c/b/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/c/b/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONArray;)D
    .locals 3

    .line 196
    invoke-direct {p0, p1}, Lcom/anythink/core/c/b/c;->d(Ljava/lang/String;)Lcom/anythink/core/c/a/b;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lcom/anythink/core/c/a/b;->e()Z

    move-result v0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 201
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 202
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "ecpm"

    .line 203
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p1

    .line 204
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/c/a/b;->g()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 213
    invoke-virtual {p1}, Lcom/anythink/core/c/a/b;->g()D

    move-result-wide v1

    :cond_1
    :goto_0
    return-wide v1
.end method

.method static synthetic a(Lcom/anythink/core/c/b/c;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/anythink/core/c/b/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private a(Lcom/anythink/core/c/a/a;)V
    .locals 3

    .line 159
    invoke-virtual {p1}, Lcom/anythink/core/c/a/a;->toString()Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Lcom/anythink/core/c/a/a;->i()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-direct {p0, v0}, Lcom/anythink/core/c/b/c;->d(Ljava/lang/String;)Lcom/anythink/core/c/a/b;

    move-result-object v1

    .line 164
    iget-object v2, p0, Lcom/anythink/core/c/b/c;->c:Lcom/anythink/core/c/b/d;

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {v2, p1}, Lcom/anythink/core/c/b/d;->a(Lcom/anythink/core/c/a/a;)V

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/c/a/a;->j()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 169
    invoke-direct {p0, v0, v1}, Lcom/anythink/core/c/b/c;->a(Ljava/lang/String;Lcom/anythink/core/c/a/b;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/anythink/core/c/a/b;)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-virtual {p2}, Lcom/anythink/core/c/a/b;->f()[[D

    move-result-object v0

    if-eqz v0, :cond_9

    .line 234
    invoke-virtual {p2}, Lcom/anythink/core/c/a/b;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-direct {p0, p1}, Lcom/anythink/core/c/b/c;->f(Ljava/lang/String;)V

    return-void

    .line 254
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/c/b/c;->b(Ljava/lang/String;Lcom/anythink/core/c/a/b;)[D

    move-result-object p2

    const/4 v1, 0x0

    .line 256
    aget-wide v2, p2, v1

    const/4 v4, 0x1

    .line 257
    aget-wide v5, p2, v4

    .line 258
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    cmpl-double p2, v2, v5

    if-nez p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x0

    const-wide/16 v7, 0x0

    cmpl-double v9, v2, v7

    if-lez v9, :cond_3

    .line 265
    invoke-static {v0, v2, v3}, Lcom/anythink/core/c/b/c;->a([[DD)[D

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, p2

    :goto_0
    cmpl-double v3, v5, v7

    if-lez v3, :cond_4

    .line 266
    invoke-static {v0, v5, v6}, Lcom/anythink/core/c/b/c;->a([[DD)[D

    move-result-object p2

    :cond_4
    if-nez v2, :cond_7

    if-eqz p2, :cond_6

    :cond_5
    :goto_1
    const/4 v1, 0x1

    :cond_6
    move v4, v1

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    .line 272
    aget-wide v5, v2, v1

    aget-wide v7, p2, v1

    cmpl-double v0, v5, v7

    if-nez v0, :cond_5

    aget-wide v5, v2, v4

    aget-wide v2, p2, v4

    cmpl-double p2, v5, v2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_8
    :goto_2
    if-eqz v4, :cond_9

    .line 279
    invoke-direct {p0, p1}, Lcom/anythink/core/c/b/c;->f(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private static a([[DD)[D
    .locals 9

    .line 402
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 403
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 404
    aget-wide v4, v3, v1

    const/4 v6, 0x1

    .line 405
    aget-wide v6, v3, v6

    cmpl-double v8, p1, v4

    if-ltz v8, :cond_0

    cmpg-double v4, p1, v6

    if-gtz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Lcom/anythink/core/common/f/at;Lcom/anythink/core/common/f/au;)Lcom/anythink/core/c/a/a;
    .locals 5

    .line 355
    new-instance v0, Lcom/anythink/core/c/a/a;

    invoke-direct {v0}, Lcom/anythink/core/c/a/a;-><init>()V

    if-eqz p0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/anythink/core/common/f/at;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/a/a;->a(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/anythink/core/common/f/at;->ac()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/c/a/a;->e(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_4

    .line 362
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/c/a/a;->b(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5297
    iget-object p0, p0, Lcom/anythink/core/common/f/q;->u:Lcom/anythink/core/common/f/bb;

    if-eqz p0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/anythink/core/common/f/bb;->d()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Lcom/anythink/core/c/a/a;->c(Ljava/lang/String;)V

    .line 369
    :cond_2
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->aq()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p0, v1, v3

    if-lez p0, :cond_3

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->aq()D

    move-result-wide v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->y()D

    move-result-wide v1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/c/a/a;->a(D)V

    .line 370
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->d()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/c/a/a;->a(I)V

    .line 372
    :cond_4
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->q()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/c/a/a;->d(Ljava/lang/String;)V

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/c/a/a;->a(J)V

    const/4 p0, 0x4

    .line 374
    invoke-virtual {v0, p0}, Lcom/anythink/core/c/a/a;->b(I)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;)Lcom/anythink/core/c/a/a;
    .locals 3

    .line 333
    new-instance v0, Lcom/anythink/core/c/a/a;

    invoke-direct {v0}, Lcom/anythink/core/c/a/a;-><init>()V

    if-eqz p2, :cond_2

    .line 336
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/a/a;->b(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4297
    iget-object v1, v1, Lcom/anythink/core/common/f/q;->u:Lcom/anythink/core/common/f/bb;

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v1}, Lcom/anythink/core/common/f/bb;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/anythink/core/c/a/a;->c(Ljava/lang/String;)V

    .line 343
    :cond_1
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->y()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/c/a/a;->a(D)V

    .line 344
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->d()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/anythink/core/c/a/a;->a(I)V

    .line 346
    :cond_2
    invoke-virtual {v0, p0}, Lcom/anythink/core/c/a/a;->a(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->q()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/c/a/a;->d(Ljava/lang/String;)V

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/c/a/a;->a(J)V

    .line 349
    invoke-virtual {v0, p1}, Lcom/anythink/core/c/a/a;->e(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 350
    invoke-virtual {v0, p0}, Lcom/anythink/core/c/a/a;->b(I)V

    return-object v0
.end method

.method static synthetic b(Lcom/anythink/core/c/b/c;)Lcom/anythink/core/c/b/d;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/anythink/core/c/b/c;->c:Lcom/anythink/core/c/b/d;

    return-object p0
.end method

.method private b(ILjava/lang/String;I)Lorg/json/JSONArray;
    .locals 0

    .line 285
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/core/c/b/c;->a(ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 286
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 289
    :cond_0
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 290
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/core/c/a/a;

    .line 291
    invoke-virtual {p3}, Lcom/anythink/core/c/a/a;->h()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/String;Lcom/anythink/core/c/a/b;)[D
    .locals 7

    const/4 v0, 0x2

    if-eqz p2, :cond_2

    .line 379
    invoke-virtual {p2}, Lcom/anythink/core/c/a/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/anythink/core/c/b/c;->d:Lcom/anythink/core/c/b/e;

    invoke-virtual {p2}, Lcom/anythink/core/c/a/b;->d()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/anythink/core/c/b/e;->a(ILjava/lang/String;)D

    move-result-wide v1

    .line 383
    invoke-virtual {p2}, Lcom/anythink/core/c/a/b;->g()D

    move-result-wide v3

    .line 384
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    cmpl-double v5, v3, v1

    if-eqz v5, :cond_1

    .line 389
    invoke-virtual {p2, v1, v2}, Lcom/anythink/core/c/a/b;->a(D)V

    .line 391
    iget-object v5, p0, Lcom/anythink/core/c/b/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p2

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    const-string v6, "anythink_uservalue"

    invoke-static {p2, v6, p1, v5}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-array p1, v0, [D

    const/4 p2, 0x0

    aput-wide v1, p1, p2

    const/4 p2, 0x1

    aput-wide v3, p1, p2

    return-object p1

    :cond_2
    :goto_0
    new-array p1, v0, [D

    .line 380
    fill-array-data p1, :array_0

    return-object p1

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    .line 174
    invoke-direct {p0, p1}, Lcom/anythink/core/c/b/c;->d(Ljava/lang/String;)Lcom/anythink/core/c/a/b;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/anythink/core/c/a/b;->c()Z

    move-result v0

    .line 176
    iget-object v1, p0, Lcom/anythink/core/c/b/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 178
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 182
    invoke-direct {p0, p1}, Lcom/anythink/core/c/b/c;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 186
    invoke-direct {p0, p1}, Lcom/anythink/core/c/b/c;->e(Ljava/lang/String;)V

    .line 189
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/anythink/core/c/b/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    return v0
.end method

.method private d(Ljava/lang/String;)Lcom/anythink/core/c/a/b;
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/anythink/core/c/b/c;->b:Lcom/anythink/core/d/f;

    invoke-virtual {v0, p1}, Lcom/anythink/core/d/f;->b(Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/anythink/core/c/b/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/c/a/b;

    if-nez v1, :cond_1

    .line 300
    new-instance v1, Lcom/anythink/core/c/a/b;

    invoke-direct {v1}, Lcom/anythink/core/c/a/b;-><init>()V

    .line 302
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_uservalue"

    const-string v4, ""

    invoke-static {v2, v3, p1, v4}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/c/a/b;->a(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 308
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 311
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/anythink/core/c/b/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    .line 314
    invoke-virtual {v0}, Lcom/anythink/core/d/e;->aM()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/anythink/core/c/a/b;->a(I)V

    .line 315
    invoke-virtual {v0}, Lcom/anythink/core/d/e;->aP()[[D

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/anythink/core/c/a/b;->a([[D)V

    .line 316
    invoke-virtual {v0}, Lcom/anythink/core/d/e;->aO()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/anythink/core/c/a/b;->b(I)V

    .line 317
    invoke-virtual {v0}, Lcom/anythink/core/d/e;->aR()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/anythink/core/c/a/b;->c(I)V

    :cond_2
    return-object v1
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .line 323
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/c/b/c$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/c/b/c$1;-><init>(Lcom/anythink/core/c/b/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 10

    .line 416
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/anythink/core/c/b/c;->b:Lcom/anythink/core/d/f;

    invoke-virtual {v1, p1}, Lcom/anythink/core/d/f;->e(Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object v3

    .line 421
    iget-object v2, p0, Lcom/anythink/core/c/b/c;->b:Lcom/anythink/core/d/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->p()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v6, p1

    invoke-virtual/range {v2 .. v9}, Lcom/anythink/core/d/f;->a(Lcom/anythink/core/d/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/d/f$c;Z)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/a/a;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/anythink/core/c/b/c;->c:Lcom/anythink/core/c/b/d;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/core/c/b/d;->a(ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/anythink/core/c/b/c;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 3

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 103
    :cond_0
    invoke-direct {p0, p1}, Lcom/anythink/core/c/b/c;->d(Ljava/lang/String;)Lcom/anythink/core/c/a/b;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/anythink/core/c/a/b;->b()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 108
    :cond_1
    invoke-virtual {v0}, Lcom/anythink/core/c/a/b;->a()I

    move-result v0

    .line 109
    invoke-virtual {p0, p1, p2, v0}, Lcom/anythink/core/c/b/c;->a(Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;II)Lorg/json/JSONObject;
    .locals 6

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 118
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "imp"

    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    .line 120
    :try_start_1
    invoke-direct {p0, v3, p1, p3}, Lcom/anythink/core/c/b/c;->b(ILjava/lang/String;I)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 122
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    const-string v4, "fill"

    const/16 v5, 0xa

    if-ne p2, v5, :cond_2

    .line 125
    :try_start_2
    invoke-direct {p0, v5, p1, p3}, Lcom/anythink/core/c/b/c;->b(ILjava/lang/String;I)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 127
    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 130
    :cond_2
    invoke-direct {p0, v5, p1, p3}, Lcom/anythink/core/c/b/c;->b(ILjava/lang/String;I)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 132
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    :cond_3
    invoke-direct {p0, v3, p1, p3}, Lcom/anythink/core/c/b/c;->b(ILjava/lang/String;I)Lorg/json/JSONArray;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 136
    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/anythink/core/c/b/c;->a(Ljava/lang/String;Lorg/json/JSONArray;)D

    move-result-wide v2

    const-string p1, "def_ecpm"

    .line 140
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-lez p1, :cond_6

    return-object v0

    :cond_6
    return-object v1

    :catch_0
    move-exception p1

    .line 145
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-object v1
.end method

.method public final a(Lcom/anythink/core/common/f/at;Lcom/anythink/core/common/f/au;)V
    .locals 5

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/at;->ac()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 79
    :cond_1
    invoke-direct {p0, v0}, Lcom/anythink/core/c/b/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 2355
    :cond_2
    new-instance v0, Lcom/anythink/core/c/a/a;

    invoke-direct {v0}, Lcom/anythink/core/c/a/a;-><init>()V

    if-eqz p1, :cond_3

    .line 2357
    invoke-virtual {p1}, Lcom/anythink/core/common/f/at;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/a/a;->a(Ljava/lang/String;)V

    .line 2358
    invoke-virtual {p1}, Lcom/anythink/core/common/f/at;->ac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/core/c/a/a;->e(Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_7

    .line 2362
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/core/c/a/a;->b(Ljava/lang/String;)V

    .line 2364
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3297
    iget-object p1, p1, Lcom/anythink/core/common/f/q;->u:Lcom/anythink/core/common/f/bb;

    if-eqz p1, :cond_4

    .line 2367
    invoke-virtual {p1}, Lcom/anythink/core/common/f/bb;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Lcom/anythink/core/c/a/a;->c(Ljava/lang/String;)V

    .line 2369
    :cond_5
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->aq()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_6

    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->aq()D

    move-result-wide v1

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->y()D

    move-result-wide v1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/c/a/a;->a(D)V

    .line 2370
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/anythink/core/c/a/a;->a(I)V

    .line 2372
    :cond_7
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/o;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/core/c/a/a;->d(Ljava/lang/String;)V

    .line 2373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/c/a/a;->a(J)V

    const/4 p1, 0x4

    .line 2374
    invoke-virtual {v0, p1}, Lcom/anythink/core/c/a/a;->b(I)V

    .line 82
    invoke-direct {p0, v0}, Lcom/anythink/core/c/b/c;->a(Lcom/anythink/core/c/a/a;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;)V
    .locals 3

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/anythink/core/c/b/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1333
    :cond_1
    new-instance v0, Lcom/anythink/core/c/a/a;

    invoke-direct {v0}, Lcom/anythink/core/c/a/a;-><init>()V

    if-eqz p3, :cond_4

    .line 1336
    invoke-virtual {p3}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/a/a;->b(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {p3}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2297
    iget-object v1, v1, Lcom/anythink/core/common/f/q;->u:Lcom/anythink/core/common/f/bb;

    if-eqz v1, :cond_2

    .line 1341
    invoke-virtual {v1}, Lcom/anythink/core/common/f/bb;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/anythink/core/c/a/a;->c(Ljava/lang/String;)V

    .line 1343
    :cond_3
    invoke-virtual {p3}, Lcom/anythink/core/common/f/au;->y()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/c/a/a;->a(D)V

    .line 1344
    invoke-virtual {p3}, Lcom/anythink/core/common/f/au;->d()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/anythink/core/c/a/a;->a(I)V

    .line 1346
    :cond_4
    invoke-virtual {v0, p2}, Lcom/anythink/core/c/a/a;->a(Ljava/lang/String;)V

    .line 1347
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/o;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/anythink/core/c/a/a;->d(Ljava/lang/String;)V

    .line 1348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/anythink/core/c/a/a;->a(J)V

    .line 1349
    invoke-virtual {v0, p1}, Lcom/anythink/core/c/a/a;->e(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 1350
    invoke-virtual {v0, p1}, Lcom/anythink/core/c/a/a;->b(I)V

    .line 67
    invoke-direct {p0, v0}, Lcom/anythink/core/c/b/c;->a(Lcom/anythink/core/c/a/a;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 152
    invoke-direct {p0, p1}, Lcom/anythink/core/c/b/c;->d(Ljava/lang/String;)Lcom/anythink/core/c/a/b;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/anythink/core/c/b/c;->b(Ljava/lang/String;Lcom/anythink/core/c/a/b;)[D

    return-void
.end method
