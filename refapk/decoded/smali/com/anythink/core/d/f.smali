.class public Lcom/anythink/core/d/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/d/f$b;,
        Lcom/anythink/core/d/f$a;,
        Lcom/anythink/core/d/f$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "f"

.field private static volatile b:Lcom/anythink/core/d/f;


# instance fields
.field private c:Landroid/content/Context;

.field private final d:Lcom/anythink/core/d/i;

.field private final e:Lcom/anythink/core/d/h;

.field private final f:Lcom/anythink/core/d/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/anythink/core/d/f;->c:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/anythink/core/d/h;

    invoke-direct {v0, p1}, Lcom/anythink/core/d/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/core/d/f;->e:Lcom/anythink/core/d/h;

    .line 58
    new-instance p1, Lcom/anythink/core/d/i;

    invoke-direct {p1}, Lcom/anythink/core/d/i;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/d/f;->d:Lcom/anythink/core/d/i;

    .line 59
    new-instance p1, Lcom/anythink/core/d/g;

    invoke-direct {p1, p0}, Lcom/anythink/core/d/g;-><init>(Lcom/anythink/core/d/f;)V

    iput-object p1, p0, Lcom/anythink/core/d/f;->f:Lcom/anythink/core/d/g;

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/d/f;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/anythink/core/d/f;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/d/f;
    .locals 2

    .line 63
    sget-object v0, Lcom/anythink/core/d/f;->b:Lcom/anythink/core/d/f;

    if-nez v0, :cond_1

    .line 64
    const-class v0, Lcom/anythink/core/d/f;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/anythink/core/d/f;->b:Lcom/anythink/core/d/f;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/anythink/core/d/f;

    invoke-direct {v1, p0}, Lcom/anythink/core/d/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/d/f;->b:Lcom/anythink/core/d/f;

    .line 68
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 70
    :cond_1
    :goto_0
    sget-object p0, Lcom/anythink/core/d/f;->b:Lcom/anythink/core/d/f;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/anythink/core/d/e;)V
    .locals 2

    .line 3086
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->p()I

    move-result p1

    .line 3087
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/b/o;->c(I)V

    const-string v0, "anythink_sdk"

    const-string v1, "r"

    .line 3089
    invoke-static {p0, v0, v1, p1}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 253
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "p_c"

    if-eqz p2, :cond_1

    .line 259
    :try_start_0
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 262
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2102
    invoke-virtual {p0, p3}, Lcom/anythink/core/d/f;->a(Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 265
    invoke-virtual {p2}, Lcom/anythink/core/d/e;->aH()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 267
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/anythink/core/d/f;)Lcom/anythink/core/d/g;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/anythink/core/d/f;->f:Lcom/anythink/core/d/g;

    return-object p0
.end method

.method private static b(Landroid/content/Context;Lcom/anythink/core/d/e;)V
    .locals 2

    .line 86
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->p()I

    move-result p1

    .line 87
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/b/o;->c(I)V

    const-string v0, "anythink_sdk"

    const-string v1, "r"

    .line 89
    invoke-static {p0, v0, v1, p1}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/anythink/core/d/e;
    .locals 2

    .line 97
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/anythink/core/d/f;->e:Lcom/anythink/core/d/h;

    invoke-virtual {v1, v0, p1}, Lcom/anythink/core/d/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/anythink/core/d/f;->c:Landroid/content/Context;

    const-string v1, "anythink_placement_strategy_update_check"

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 1025
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1026
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/core/d/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/d/f$c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/e;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/d/f$c;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 248
    invoke-virtual/range {v0 .. v7}, Lcom/anythink/core/d/f;->a(Lcom/anythink/core/d/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/d/f$c;Z)V

    return-void
.end method

.method public final a(Lcom/anythink/core/d/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/d/f$c;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/e;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/d/f$c;",
            "Z)V"
        }
    .end annotation

    .line 160
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v10, Lcom/anythink/core/d/f$1;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p4

    move-object/from16 v4, p6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p5

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/anythink/core/d/f$1;-><init>(Lcom/anythink/core/d/f;Ljava/lang/String;Lcom/anythink/core/d/f$c;Lcom/anythink/core/d/e;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v10, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/anythink/core/common/f/al;Lcom/anythink/core/d/f$c;[ZLcom/anythink/core/d/e;)V
    .locals 6

    .line 284
    instance-of v0, p1, Lorg/json/JSONObject;

    const-string v1, ""

    const-string v2, "3001"

    if-eqz v0, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 294
    :cond_0
    check-cast p1, Lorg/json/JSONObject;

    :try_start_0
    const-string p5, "updateTime"

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, p5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 297
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->c()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/anythink/core/d/f;->e(Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object p5

    if-eqz p5, :cond_1

    .line 300
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, p1, v0}, Lcom/anythink/core/d/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p5

    .line 303
    sget-object v0, Lcom/anythink/core/d/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parse place strategy error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/anythink/core/d/e;->a(Lorg/json/JSONObject;)Lcom/anythink/core/d/e;

    move-result-object p5

    .line 306
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz p5, :cond_4

    .line 309
    invoke-virtual {p5}, Lcom/anythink/core/d/e;->ai()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, v0, p5, p1, v3}, Lcom/anythink/core/d/f;->a(Ljava/lang/String;Lcom/anythink/core/d/e;Lorg/json/JSONObject;I)V

    .line 310
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p1

    new-instance v4, Lcom/anythink/core/d/f$2;

    invoke-direct {v4, p0, p5, v0}, Lcom/anythink/core/d/f$2;-><init>(Lcom/anythink/core/d/f;Lcom/anythink/core/d/e;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    .line 322
    invoke-virtual {p5}, Lcom/anythink/core/d/e;->aK()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p5}, Lcom/anythink/core/d/e;->aL()Z

    move-result p1

    if-nez p1, :cond_3

    .line 323
    invoke-virtual {p5}, Lcom/anythink/core/d/e;->aJ()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/anythink/core/common/f/al;->a(I)V

    .line 324
    iget-object p1, p0, Lcom/anythink/core/d/f;->f:Lcom/anythink/core/d/g;

    iget-object v0, p0, Lcom/anythink/core/d/f;->c:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/anythink/core/d/g;->a(Landroid/content/Context;Lcom/anythink/core/common/f/al;)V

    goto :goto_2

    .line 327
    :cond_3
    iget-object p1, p0, Lcom/anythink/core/d/f;->e:Lcom/anythink/core/d/h;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->a()Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x2

    invoke-virtual {p1, p2, v0, v4}, Lcom/anythink/core/d/h;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    :goto_2
    if-eqz p4, :cond_6

    .line 332
    array-length p1, p4

    if-lez p1, :cond_6

    .line 333
    aget-boolean p1, p4, v3

    if-eqz p1, :cond_6

    if-eqz p3, :cond_5

    if-eqz p5, :cond_5

    .line 335
    invoke-interface {p3, p5}, Lcom/anythink/core/d/f$c;->b(Lcom/anythink/core/d/e;)V

    :cond_5
    return-void

    :cond_6
    if-eqz p3, :cond_8

    if-eqz p5, :cond_7

    .line 342
    invoke-interface {p3, p5}, Lcom/anythink/core/d/f$c;->a(Lcom/anythink/core/d/e;)V

    return-void

    :cond_7
    const-string p1, "Placement Service error."

    .line 344
    invoke-static {v2, v1, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/anythink/core/d/f$c;->a(Lcom/anythink/core/api/AdError;)V

    :cond_8
    return-void

    :cond_9
    :goto_3
    if-eqz p3, :cond_b

    if-nez p5, :cond_a

    const-string p1, "Placement LoadParams error."

    .line 287
    invoke-static {v2, v1, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/anythink/core/d/f$c;->a(Lcom/anythink/core/api/AdError;)V

    return-void

    .line 289
    :cond_a
    invoke-interface {p3, p5}, Lcom/anythink/core/d/f$c;->a(Lcom/anythink/core/d/e;)V

    :cond_b
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/anythink/core/d/f;->e:Lcom/anythink/core/d/h;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/d/e;Lorg/json/JSONObject;I)V
    .locals 7

    .line 80
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v2

    .line 81
    iget-object v1, p0, Lcom/anythink/core/d/f;->e:Lcom/anythink/core/d/h;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/e;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/anythink/core/d/e;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/anythink/core/d/f;->a(Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Lcom/anythink/core/d/e;
    .locals 2

    .line 106
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/anythink/core/d/f;->e:Lcom/anythink/core/d/h;

    invoke-virtual {v1, v0, p1}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Lcom/anythink/core/d/e;
    .locals 3

    .line 111
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/anythink/core/d/f;->e:Lcom/anythink/core/d/h;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, p1, v2}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/anythink/core/d/e;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;)Lcom/anythink/core/d/e;
    .locals 3

    .line 116
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/anythink/core/d/f;->e:Lcom/anythink/core/d/h;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/anythink/core/d/e;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/String;)Lcom/anythink/core/d/e;
    .locals 4

    .line 121
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/anythink/core/d/f;->e:Lcom/anythink/core/d/h;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1176
    invoke-virtual {v1, v2, p1, v3}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/anythink/core/d/e;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    const/4 v1, 0x0

    if-eqz v3, :cond_1

    .line 125
    iget-object v3, p0, Lcom/anythink/core/d/f;->e:Lcom/anythink/core/d/h;

    invoke-virtual {v3, v0, p1, v2}, Lcom/anythink/core/d/h;->b(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1

    .line 128
    :cond_1
    iget-object v3, p0, Lcom/anythink/core/d/f;->e:Lcom/anythink/core/d/h;

    invoke-virtual {v3, v0, p1, v2}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/anythink/core/d/e;

    move-result-object v0

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/anythink/core/d/f;->d:Lcom/anythink/core/d/i;

    invoke-virtual {v0, p1}, Lcom/anythink/core/d/i;->b(Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/anythink/core/d/f;->a(Ljava/lang/String;Lcom/anythink/core/d/e;Lorg/json/JSONObject;I)V

    :cond_3
    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    .line 139
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/anythink/core/d/f;->e:Lcom/anythink/core/d/h;

    invoke-virtual {v1, v0, p1}, Lcom/anythink/core/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/anythink/core/d/f;->d:Lcom/anythink/core/d/i;

    invoke-virtual {v0, p1}, Lcom/anythink/core/d/i;->a(Ljava/lang/String;)V

    return-void
.end method
